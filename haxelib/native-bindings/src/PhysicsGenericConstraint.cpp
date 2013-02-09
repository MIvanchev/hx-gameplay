#include "HaxeAPI.h"

// DECL: inline const Quaternion& getRotationOffsetA() const;
value hx_PhysicsGenericConstraint_getRotationOffsetA(value thisObj)
{
    PhysicsGenericConstraint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRotationOffsetA(), false);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_getRotationOffsetA, 1);

// DECL: inline const Quaternion& getRotationOffsetB() const;
value hx_PhysicsGenericConstraint_getRotationOffsetB(value thisObj)
{
    PhysicsGenericConstraint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRotationOffsetB(), false);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_getRotationOffsetB, 1);

// DECL: inline const Vector3& getTranslationOffsetA() const;
value hx_PhysicsGenericConstraint_getTranslationOffsetA(value thisObj)
{
    PhysicsGenericConstraint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getTranslationOffsetA(), false);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_getTranslationOffsetA, 1);

// DECL: inline const Vector3& getTranslationOffsetB() const;
value hx_PhysicsGenericConstraint_getTranslationOffsetB(value thisObj)
{
    PhysicsGenericConstraint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getTranslationOffsetB(), false);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_getTranslationOffsetB, 1);

// DECL: inline void setAngularLowerLimit(const Vector3& limits);
void hx_PhysicsGenericConstraint_setAngularLowerLimit(value thisObj, value limits)
{
    PhysicsGenericConstraint *_thisObj;
    Vector3 *_limits;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(limits, _limits);
    _thisObj->setAngularLowerLimit(*_limits);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setAngularLowerLimit, 2);

// DECL: inline void setAngularUpperLimit(const Vector3& limits);
void hx_PhysicsGenericConstraint_setAngularUpperLimit(value thisObj, value limits)
{
    PhysicsGenericConstraint *_thisObj;
    Vector3 *_limits;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(limits, _limits);
    _thisObj->setAngularUpperLimit(*_limits);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setAngularUpperLimit, 2);

// DECL: inline void setLinearLowerLimit(const Vector3& limits);
void hx_PhysicsGenericConstraint_setLinearLowerLimit(value thisObj, value limits)
{
    PhysicsGenericConstraint *_thisObj;
    Vector3 *_limits;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(limits, _limits);
    _thisObj->setLinearLowerLimit(*_limits);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setLinearLowerLimit, 2);

// DECL: inline void setLinearUpperLimit(const Vector3& limits);
void hx_PhysicsGenericConstraint_setLinearUpperLimit(value thisObj, value limits)
{
    PhysicsGenericConstraint *_thisObj;
    Vector3 *_limits;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(limits, _limits);
    _thisObj->setLinearUpperLimit(*_limits);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setLinearUpperLimit, 2);

// DECL: inline void setRotationOffsetA(const Quaternion& rotationOffset);
void hx_PhysicsGenericConstraint_setRotationOffsetA(value thisObj, value rotationOffset)
{
    PhysicsGenericConstraint *_thisObj;
    Quaternion *_rotationOffset;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotationOffset, _rotationOffset);
    _thisObj->setRotationOffsetA(*_rotationOffset);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setRotationOffsetA, 2);

// DECL: inline void setRotationOffsetB(const Quaternion& rotationOffset);
void hx_PhysicsGenericConstraint_setRotationOffsetB(value thisObj, value rotationOffset)
{
    PhysicsGenericConstraint *_thisObj;
    Quaternion *_rotationOffset;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotationOffset, _rotationOffset);
    _thisObj->setRotationOffsetB(*_rotationOffset);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setRotationOffsetB, 2);

// DECL: inline void setTranslationOffsetA(const Vector3& translationOffset);
void hx_PhysicsGenericConstraint_setTranslationOffsetA(value thisObj, value translationOffset)
{
    PhysicsGenericConstraint *_thisObj;
    Vector3 *_translationOffset;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(translationOffset, _translationOffset);
    _thisObj->setTranslationOffsetA(*_translationOffset);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setTranslationOffsetA, 2);

// DECL: inline void setTranslationOffsetB(const Vector3& translationOffset);
void hx_PhysicsGenericConstraint_setTranslationOffsetB(value thisObj, value translationOffset)
{
    PhysicsGenericConstraint *_thisObj;
    Vector3 *_translationOffset;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(translationOffset, _translationOffset);
    _thisObj->setTranslationOffsetB(*_translationOffset);
}
DEFINE_PRIM(hx_PhysicsGenericConstraint_setTranslationOffsetB, 2);

// END
//
