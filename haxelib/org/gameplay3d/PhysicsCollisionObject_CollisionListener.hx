package org.gameplay3d;

import org.gameplay3d.shared.SharedPhysicsCollisionObject_CollisionPair;
import org.gameplay3d.shared.SharedVector3;

// DECL: class CollisionListener
interface PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:SharedPhysicsCollisionObject_CollisionPair, contactPointA:SharedVector3, contactPointB:SharedVector3):Void;
}

// END
