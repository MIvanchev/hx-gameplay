package org.gameplay3d;

// DECL: class CollisionListener
interface PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:Vector3, contactPointB:Vector3):Void;
}

// END
