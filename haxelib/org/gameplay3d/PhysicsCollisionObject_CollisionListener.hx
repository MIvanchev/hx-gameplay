package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;

// DECL: class CollisionListener
interface PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:IVector3, contactPointB:IVector3):Void;
}

// END
