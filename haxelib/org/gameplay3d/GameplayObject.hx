package org.gameplay3d;

import dk.bluewolf.gameplay.NativeBinding;

/**
 * Encapsulates the root of gameplay's class hierarchy and provides the main
 * infrastructural mechanisms for the framework's binding.
 */
class GameplayObject extends NativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

     /**
      * Constructs an instance of this class by using the specified method to
      * construct the native object.
      *
      * If the native object is provided directly, the value of the parameter
      * nativeObjectInitializationParams must be null. If complex initialization
      * is required, the value of nativeObjectInitializer is a static function
      * which, when executed, returns the native object. The parameters are
      * passed as an array the 1st element of which must be null. This 1st
      * element will be replaced by the instance of the newly constructed Haxe
      * class before the initializer is called.
      * <p>When extending classes originating from this class, always keep the
      * constructor private and provide factory methods. This is necessary
      * because many of the framework's classes provide more than 1
      * constructor.</p>
      */
    function new(
            nativeObjectInitializer:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        if (nativeObjectInitializerParams == null)
            nativeObject = nativeObjectInitializer;
        else
        {
            nativeObjectInitializerParams[0] = this;
            nativeObject = Reflect.callMethod(
                                        null,
                                        nativeObjectInitializer,
                                        nativeObjectInitializerParams
                                    );
            nativeObjectInitializerParams[0] = null;
        }
    }

    /**
     * TODO
     */
    @:generic
    @:access(dk.bluewolf.gameplay)
    @:access(org.gameplay3d)
    @:access(org.gameplat3d.impl)
    @:access(org.gameplay3d.util)
    /** @private */ public static inline function wrap<T : GameplayObject>(classObj:Class<T>, nativeObject:Dynamic):T
    {
        return
            if (nativeObject == null)
                null;
            else
                Type.createInstance (classObj, [ nativeObject, null ]);
    }

    @:generic
    public function castTo<T : GameplayObject>(classObj:Class<T>):T
    {
        var instance:T = null;
        if (!Std.is(instance, Type.getClass(this)))
            throw "Invalid native conversion attempted.";

        return Type.createInstance (classObj, [ nativeObject, null ]);
    }
}

// END
