#include "HaxeAPI.h"

// DECL: PhysicsCollisionObject::Type getType() const;
value hx_PhysicsGhostObject_getType(value thisObj)
{
    PhysicsGhostObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsGhostObject_getType, 1);

// DECL: void transformChanged(Transform* transform, long cookie);
// void hx_PhysicsGhostObject_transformChanged(value thisObj, value transform, value cookie)
// {
    // PhysicsGhostObject *_thisObj;
    // Transform *_transform;
    // long _cookie = ValueToLong(cookie);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(transform, _transform);
    // _thisObj->transformChanged(_transform, _cookie);
// }
// DEFINE_PRIM(hx_PhysicsGhostObject_transformChanged, 3);

// END
//
