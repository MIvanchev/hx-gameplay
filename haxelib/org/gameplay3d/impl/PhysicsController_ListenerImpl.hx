package org.gameplay3d.impl;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.PhysicsController_Listener;

// DECL: class Listener
class PhysicsController_ListenerImpl extends GameplayObject, implements PhysicsController_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void statusEvent(EventType type) = 0;
    public function statusEvent(type:Int):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:PhysicsController_ListenerImpl):Dynamic
    {
        return hx_PhysicsController_Listener_Construct(thisObj.statusEvent);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_Listener_Construct", 1);
}

// END
