package org.gameplay3d.impl;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.Transform_Listener;

// DECL: class Listener : public GameplayObject
class Transform_ListenerImpl extends GameplayObject, implements Transform_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void transformChanged(Transform* transform, long cookie) = 0;
    public function transformChanged(transform:Transform, cookie:Int):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:Transform_ListenerImpl):Dynamic
    {
        return hx_Transform_Listener_Construct(thisObj.transformChanged);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Transform_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Transform_Listener_Construct", 1);
}

// END
