package org.gameplay3d;

import cpp.vm.WeakRef;
import org.gameplay3d.intern.NativeBinding;
import org.gameplay3d.util.NativeInterface;

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
            impersonate(nativeObjectInitializer);
        else
        {
            nativeObjectInitializerParams[0] = this;
            impersonate(
                    Reflect.callMethod(
                                    null,
                                    nativeObjectInitializer,
                                    nativeObjectInitializerParams
                                )
                );
            nativeObjectInitializerParams[0] = null;
        }
    }

    /**
     * TODO
     */
    @:generic
    @:allow(org.gameplay3d)
    @:allow(org.gameplat3d.immutable)
    @:allow(org.gameplay3d.intern)
    @:allow(org.gameplat3d.intern.impl)
    @:allow(org.gameplat3d.shared)
    @:allow(org.gameplay3d.util)
    @:allow(org.gameplat3d.wrapper)
    static inline function wrap<T : GameplayObject>(classObj:Class<T>, nativeObject:Dynamic):T
    {
        return
            if (nativeObject == null)
                null;
            else if (Std.is(nativeObject, WeakRef))
            {
                var ref:WeakRef<T> = nativeObject;
                if (ref.get() != null)
                    ref.get();
            }
            else
            {
                args[0] = nativeObject;
                Type.createInstance(classObj, args); // new T(nativeObject, null);
            }
    }

    @:generic
    public function castTo<T : GameplayObject>(classObj:Class<T>):T
    {
        return
            if (Std.is(this, classObj))
                cast(this);
            else
            {
                var result = wrap(classObj, nativeObject);
                if (Std.is(this, Ref))
                    NativeInterface.updateReference(nativeObject, result);
                result;
            }
    }
}

// END
