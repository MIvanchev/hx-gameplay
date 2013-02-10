package org.gameplay3d.wrapper;

import org.gameplay3d.intern.ListenerWrapper;
import org.gameplay3d.Transform;
import org.gameplay3d.Transform_Listener;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class Transform_ListenerWrapper extends ListenerWrapper<Transform_Listener> implements Transform_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: (none)
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

    static var hx_Transform_Listener_Construct = NativeInterface.loadMember(Transform_Listener, "Construct", 1);
}

// END
