package org.gameplay3d.util;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.NativeBinding;

/**
 * TODO
 */
class FunctionBinder<T> extends NativeBinding
{
    /**
     * TODO
     */
    public var type(default, null):String;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var func:Void->T;

    public function new(func:Void->T, type:String, native = true)
    {
        nativeObject = createFunctionBinder(
                if (native)
                    func
                else
                {
                    function()
                    {
                         return cast(func()).nativeObject;
                    }
                }
            );
        this.type = type;
        this.func = func;
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var createFunctionBinder = NativeInterface.load("createFunctionBinder", 1);
}
