package org.gameplay3d.impl;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.PhysicsCollisionObject_CollisionListener;

// DECL: class CollisionListener
class PhysicsCollisionObject_CollisionListenerImpl extends GameplayObject, implements PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:Vector3, contactPointB:Vector3):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:PhysicsCollisionObject_CollisionListenerImpl):Dynamic
    {
        return hx_PhysicsCollisionObject_CollisionListener_Construct(thisObj.collisionEvent);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_CollisionListener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionListener_Construct", 1);
}

// END
