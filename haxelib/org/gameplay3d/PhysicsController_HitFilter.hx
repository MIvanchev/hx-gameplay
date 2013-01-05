package org.gameplay3d;

// DECL: class HitFilter
interface PhysicsController_HitFilter
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual bool filter(PhysicsCollisionObject* object);
    public function filter(object:PhysicsCollisionObject):Bool;

    // DECL: virtual bool hit(const HitResult& result);
    public function hit(result:PhysicsController_HitResult):Bool;
}

// END
