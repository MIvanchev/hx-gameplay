package ;

using StringTools;

enum MethodType
{
	mtConstructor;
	mtDestructor;
	mtStatic;
	mtMember;
}

/**
 *
 */
class MethodInfo
{
	public var name(default, null):String;
	public var type(default, null):MethodType;
	public var signature(default, null):String;
	public var parameters(default, null):Iterable<ParamInfo>;
	public var returnString(default, null):String;
	public var scopeString(default, null):String;
	public var accessModifier(default, null):AccessModifier;
	public var declaration(default, null):String;

	public function new(fields)
	{
		name = fields[0];
		declaration = fields[2];

		// Read the signature and the access modifier.
		//

		var signatureRegex = ~/signature:\((.*)\)/;
		signatureRegex.match(fields.pop());
		signature = signatureRegex.matched(1).trim();

		var accessRegex = ~/access:(public|private|protected|friend)/;
		accessRegex.match(fields.pop());
		accessModifier =
			switch (accessRegex.matched(1))
			{
			case "public": AccessModifier.amPublic;
			case "protected": AccessModifier.amProtected;
			case "private": AccessModifier.amPrivate;
			case "friend": AccessModifier.amFriend;
			};
	
		scopeString = fields.pop();

		// Extract modifiers.
		//

		if (name.charAt(0) == "~")
			type = mtDestructor;
		else if (StringTools.endsWith(scopeString, Std.format("::$name")))
			type = mtConstructor;
		else
		{
			var nameRegex = new EReg(name, "");
			nameRegex.match(declaration);
			var modifiersString = nameRegex.matchedLeft();

			modifiersString = modifiersString.replace("virtual", "");
			modifiersString = modifiersString.replace("inline", "");
			modifiersString = modifiersString.replace("friend", "");

			if (modifiersString.indexOf("static") != -1)
			{
				modifiersString = modifiersString.replace("static", "");
				type = mtStatic;
			}
			else
			{
				type = mtMember;
			}
	
	        returnString = modifiersString.trim();
            var templateRegex = ~/template<[^>]*>/;
            if (templateRegex.match(returnString))
                returnString = templateRegex.matchedRight();
		}

		// Extract params.
		//

		var params = new List();

		if (signature.length > 0)
		{
			var paramStrings = signature.split(",");
			var paramIndex = 1;

			for (paramString in paramStrings)
			{
				var defaultValueIndex = paramString.indexOf("=");
				if (defaultValueIndex != -1)
					paramString = paramString.substring(0, defaultValueIndex - 1);

				paramString = paramString.trim();

                var info = new ParamInfo(paramString);
                if (info.name.length == 0)
                {
                    info.name = Std.format("param$paramIndex");
                    paramIndex++;
                }

                params.add(info);
			}
		}
		
		parameters = params;
	}
}
