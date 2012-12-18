package ;

import haxe.io.Output;
import neko.FileSystem;
import neko.io.File;
import neko.io.Process;
import neko.Lib;

import MethodInfo;

/**
 *
 */
class Main
{
	static var dirGameplay:String = "";
	static var dirGameplaySrc:String = "";
	static var dirCppSrc:String = "../../../stubs/project/src";
	static var dirHaxeSrc:String = "../../../stubs/haxe/org/gameplay3d";

	static function main()
	{
		dirGameplay =
			if (Sys.args().length > 0)
				Sys.args()[0];
			else
				"../../../../gameplay/gameplay/";

		if (dirGameplay.charAt(dirGameplay.length - 1) == "/")
			dirGameplay = dirGameplay.substr(0, dirGameplay.length - 1);

		dirGameplaySrc = dirGameplay + "/src";

		// Process Gameplay's header files.
		//

		processFiles();
	}

	static function processFiles()
	{
		// Extract the names of the public classes.
		//

		var proc = new Process(
					Utilities.getCtagsExecutable(),
					[
						"--fields=+a",
						"--c++-kinds=c",
						Std.format("${dirGameplaySrc}/*.h")
					]
				);
		proc.exitCode();

		// Process the classes by extracting the methods and creating the C++
		// and Haxe stubs.
		//

		var output = File.getContent("tags");
		var lines = output.split("\n");

		for (line in lines)
		{
			// Ignore empty lines or comments.
			//

			line = StringTools.trim(line);
			if (line.length == 0 || line.charAt(0) == "!")
				continue;

			// Read the class info. If the class is public, extract it's
			// methods and create stubs.
			//

			var classInfo = new ClassInfo(Utilities.getCtagsFields(line));
			if (classInfo.accessModifier == AccessModifier.amPublic)
			{
				classInfo.collectMethodInfo("ctags\\ctags.exe");
	
				createCppStub(classInfo);
				createHaxeStub(classInfo);
			}
		}
	}

	static function createCppStub(classInfo:ClassInfo)
	{
        // Open the C++ stub file for writing.
		//

		var prefix = Utilities.getNativePrefix(classInfo);
		var fileName = Std.format("${dirCppSrc}/${prefix}.cpp");
		//if (FileSystem.exists(fileName))
			//return;

		//var stream:Output = Sys.stdout();
		var stream = File.write(fileName, false);
		stream.writeString("#include \"HaxeAPI.h\"\n");
		stream.writeString("\n");

		for (method in classInfo.methods)
		{
			stream.writeString(Std.format("// DECL: ${method.declaration}\n"));
			stream.writeString(if (method.returnString == "void") "void" else "value");

			var name = Utilities.getNativeFunctionName(classInfo, method);
			stream.writeString(Std.format(" ${name}"));
            stream.writeString("(");

            // Write the parameters, if there are too many parameters go for
            // long parameter list.
            //

			var params = Lambda.array(method.parameters);
            var maxCount =
                if (method.type == mtMember)
                    4;
                else
                    5;

            if (params.length > maxCount)
            {
                stream.writeString("value *args, int nargs");
            }
            else
            {
                if (method.type == mtMember)
                {
                    stream.writeString("value thisObj");
                    if (params.length > 0)
                        stream.writeString(", ");
                }

                for (index in 0...params.length)
                {
                    var param = params[index];
                    stream.writeString(Std.format("value ${param.name}"));
                    if (index < params.length - 1)
                        stream.writeString(", ");
                }
            }

			stream.writeString(")\n");
			stream.writeString("{\n");
			
            writeCppBody(stream, classInfo, method);

			stream.writeString("}\n");

            var numParams =
                if (method.type == mtMember)
                    params.length + 1;
                else
                    params.length;

			stream.writeString(
                    if (numParams > 5)
                        Std.format("DEFINE_PRIM_MULT($name);\n")
                    else
                        Std.format("DEFINE_PRIM($name, ${numParams});\n")
                );
			stream.writeString("\n");
		}

		stream.writeString("// END\n");
		stream.writeString("//\n");

		stream.close();

		trace(Std.format("INFO: C++ source file\"${fileName}\" written."));
	}

    static function writeCppBody(stream:Output, classInfo:ClassInfo, methodInfo:MethodInfo)
    {
        var params = Lambda.list(methodInfo.parameters);

        if (methodInfo.type == mtMember)
        {
            var name = Utilities.getQualifiedName(classInfo);
            params.push(new ParamInfo(Std.format("$name *thisObj")));
        }

        // If we have more than 5 parameters, an array is used to host the parameters.
        //

        if (params.length > 5)
        {
            for (param in params)
            {
                stream.writeString("    ");
                stream.writeString(Std.format("const value& ${param.name} = "));
                stream.writeString(
                        if (param == params.last())
                            "*args;"
                        else
                            "*args++;"
                    );
                stream.writeString("\n");
            }
            stream.writeString("\n");
        }

        // Process parameters, convert primitive types immediately.
        //

        var nonPrimitive = new List();

        while (params.length > 0)
        {
            var param = params.pop();
            if (param.isPrimitive)
            {
                stream.writeString("    ");
                for (modifier in param.modifiers)
                {
                    stream.writeString(Std.format("$modifier"));
                    stream.writeString(" ");
                }
                stream.writeString(Std.format("${param.type}"));
                stream.writeString(" ");
                if (param.isPointer)
                    stream.writeString("*");
                stream.writeString(Std.format("_${param.name} = "));

                var conversion =
                    switch (param.type)
                    {
                    case "char", "signed char", "unsigned char": if (param.isPointer) "ValueToString" else "val_get_int";
                    case "short", "signed short", "unsigned short": "val_get_int";
                    case "int", "signed int": "val_get_int";
                    case "unsigned int": "ValueToUint";
                    case "long", "signed long": "ValueToLong";
                    case "unsigned long": "ValueToUlong";
                    case "float": "ValueToFloat";
                    case "double": "ValueToDouble";
                    case "bool": "val_get_bool";
                    default: "unknown_conversion";
                    }

                stream.writeString(conversion);
                stream.writeString(Std.format("(${param.name});\n"));
            }
            else
            {
                nonPrimitive.add(param);

                // Collect all other parameters of this type.
                //

                var group = new List();
                for (other in params)
                {
                    if (other.type == param.type)
                    {
                        nonPrimitive.add(other);
                        group.add(other);
                        params.remove(other);
                    }
                }

                // Write the parameter group.
                //

                stream.writeString("    ");
                stream.writeString(param.type);
                stream.writeString(" *");
                stream.writeString(Std.format("_${param.name}"));

                for (other in group)
                {
                    stream.writeString(", *");
                    stream.writeString(Std.format("_${other.name}"));
                }

                stream.writeString(";\n");
            }
        }

        // Non-primitive conversions.
        //

        for (param in nonPrimitive)
        {
            stream.writeString("    ValueToObject(");
            stream.writeString(param.name);
            stream.writeString(", _");
            stream.writeString(param.name);
            stream.writeString(");\n");
        }

        // Function call.
        //

        if (methodInfo.returnString != "void")
            stream.writeString("    return ");
        else
            stream.writeString("    ");

        if (methodInfo.type == mtStatic)
        {
            stream.writeString(Utilities.getQualifiedName(classInfo));
            stream.writeString("::");
        }
        else
        {
            stream.writeString("_thisObj->");
        }

        stream.writeString(methodInfo.name);
        stream.writeString("(");

        params = Lambda.list(methodInfo.parameters);
        for (param in params)
        {
            stream.writeString(Std.format("_${param.name}"));
            if (param != params.last())
                stream.writeString(", ");
        }
        stream.writeString(");\n");
    }

	static function createHaxeStub(classInfo:ClassInfo)
	{
		var className = Utilities.getQualifiedName(classInfo, "_");

		// Write the stub file if it doesn't exist already.
		//

		var fileName = Std.format("${dirHaxeSrc}/${className}.hx");
		//if (FileSystem.exists(fileName))
			//return;

		//var stream:Output = Sys.stdout();
		var stream = File.write(Std.format("$dirHaxeSrc/$className.hx"), false);
		stream.writeString("package org.gameplay3d;\n");
        stream.writeString("\n");
        stream.writeString("using dk.bluewolf.gameplay.NativeBinding;\n");
        stream.writeString("using org.gameplay3d.GameplayObject;\n");
        stream.writeString("\n");
		stream.writeString(Std.format("// DECL: ${classInfo.declaration}\n"));
		stream.writeString(Std.format("class $className"));

		if (Lambda.count(classInfo.parents) > 0)
		{
			var parent = StringTools.replace(Lambda.array(classInfo.parents)[0], "public", "");
			parent = StringTools.replace(parent, "protected", "");
			parent = StringTools.replace(parent, "private", "");
			parent = StringTools.replace(parent, "::", "_");
            parent = StringTools.trim(parent);

			stream.writeString(Std.format(" extends $parent"));
		}
		else if (className != "GameplayObject")
		{
			stream.writeString(" extends GameplayObject");
		}

		stream.writeString("\n");
		stream.writeString("{\n");
		stream.writeString("    /***************************************************************************\n");
		stream.writeString("     * MEMBERS                                                                 *\n");
		stream.writeString("     **************************************************************************/\n");
		stream.writeString("\n");
		stream.writeString("    function new(\n");
        stream.writeString("            nativeObjectConstructor:Dynamic,\n");
        stream.writeString("            nativeObjectConstructorParams:Dynamic\n");
        stream.writeString("        )\n");
		stream.writeString("    {\n");
        if (className != "GameplayObject")
        {
            stream.writeString("        ");
            stream.writeString("super(nativeObject);\n");
        }
        //stream.writeString("        // TODO\n");
        //stream.writeString("        //\n");
		stream.writeString("    }\n");
		stream.writeString("\n");

        // Write the methods
        //

        for (method in classInfo.methods)
        {
            stream.writeString(Std.format("    // DECL: ${method.declaration}\n"));
            stream.writeString("    ");
            if (method.accessModifier == AccessModifier.amPublic)
                stream.writeString("public ");
            if (method.type == mtStatic || method.type == mtConstructor)
                stream.writeString("static ");
            stream.writeString("function ");
            stream.writeString(
                    if (method.type == mtConstructor)
                        "make";
                    else
                        method.name
                );
            stream.writeString("(");

            var params = Lambda.array(method.parameters);
            for (index in 0...params.length)
            {
                var param = params[index];
                var type = ConvertNativeToHaxeType(param);

                stream.writeString(Std.format("${param.name}:$type"));
                if (index < params.length - 1)
                    stream.writeString(", ");
            }

            stream.writeString("):");
            stream.writeString(
                    if (method.type == mtConstructor)
                        classInfo.name
                    else if (method.returnString == "void")
                        "Void"
                    else
                        ConvertNativeToHaxeType(new ParamInfo(Std.format("${method.returnString} _r")))
                );
            stream.writeString("\n");
            stream.writeString("    {\n");

            writeHaxeBody(stream, classInfo, method);

            stream.writeString("    }\n");
            stream.writeString("\n");
        }

        // Provide a native object constructor for every constructor.
        //

        var headerWritten = false;

        for (method in classInfo.methods)
        {
            if (method.type != mtConstructor)
                continue;

            if (!headerWritten)
            {
                stream.writeString("    /***************************************************************************\n");
                stream.writeString("     * NATIVE OBJECT CONSTRUCTORS                                              *\n");
                stream.writeString("     **************************************************************************/\n");
                stream.writeString("\n");
                headerWritten = true;
            }

            stream.writeString(Std.format("    // DECL: ${method.declaration}\n"));
            stream.writeString("    static function constructNativeObject(");

            var params = Lambda.array(method.parameters);
            for (index in 0...params.length)
            {
                var param = params[index];
                var type = ConvertNativeToHaxeType(param);
                stream.writeString(Std.format("${param.name}:${type}"));
                if (index < params.length - 1)
                    stream.writeString(", ");
            }

            stream.writeString("):Dynamic\n");
            stream.writeString("    {\n");
            //stream.writeString("        // TODO\n");
            //stream.writeString("        //\n");
            //stream.writeString("\n");
            stream.writeString("        return ");
			//stream.writeString("        return nativeInterface.");
            //stream.writeString("        return NativeInterface.");

            var name = Utilities.getNativeFunctionName(classInfo, method);
            stream.writeString(name);
            stream.writeString("(");

            for (param in params)
            {
                stream.writeString(param.name);
                if (!param.isPrimitive)
                    stream.writeString(".nativeObject");
                if (param != params[params.length - 1])
                    stream.writeString(", ");
            }

            stream.writeString(");\n");
            stream.writeString("    }\n");
            stream.writeString("\n");
        }

        stream.writeString("    /***************************************************************************\n");
        stream.writeString("     * NATIVE INTERFACE                                                        *\n");
        stream.writeString("     **************************************************************************/\n");

		stream.writeString("}\n");
		stream.writeString("\n");
		stream.writeString("// END\n");

		stream.close();

        trace(Std.format("INFO: Haxe source file\"${fileName}\" written."));
	}

    static function writeHaxeBody(stream:Output, classInfo:ClassInfo, methodInfo:MethodInfo)
    {
        stream.writeString("        ");
        if (methodInfo.type == mtConstructor
            || methodInfo.returnString != "void")
        {
            stream.writeString("return ");
        }

        if (methodInfo.type != mtConstructor)
        {
            var name = Utilities.getNativeFunctionName(classInfo, methodInfo);
            stream.writeString(Std.format("$name"));
			//stream.writeString(Std.format("nativeInterface.$name"));
            //stream.writeString(Std.format("NativeInterface.$name"));
            if (Lambda.count(methodInfo.parameters) == 0)
            {
                stream.writeString(
                        if (methodInfo.type != mtMember)
                            "();"
                        else
                            "(nativeObject);"
                    );
            }
            else
            {
                stream.writeString("(");

                if (methodInfo.type == mtMember)
                    stream.writeString("nativeObject, ");

                var params = Lambda.list(methodInfo.parameters);
                for (param in params)
                {
                    stream.writeString(param.name);
                    if (!param.isPrimitive)
                    {
                        //stream.writeString(".nativeObject");
                        stream.writeString(".native()");
                    }
                    if (param != params.last())
                        stream.writeString(", ");
                }

                stream.writeString(");");
            }
        }
        else
        {
            var name = Utilities.getQualifiedName(classInfo, "_");
            stream.writeString(Std.format("new $name("));
            stream.writeString("constructNativeObject(");
            var params = Lambda.list(methodInfo.parameters);
            for (param in params)
            {
                stream.writeString(param.name);
                if (param != params.last())
                    stream.writeString(", ");
            }
            stream.writeString("));");
        }

        stream.writeString("\n");
    }

    static function ConvertNativeToHaxeType(param:ParamInfo):String
    {
        return
            if (param.isPrimitive)
            {
                switch (param.type)
                {
                case "char", "signed char", "unsigned char": if (param.isPointer) "String" else "Int";
                case "short", "signed short", "unsigned short": "Int";
                case "int", "signed int": "Int";
                case "unsigned int": "Int";
                case "long", "signed long", "unsigned long": "Int";
                case "float": "Float";
                case "double": "Float";
                case "bool": "Bool";
                default: "Dynamic";
                }
            }
            else
            {
                param.type;
            }
    }
}
