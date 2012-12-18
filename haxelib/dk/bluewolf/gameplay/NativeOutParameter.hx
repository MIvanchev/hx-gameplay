package dk.bluewolf.gameplay;

/**
 * TODO
 */
class NativeOutParameter extends NativeBinding
{

    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    /**
     * TODO
     */
    public var value(get, never):Dynamic;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    public function new()
    {
        nativeObject = createOutParameter();
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_value()
    {
        return getOutParameterValue(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var createOutParameter:Dynamic = cpp.Lib.load("gameplay", "createOutParameter", 0);
    static var setOutParameterValue:Dynamic = cpp.Lib.load("gameplay", "setOutParameterValue", 2);
    static var getOutParameterValue:Dynamic = cpp.Lib.load("gameplay", "getOutParameterValue", 1);
}
