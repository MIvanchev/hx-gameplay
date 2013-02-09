package org.gameplay3d.intern;

import org.gameplay3d.util.NativeInterface;


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
    public var value(get_value, null):Dynamic;

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

    static var createOutParameter:Dynamic = NativeInterface.load("createOutParameter", 0);
    static var setOutParameterValue:Dynamic = NativeInterface.load("setOutParameterValue", 2);
    static var getOutParameterValue:Dynamic = NativeInterface.load("getOutParameterValue", 1);
}
