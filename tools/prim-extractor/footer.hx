
    /**
     * TODO
     */
    static var instance:NativeInterface = null;

    function new()
    {
        trace("DEBUG: Loading native functions...");

        var length = nativeFunctions.length;
        var prev = 0;

        while (prev < length - 1)
        {
            var next = nativeFunctions.indexOf("$", prev + 1);
            var funcName = nativeFunctions.substring(prev, next);
            prev = next + 1;
            next = nativeFunctions.indexOf("$", prev + 1);
            var funcArity = Std.parseInt(nativeFunctions.substring(prev, next));
            prev = next + 1;

            var nativeFunction = cpp.Lib.load("gameplay", funcName, funcArity);
            Reflect.setField(this, funcName, nativeFunction);
        }

        // Release the memory.
        //

        nativeFunctions = null;
    }

    public static function getInstance()
    {
        if (instance == null)
            instance = new NativeInterface();

        return instance;
    }
}
