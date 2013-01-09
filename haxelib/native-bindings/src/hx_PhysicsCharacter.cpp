#include "HaxeAPI.h"

// DECL: Vector3 getCurrentVelocity() const;
value hx_PhysicsCharacter_getCurrentVelocity(value thisObj)
{
    PhysicsCharacter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getCurrentVelocity());
}
DEFINE_PRIM(hx_PhysicsCharacter_getCurrentVelocity, 1);

// DECL: float getMaxSlopeAngle() const;
value hx_PhysicsCharacter_getMaxSlopeAngle(value thisObj)
{
    PhysicsCharacter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getMaxSlopeAngle());
}
DEFINE_PRIM(hx_PhysicsCharacter_getMaxSlopeAngle, 1);

// DECL: float getMaxStepHeight() const;
value hx_PhysicsCharacter_getMaxStepHeight(value thisObj)
{
    PhysicsCharacter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getMaxStepHeight());
}
DEFINE_PRIM(hx_PhysicsCharacter_getMaxStepHeight, 1);

// DECL: PhysicsCollisionObject::Type getType() const;
value hx_PhysicsCharacter_getType(value thisObj)
{
    PhysicsCharacter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsCharacter_getType, 1);

// DECL: bool isPhysicsEnabled() const;
value hx_PhysicsCharacter_isPhysicsEnabled(value thisObj)
{
    PhysicsCharacter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isPhysicsEnabled());
}
DEFINE_PRIM(hx_PhysicsCharacter_isPhysicsEnabled, 1);

// DECL: void jump(float height);
void hx_PhysicsCharacter_jump(value thisObj, value height)
{
    PhysicsCharacter *_thisObj;
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->jump(_height);
}
DEFINE_PRIM(hx_PhysicsCharacter_jump, 2);

// DECL: void rotate(const Quaternion& rotation);
void hx_PhysicsCharacter_rotate_Qtrn(value thisObj, value rotation)
{
    PhysicsCharacter *_thisObj;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->rotate(*_rotation);
}
DEFINE_PRIM(hx_PhysicsCharacter_rotate_Qtrn, 2);

// DECL: void rotate(const Vector3& axis, float angle);
void hx_PhysicsCharacter_rotate_V3_Flt(value thisObj, value axis, value angle)
{
    PhysicsCharacter *_thisObj;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    _thisObj->rotate(*_axis, _angle);
}
DEFINE_PRIM(hx_PhysicsCharacter_rotate_V3_Flt, 3);

// DECL: void setForwardVelocity(float velocity = 1.0f);
void hx_PhysicsCharacter_setForwardVelocity(value thisObj, value velocity)
{
    PhysicsCharacter *_thisObj;
    float _velocity = ValueToFloat(velocity);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setForwardVelocity(_velocity);
}
DEFINE_PRIM(hx_PhysicsCharacter_setForwardVelocity, 2);

// DECL: void setMaxSlopeAngle(float angle);
void hx_PhysicsCharacter_setMaxSlopeAngle(value thisObj, value angle)
{
    PhysicsCharacter *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMaxSlopeAngle(_angle);
}
DEFINE_PRIM(hx_PhysicsCharacter_setMaxSlopeAngle, 2);

// DECL: void setMaxStepHeight(float height);
void hx_PhysicsCharacter_setMaxStepHeight(value thisObj, value height)
{
    PhysicsCharacter *_thisObj;
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMaxStepHeight(_height);
}
DEFINE_PRIM(hx_PhysicsCharacter_setMaxStepHeight, 2);

// DECL: void setPhysicsEnabled(bool enabled);
void hx_PhysicsCharacter_setPhysicsEnabled(value thisObj, value enabled)
{
    PhysicsCharacter *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setPhysicsEnabled(_enabled);
}
DEFINE_PRIM(hx_PhysicsCharacter_setPhysicsEnabled, 2);

// DECL: void setRightVelocity(float velocity = 1.0f);
void hx_PhysicsCharacter_setRightVelocity(value thisObj, value velocity)
{
    PhysicsCharacter *_thisObj;
    float _velocity = ValueToFloat(velocity);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRightVelocity(_velocity);
}
DEFINE_PRIM(hx_PhysicsCharacter_setRightVelocity, 2);

// DECL: void setRotation(const Quaternion& rotation);
void hx_PhysicsCharacter_setRotation_Qtrn(value thisObj, value rotation)
{
    PhysicsCharacter *_thisObj;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->setRotation(*_rotation);
}
DEFINE_PRIM(hx_PhysicsCharacter_setRotation_Qtrn, 2);

// DECL: void setRotation(const Vector3& axis, float angle);
void hx_PhysicsCharacter_setRotation_V3_Flt(value thisObj, value axis, value angle)
{
    PhysicsCharacter *_thisObj;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    _thisObj->setRotation(*_axis, _angle);
}
DEFINE_PRIM(hx_PhysicsCharacter_setRotation_V3_Flt, 3);

// DECL: void setVelocity(const Vector3& velocity);
void hx_PhysicsCharacter_setVelocity_V3(value thisObj, value velocity)
{
    PhysicsCharacter *_thisObj;
    Vector3 *_velocity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(velocity, _velocity);
    _thisObj->setVelocity(*_velocity);
}
DEFINE_PRIM(hx_PhysicsCharacter_setVelocity_V3, 2);

// DECL: void setVelocity(float x, float y, float z);
void hx_PhysicsCharacter_setVelocity_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsCharacter *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setVelocity(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsCharacter_setVelocity_FltX3, 4);

// END
//
