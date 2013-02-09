#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxePhysicsCollisionObject_CollisionListener : public PhysicsCollisionObject::CollisionListener
{
private:

    AutoGCRoot clbkCollisionEvent;

public:

    HaxePhysicsCollisionObject_CollisionListener(const value& _clbkCollisionEvent)
        : clbkCollisionEvent(_clbkCollisionEvent)
    {
    }

    void collisionEvent(
                PhysicsCollisionObject::CollisionListener::EventType type,
                const PhysicsCollisionObject::CollisionPair &collisionPair,
                const Vector3 &contactPointA,
                const Vector3 &contactPointB)
    {
        value args[] =
            {
                EnumToValue(type),
                ObjectToValue(
                        new PhysicsCollisionObject::CollisionPair(
                                collisionPair.objectA,
                                collisionPair.objectB
                            )
                    ),
                ObjectToValue(&contactPointA, false),
                ObjectToValue(&contactPointB, false)
            };

        val_callN(clbkCollisionEvent.get(), args, 4);
    }
};

value hx_PhysicsCollisionObject_CollisionListener_Construct(value clbkCollisionEvent)
{
    HaxePhysicsCollisionObject_CollisionListener *instance =
        new HaxePhysicsCollisionObject_CollisionListener(clbkCollisionEvent);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_CollisionListener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
// void hx_PhysicsCollisionObject_CollisionListener_collisionEvent(value thisObj, value type, value collisionPair, value contactPointA, value contactPointB)
// {
    // PhysicsCollisionObject::CollisionListener *_thisObj;
    // PhysicsCollisionObject::CollisionListener::EventType *_type;
    // PhysicsCollisionObject::CollisionPair *_collisionPair;
    // Vector3 *_contactPointA, *_contactPointB;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(type, _type);
    // ValueToObject(collisionPair, _collisionPair);
    // ValueToObject(contactPointA, _contactPointA);
    // ValueToObject(contactPointB, _contactPointB);
    // _thisObj->collisionEvent(_type, _collisionPair, _contactPointA, _contactPointB);
// }
// DEFINE_PRIM(hx_PhysicsCollisionObject_CollisionListener_collisionEvent, 5);

// END
//
