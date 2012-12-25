package org.gameplay3d;

import org.gameplay3d.intern.NativeBinding;

/**
 * Encapsulates the root of gameplay's class hierarchy and provides the main
 * infrastructural mechanisms for the framework's binding.
 */
class GameplayObject extends NativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

	static var args:Array<Dynamic> = [ null, null ];

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
    @:allow(org.gameplay3d)
    @:allow(org.gameplat3d.impl)
    @:allow(org.gameplay3d.intern)
    @:allow(org.gameplay3d.util)
    static inline function wrap<T : GameplayObject>(classObj:Class<T>, nativeObject:Dynamic):T
    {
        args[0] = nativeObject;

        return
            if (nativeObject == null)
                null;
            else
                Type.createInstance(classObj, args); // new T(nativeObject, null);
    }

    @:generic
    public function castTo<T : GameplayObject>(classObj:Class<T>):T
    {
        // FIXME:
        //var instance:T;
        //if (!Std.is(instance, Type.getClass(this)))
        //{
            //var nameSrc = Type.getClassName(Type.getClass(instance));
            //var nameDst = Type.getClassName(classObj);
            //throw 'Invalid native conversion from "$nameSrc" to "$nameDst" attempted."';
        //}

       var nameSrc = Type.getClassName(Type.getClass(this));
       var nameDst = Type.getClassName(classObj);

       trace('INFO: Native conversion from "$nameSrc" to "$nameDst".');

       return wrap(classObj, nativeObject);
    }
}

// END
