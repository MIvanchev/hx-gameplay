package ;

using StringTools;

/**
 *
 */
class ParamInfo
{
    public var name(default, default):String;
    public var type(default, default):String;
    public var modifiers(default, default):Iterable<String>;
    public var isPrimitive(default, default):Bool;
    public var isPointer(default, default):Bool;
    public var isReference(default, default):Bool;

    public function new(paramString:String)
    {
        var nameRegex = ~/([^*& \t]*)$/;
        nameRegex.match(paramString);
        name = nameRegex.matched(1);

        var modifiers = new List();

        type = nameRegex.matchedLeft().trim();
        if (type.startsWith("const"))
        {
            type = type.substr("const".length);
            modifiers.push("const");
        }
        if (type.endsWith("*"))
        {
            type = type.substr(0, type.length - 1).trim();
            isPointer = true;
        }
        if (type.endsWith("&"))
        {
            type = type.substr(0, type.length - 1).trim();
            isReference = true;
        }

        this.modifiers = modifiers;

        isPrimitive =
            switch (type)
            {
            case "char", "signed char", "unsigned char": true;
            case "int", "signed int", "unsigned int": true;
            case "short", "signed short", "unsigned short": true;
            case "long", "signed long", "unsigned long": true;
            case "float": true;
            case "double": true;
            case "bool": true;
            default: false;
            }
    }

}
