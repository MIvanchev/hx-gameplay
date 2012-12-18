package org.gameplay3d;

import dk.bluewolf.gameplay.INativeBinding;

// DECL: class CollisionListener
interface PhysicsCollisionObject_CollisionListener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:Vector3, contactPointB:Vector3):Void;
}

// END
