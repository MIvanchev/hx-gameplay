package ;

import MethodInfo;
import neko.io.File;
import neko.io.Process;

using StringTools;

/**
 *
 */
class ClassInfo
{
    public var type(default, null):String;
	public var name(default, null):String;
    public var path(default, null):String;
	public var namespace(default, null):String;
	public var parents(default, null):Iterable<String>;
	public var scope(default, null):Iterable<String>;
	public var accessModifier(default, null):AccessModifier;
	public var declaration(default, null):String;
	public var methods(default, null):Iterable<MethodInfo>;

	public function new(fields:Array<String>)
	{
        type = "class";
		name = fields[0];
		path = fields[1];
		namespace = "gameplay";
		declaration = fields[2];

		parents = new List();
		
		var parentRegex = ~/[^:]:([^:].*)/;
		if (parentRegex.match(declaration))
		{
			parents = parentRegex.matched(1).trim().split(",");
			for (parent in parents)
				parent.trim();
		}

		var accessField = fields.pop();
		var accessRegex = ~/access:(public|private|protected)/;
		if (accessRegex.match(accessField))
		{
			accessModifier =
				switch (accessRegex.matched(1))
				{
				case "public": AccessModifier.amPublic;
				case "protected": AccessModifier.amProtected;
				case "private": AccessModifier.amPrivate;
				};

			var scopeRegex =
				if (namespace != null)
					new EReg(Std.format("(class|struct):$namespace::(.*)"), "");
				else
					~/(class|struct)::(.*)/;

			scopeRegex.match(fields.pop());
			scope = scopeRegex.matched(2).split("::");
		}
		else
		{
            var scopeRegex =
                if (namespace != null)
                    new EReg(Std.format("(class|struct):$namespace::(.*)"), "");
                else
                    ~/(class|struct):(.*)/;
            if (scopeRegex.match(accessField))
                scope = scopeRegex.matched(2).split("::");

			accessModifier = amPublic;
		}
	}

	public function collectMethodInfo(ctagsPath)
	{
		var proc =
			new Process(
					Utilities.getCtagsExecutable(),
					[
						"--c++-kinds=p",
						"--fields=+STa",
						"--fields=+signature",
						path
					]
				);
		proc.exitCode();
		
		var output = File.getContent("tags");
		var lines = output.split("\n");
		var methods = new List<MethodInfo>();

		for (line in lines)
		{
			line = StringTools.trim(line);
		
			// Exclude empty lines, comments, overloaded operators, destructors,
            // global and non-public methods.
			//

			if (line.length == 0
				|| line.charAt(0) == "!"
				|| StringTools.startsWith(line, "operator "))
			{
				continue;
			}
	
			var fields = Utilities.getCtagsFields(line);
			if (StringTools.startsWith(fields[fields.length - 2], "access:"))
			{
				var methodInfo = new MethodInfo(Utilities.getCtagsFields(line));
				if (methodInfo.scopeString == Utilities.getScopeString(this)
                    && methodInfo.accessModifier == AccessModifier.amPublic
                    && methodInfo.type != MethodType.mtDestructor)
				{
					methods.add(methodInfo);
				}
			}
		}

		this.methods = methods;
	}
}
