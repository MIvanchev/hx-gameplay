package org.gameplay3d.wrapper;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.Transform;
import org.gameplay3d.Transform_Listener;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class Transform_ListenerWrapper extends GameplayObject, implements Transform_Listener
{
     /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):Transform_Listener;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    function new(target, nativeObject, nativeObjectInitializerParams)
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.target = target;
    }

    // DECL: TimeListener();
    public static function make(target)
    {
        return new Transform_ListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void transformChanged(Transform* transform, long cookie) = 0;
    public function transformChanged(transform:Transform, cookie:Int):Void
    {
        target.transformChanged(transform, cookie);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function transformChangedWrapper(transform, cookie)
    {
        transformChanged(Transform.wrap(transform), cookie);
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:Transform_ListenerWrapper):Dynamic
    {
        return hx_Transform_Listener_Construct(thisObj.transformChangedWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Transform_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Transform_Listener_Construct", 1);
}

// END
