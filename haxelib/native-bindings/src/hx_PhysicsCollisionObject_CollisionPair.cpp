#include "HaxeAPI.h"

// DECL: CollisionPair(PhysicsCollisionObject* objectA, PhysicsCollisionObject* objectB);
value hx_PhysicsCollisionObject_CollisionPair_Construct(value objectA, value objectB)
{
    PhysicsCollisionObject *_objectA, *_objectB;
    ValueToObject(objectA, _objectA);
    ValueToObject(objectB, _objectB);
    return ObjectToValue(new PhysicsCollisionObject::CollisionPair(_objectA, _objectB));
}
DEFINE_PRIM(hx_PhysicsCollisionObject_CollisionPair_Construct, 2);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_PhysicsCollisionObject_CollisionPair_property_objectA_get(value thisObj)
{
    PhysicsCollisionObject::CollisionPair *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->objectA, false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_CollisionPair_property_objectA_get, 1);

value hx_PhysicsCollisionObject_CollisionPair_property_objectB_get(value thisObj)
{
    PhysicsCollisionObject::CollisionPair *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->objectB, false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_CollisionPair_property_objectB_get, 1);

// END
//
