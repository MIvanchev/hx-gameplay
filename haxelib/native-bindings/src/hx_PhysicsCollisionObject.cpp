#include "HaxeAPI.h"

// DECL: void addCollisionListener(CollisionListener* listener, PhysicsCollisionObject* object = NULL);
void hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj(value thisObj, value listener, value object)
{
    PhysicsCollisionObject *_thisObj, *_object;
    PhysicsCollisionObject::CollisionListener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(object, _object);
    ValueToObject(listener, _listener);
    _thisObj->addCollisionListener(_listener, _object);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj, 3);

// DECL: void addCollisionListener(const char* function, PhysicsCollisionObject* object = NULL);
void hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj(value thisObj, value function, value object)
{
    PhysicsCollisionObject *_thisObj, *_object;
    const char *_function = ValueToString(function);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(object, _object);
    _thisObj->addCollisionListener(_function, _object);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj, 3);

// DECL: PhysicsCharacter* asCharacter();
value hx_PhysicsCollisionObject_asCharacter(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->asCharacter(), false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_asCharacter, 1);

// DECL: PhysicsGhostObject* asGhostObject();
value hx_PhysicsCollisionObject_asGhostObject(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->asGhostObject(), false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_asGhostObject, 1);

// DECL: PhysicsRigidBody* asRigidBody();
value hx_PhysicsCollisionObject_asRigidBody(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->asRigidBody(), false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_asRigidBody, 1);

// DECL: PhysicsVehicle* asVehicle();
value hx_PhysicsCollisionObject_asVehicle(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->asVehicle(), false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_asVehicle, 1);

// DECL: PhysicsVehicleWheel* asVehicleWheel();
value hx_PhysicsCollisionObject_asVehicleWheel(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->asVehicleWheel(), false);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_asVehicleWheel, 1);

// DECL: bool collidesWith(PhysicsCollisionObject* object) const;
value hx_PhysicsCollisionObject_collidesWith(value thisObj, value object)
{
    PhysicsCollisionObject *_thisObj, *_object;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(object, _object);
    return alloc_bool(_thisObj->collidesWith(_object));
}
DEFINE_PRIM(hx_PhysicsCollisionObject_collidesWith, 2);

// DECL: PhysicsCollisionShape* getCollisionShape() const;
value hx_PhysicsCollisionObject_getCollisionShape(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getCollisionShape(), true);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_getCollisionShape, 1);

// DECL: Node* getNode() const;
value hx_PhysicsCollisionObject_getNode(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_getNode, 1);

// DECL: PhysicsCollisionShape::Type getShapeType() const;
value hx_PhysicsCollisionObject_getShapeType(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getShapeType());
}
DEFINE_PRIM(hx_PhysicsCollisionObject_getShapeType, 1);

// DECL: virtual PhysicsCollisionObject::Type getType() const = 0;
value hx_PhysicsCollisionObject_getType(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsCollisionObject_getType, 1);

// DECL: bool isDynamic() const;
value hx_PhysicsCollisionObject_isDynamic(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isDynamic());
}
DEFINE_PRIM(hx_PhysicsCollisionObject_isDynamic, 1);

// DECL: bool isEnabled() const;
value hx_PhysicsCollisionObject_isEnabled(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEnabled());
}
DEFINE_PRIM(hx_PhysicsCollisionObject_isEnabled, 1);

// DECL: bool isKinematic() const;
value hx_PhysicsCollisionObject_isKinematic(value thisObj)
{
    PhysicsCollisionObject *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isKinematic());
}
DEFINE_PRIM(hx_PhysicsCollisionObject_isKinematic, 1);

// DECL: void removeCollisionListener(CollisionListener* listener, PhysicsCollisionObject* object = NULL);
void hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj(value thisObj, value listener, value object)
{
    PhysicsCollisionObject *_thisObj, *_object;
    PhysicsCollisionObject::CollisionListener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(object, _object);
    ValueToObject(listener, _listener);
    _thisObj->removeCollisionListener(_listener, _object);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj, 3);

// DECL: void removeCollisionListener(const char* function, PhysicsCollisionObject* object = NULL);
void hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj(value thisObj, value function, value object)
{
    PhysicsCollisionObject *_thisObj, *_object;
    const char *_function = ValueToString(function);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(object, _object);
    _thisObj->removeCollisionListener(_function, _object);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj, 3);

// DECL: void setEnabled(bool enable);
void hx_PhysicsCollisionObject_setEnabled(value thisObj, value enable)
{
    PhysicsCollisionObject *_thisObj;
    bool _enable = val_get_bool(enable);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enable);
}
DEFINE_PRIM(hx_PhysicsCollisionObject_setEnabled, 2);

// END
//
