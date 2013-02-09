#include "HaxeAPI.h"

// DECL: float getFrictionBreakout() const;
value hx_PhysicsVehicleWheel_getFrictionBreakout(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFrictionBreakout());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getFrictionBreakout, 1);

// DECL: float getRollInfluence() const;
value hx_PhysicsVehicleWheel_getRollInfluence(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRollInfluence());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getRollInfluence, 1);

// DECL: void getStrutConnectionOffset(Vector3* strutConnectionOffset) const;
void hx_PhysicsVehicleWheel_getStrutConnectionOffset(value thisObj, value strutConnectionOffset)
{
    PhysicsVehicleWheel *_thisObj;
    Vector3 *_strutConnectionOffset;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(strutConnectionOffset, _strutConnectionOffset);
    _thisObj->getStrutConnectionOffset(_strutConnectionOffset);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutConnectionOffset, 2);

// DECL: float getStrutDampingCompression() const;
value hx_PhysicsVehicleWheel_getStrutDampingCompression(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStrutDampingCompression());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutDampingCompression, 1);

// DECL: float getStrutDampingRelaxation() const;
value hx_PhysicsVehicleWheel_getStrutDampingRelaxation(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStrutDampingRelaxation());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutDampingRelaxation, 1);

// DECL: float getStrutForceMax() const;
value hx_PhysicsVehicleWheel_getStrutForceMax(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStrutForceMax());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutForceMax, 1);

// DECL: float getStrutRestLength() const;
value hx_PhysicsVehicleWheel_getStrutRestLength(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStrutRestLength());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutRestLength, 1);

// DECL: float getStrutStiffness() const;
value hx_PhysicsVehicleWheel_getStrutStiffness(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStrutStiffness());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutStiffness, 1);

// DECL: float getStrutTravelMax() const;
value hx_PhysicsVehicleWheel_getStrutTravelMax(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStrutTravelMax());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getStrutTravelMax, 1);

// DECL: PhysicsCollisionObject::Type getType() const;
value hx_PhysicsVehicleWheel_getType(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getType, 1);

// DECL: void getWheelAxle(Vector3* wheelAxle) const;
void hx_PhysicsVehicleWheel_getWheelAxle(value thisObj, value wheelAxle)
{
    PhysicsVehicleWheel *_thisObj;
    Vector3 *_wheelAxle;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(wheelAxle, _wheelAxle);
    _thisObj->getWheelAxle(_wheelAxle);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getWheelAxle, 2);

// DECL: void getWheelDirection(Vector3* wheelDirection) const;
void hx_PhysicsVehicleWheel_getWheelDirection(value thisObj, value wheelDirection)
{
    PhysicsVehicleWheel *_thisObj;
    Vector3 *_wheelDirection;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(wheelDirection, _wheelDirection);
    _thisObj->getWheelDirection(_wheelDirection);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getWheelDirection, 2);

// DECL: float getWheelRadius() const;
value hx_PhysicsVehicleWheel_getWheelRadius(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getWheelRadius());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_getWheelRadius, 1);

// DECL: bool isSteerable() const;
value hx_PhysicsVehicleWheel_isSteerable(value thisObj)
{
    PhysicsVehicleWheel *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isSteerable());
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_isSteerable, 1);

// DECL: void setEnabled(bool enable);
void hx_PhysicsVehicleWheel_setEnabled(value thisObj, value enable)
{
    PhysicsVehicleWheel *_thisObj;
    bool _enable = val_get_bool(enable);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enable);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setEnabled, 2);

// DECL: void setFrictionBreakout(float frictionBreakout);
void hx_PhysicsVehicleWheel_setFrictionBreakout(value thisObj, value frictionBreakout)
{
    PhysicsVehicleWheel *_thisObj;
    float _frictionBreakout = ValueToFloat(frictionBreakout);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFrictionBreakout(_frictionBreakout);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setFrictionBreakout, 2);

// DECL: void setRollInfluence(float rollInfluence);
void hx_PhysicsVehicleWheel_setRollInfluence(value thisObj, value rollInfluence)
{
    PhysicsVehicleWheel *_thisObj;
    float _rollInfluence = ValueToFloat(rollInfluence);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRollInfluence(_rollInfluence);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setRollInfluence, 2);

// DECL: void setSteerable(bool steerable);
void hx_PhysicsVehicleWheel_setSteerable(value thisObj, value steerable)
{
    PhysicsVehicleWheel *_thisObj;
    bool _steerable = val_get_bool(steerable);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSteerable(_steerable);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setSteerable, 2);

// DECL: void setStrutConnectionOffset(const Vector3& strutConnectionOffset);
void hx_PhysicsVehicleWheel_setStrutConnectionOffset(value thisObj, value strutConnectionOffset)
{
    PhysicsVehicleWheel *_thisObj;
    Vector3 *_strutConnectionOffset;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(strutConnectionOffset, _strutConnectionOffset);
    _thisObj->setStrutConnectionOffset(*_strutConnectionOffset);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutConnectionOffset, 2);

// DECL: void setStrutDampingCompression(float strutDampingCompression);
void hx_PhysicsVehicleWheel_setStrutDampingCompression(value thisObj, value strutDampingCompression)
{
    PhysicsVehicleWheel *_thisObj;
    float _strutDampingCompression = ValueToFloat(strutDampingCompression);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStrutDampingCompression(_strutDampingCompression);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutDampingCompression, 2);

// DECL: void setStrutDampingRelaxation(float strutDampingRelaxation);
void hx_PhysicsVehicleWheel_setStrutDampingRelaxation(value thisObj, value strutDampingRelaxation)
{
    PhysicsVehicleWheel *_thisObj;
    float _strutDampingRelaxation = ValueToFloat(strutDampingRelaxation);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStrutDampingRelaxation(_strutDampingRelaxation);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutDampingRelaxation, 2);

// DECL: void setStrutForceMax(float strutForceMax);
void hx_PhysicsVehicleWheel_setStrutForceMax(value thisObj, value strutForceMax)
{
    PhysicsVehicleWheel *_thisObj;
    float _strutForceMax = ValueToFloat(strutForceMax);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStrutForceMax(_strutForceMax);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutForceMax, 2);

// DECL: void setStrutRestLength(float strutRestLength);
void hx_PhysicsVehicleWheel_setStrutRestLength(value thisObj, value strutRestLength)
{
    PhysicsVehicleWheel *_thisObj;
    float _strutRestLength = ValueToFloat(strutRestLength);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStrutRestLength(_strutRestLength);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutRestLength, 2);

// DECL: void setStrutStiffness(float strutStiffness);
void hx_PhysicsVehicleWheel_setStrutStiffness(value thisObj, value strutStiffness)
{
    PhysicsVehicleWheel *_thisObj;
    float _strutStiffness = ValueToFloat(strutStiffness);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStrutStiffness(_strutStiffness);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutStiffness, 2);

// DECL: void setStrutTravelMax(float strutTravelMax);
void hx_PhysicsVehicleWheel_setStrutTravelMax(value thisObj, value strutTravelMax)
{
    PhysicsVehicleWheel *_thisObj;
    float _strutTravelMax = ValueToFloat(strutTravelMax);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStrutTravelMax(_strutTravelMax);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setStrutTravelMax, 2);

// DECL: void setWheelAxle(const Vector3& wheelAxle);
void hx_PhysicsVehicleWheel_setWheelAxle(value thisObj, value wheelAxle)
{
    PhysicsVehicleWheel *_thisObj;
    Vector3 *_wheelAxle;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(wheelAxle, _wheelAxle);
    _thisObj->setWheelAxle(*_wheelAxle);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setWheelAxle, 2);

// DECL: void setWheelDirection(const Vector3& wheelDirection);
void hx_PhysicsVehicleWheel_setWheelDirection(value thisObj, value wheelDirection)
{
    PhysicsVehicleWheel *_thisObj;
    Vector3 *_wheelDirection;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(wheelDirection, _wheelDirection);
    _thisObj->setWheelDirection(*_wheelDirection);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setWheelDirection, 2);

// DECL: void setWheelRadius(float wheelRadius);
void hx_PhysicsVehicleWheel_setWheelRadius(value thisObj, value wheelRadius)
{
    PhysicsVehicleWheel *_thisObj;
    float _wheelRadius = ValueToFloat(wheelRadius);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setWheelRadius(_wheelRadius);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_setWheelRadius, 2);

// DECL: void transform(Node* node) const;
void hx_PhysicsVehicleWheel_transform(value thisObj, value node)
{
    PhysicsVehicleWheel *_thisObj;
    Node *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->transform(_node);
}
DEFINE_PRIM(hx_PhysicsVehicleWheel_transform, 2);

// END
//
