#include "HaxeAPI.h"

// DECL: void addWheel(PhysicsVehicleWheel* wheel);
void hx_PhysicsVehicle_addWheel(value thisObj, value wheel)
{
    PhysicsVehicle *_thisObj;
    PhysicsVehicleWheel *_wheel;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(wheel, _wheel);
    _thisObj->addWheel(_wheel);
}
DEFINE_PRIM(hx_PhysicsVehicle_addWheel, 2);

// DECL: float getBoostGain() const;
value hx_PhysicsVehicle_getBoostGain(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBoostGain());
}
DEFINE_PRIM(hx_PhysicsVehicle_getBoostGain, 1);

// DECL: float getBoostSpeed() const;
value hx_PhysicsVehicle_getBoostSpeed(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBoostSpeed());
}
DEFINE_PRIM(hx_PhysicsVehicle_getBoostSpeed, 1);

// DECL: float getBrakedownFull() const;
value hx_PhysicsVehicle_getBrakedownFull(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBrakedownFull());
}
DEFINE_PRIM(hx_PhysicsVehicle_getBrakedownFull, 1);

// DECL: float getBrakedownStart() const;
value hx_PhysicsVehicle_getBrakedownStart(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBrakedownStart());
}
DEFINE_PRIM(hx_PhysicsVehicle_getBrakedownStart, 1);

// DECL: float getBrakingForce() const;
value hx_PhysicsVehicle_getBrakingForce(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBrakingForce());
}
DEFINE_PRIM(hx_PhysicsVehicle_getBrakingForce, 1);

// DECL: float getDownforce() const;
value hx_PhysicsVehicle_getDownForce(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getDownforce());
}
DEFINE_PRIM(hx_PhysicsVehicle_getDownForce, 1);

// DECL: float getDrivedownFull() const;
value hx_PhysicsVehicle_getDrivedownFull(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getDrivedownFull());
}
DEFINE_PRIM(hx_PhysicsVehicle_getDrivedownFull, 1);

// DECL: float getDrivedownStart() const;
value hx_PhysicsVehicle_getDrivedownStart(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getDrivedownStart());
}
DEFINE_PRIM(hx_PhysicsVehicle_getDrivedownStart, 1);

// DECL: float getDrivingForce() const;
value hx_PhysicsVehicle_getDrivingForce(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getDrivingForce());
}
DEFINE_PRIM(hx_PhysicsVehicle_getDrivingForce, 1);

// DECL: unsigned int getNumWheels() const;
value hx_PhysicsVehicle_getNumWheels(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getNumWheels());
}
DEFINE_PRIM(hx_PhysicsVehicle_getNumWheels, 1);

// DECL: PhysicsRigidBody* getRigidBody() const;
value hx_PhysicsVehicle_getRigidBody(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getRigidBody(), false);
}
DEFINE_PRIM(hx_PhysicsVehicle_getRigidBody, 1);

// DECL: float getSpeedKph() const;
value hx_PhysicsVehicle_getSpeedKph(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSpeedKph());
}
DEFINE_PRIM(hx_PhysicsVehicle_getSpeedKph, 1);

// DECL: float getSpeedSmoothKph() const;
value hx_PhysicsVehicle_getSpeedSmoothKph(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSpeedSmoothKph());
}
DEFINE_PRIM(hx_PhysicsVehicle_getSpeedSmoothKph, 1);

// DECL: float getSteerdownGain() const;
value hx_PhysicsVehicle_getSteerdownGain(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSteerdownGain());
}
DEFINE_PRIM(hx_PhysicsVehicle_getSteerdownGain, 1);

// DECL: float getSteerdownSpeed() const;
value hx_PhysicsVehicle_getSteerdownSpeed(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSteerdownSpeed());
}
DEFINE_PRIM(hx_PhysicsVehicle_getSteerdownSpeed, 1);

// DECL: float getSteeringGain() const;
value hx_PhysicsVehicle_getSteeringGain(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSteeringGain());
}
DEFINE_PRIM(hx_PhysicsVehicle_getSteeringGain, 1);

// DECL: PhysicsCollisionObject::Type getType() const;
value hx_PhysicsVehicle_getType(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsVehicle_getType, 1);

// DECL: PhysicsVehicleWheel* getWheel(unsigned int i);
value hx_PhysicsVehicle_getWheel(value thisObj, value i)
{
    PhysicsVehicle *_thisObj;
    unsigned int _i = ValueToUint(i);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getWheel(_i), false);
}
DEFINE_PRIM(hx_PhysicsVehicle_getWheel, 2);

// DECL: void reset();
void hx_PhysicsVehicle_reset(value thisObj)
{
    PhysicsVehicle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->reset();
}
DEFINE_PRIM(hx_PhysicsVehicle_reset, 1);

// DECL: void setBoost(float boostSpeed, float boostGain);
void hx_PhysicsVehicle_setBoost(value thisObj, value boostSpeed, value boostGain)
{
    PhysicsVehicle *_thisObj;
    float _boostSpeed = ValueToFloat(boostSpeed);
    float _boostGain = ValueToFloat(boostGain);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBoost(_boostSpeed, _boostGain);
}
DEFINE_PRIM(hx_PhysicsVehicle_setBoost, 3);

// DECL: void setBrakedown(float brakedownStart, float brakedownFull);
void hx_PhysicsVehicle_setBrakedown(value thisObj, value brakedownStart, value brakedownFull)
{
    PhysicsVehicle *_thisObj;
    float _brakedownStart = ValueToFloat(brakedownStart);
    float _brakedownFull = ValueToFloat(brakedownFull);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBrakedown(_brakedownStart, _brakedownFull);
}
DEFINE_PRIM(hx_PhysicsVehicle_setBrakedown, 3);

// DECL: void setBrakingForce(float brakingForce);
void hx_PhysicsVehicle_setBrakingForce(value thisObj, value brakingForce)
{
    PhysicsVehicle *_thisObj;
    float _brakingForce = ValueToFloat(brakingForce);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBrakingForce(_brakingForce);
}
DEFINE_PRIM(hx_PhysicsVehicle_setBrakingForce, 2);

// DECL: void setDownforce(float downforce);
void hx_PhysicsVehicle_setDownforce(value thisObj, value downforce)
{
    PhysicsVehicle *_thisObj;
    float _downforce = ValueToFloat(downforce);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDownforce(_downforce);
}
DEFINE_PRIM(hx_PhysicsVehicle_setDownforce, 2);

// DECL: void setDrivedown(float drivedownStart, float drivedownFull);
void hx_PhysicsVehicle_setDrivedown(value thisObj, value drivedownStart, value drivedownFull)
{
    PhysicsVehicle *_thisObj;
    float _drivedownStart = ValueToFloat(drivedownStart);
    float _drivedownFull = ValueToFloat(drivedownFull);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDrivedown(_drivedownStart, _drivedownFull);
}
DEFINE_PRIM(hx_PhysicsVehicle_setDrivedown, 3);

// DECL: void setDrivingForce(float drivingForce);
void hx_PhysicsVehicle_setDrivingForce(value thisObj, value drivingForce)
{
    PhysicsVehicle *_thisObj;
    float _drivingForce = ValueToFloat(drivingForce);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDrivingForce(_drivingForce);
}
DEFINE_PRIM(hx_PhysicsVehicle_setDrivingForce, 2);

// DECL: void setEnabled(bool enable);
void hx_PhysicsVehicle_setEnabled(value thisObj, value enable)
{
    PhysicsVehicle *_thisObj;
    bool _enable = val_get_bool(enable);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enable);
}
DEFINE_PRIM(hx_PhysicsVehicle_setEnabled, 2);

// DECL: void setSteerdown(float steerdownSpeed, float steerdownGain);
void hx_PhysicsVehicle_setSteerdown(value thisObj, value steerdownSpeed, value steerdownGain)
{
    PhysicsVehicle *_thisObj;
    float _steerdownSpeed = ValueToFloat(steerdownSpeed);
    float _steerdownGain = ValueToFloat(steerdownGain);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSteerdown(_steerdownSpeed, _steerdownGain);
}
DEFINE_PRIM(hx_PhysicsVehicle_setSteerdown, 3);

// DECL: void setSteeringGain(float steeringGain);
void hx_PhysicsVehicle_setSteeringGain(value thisObj, value steeringGain)
{
    PhysicsVehicle *_thisObj;
    float _steeringGain = ValueToFloat(steeringGain);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSteeringGain(_steeringGain);
}
DEFINE_PRIM(hx_PhysicsVehicle_setSteeringGain, 2);

// DECL: void update(float elapsedTime, float steering, float braking, float driving);
void hx_PhysicsVehicle_update(value thisObj, value elapsedTime, value steering, value braking, value driving)
{
    PhysicsVehicle *_thisObj;
    float _elapsedTime = ValueToFloat(elapsedTime);
    float _steering = ValueToFloat(steering);
    float _braking = ValueToFloat(braking);
    float _driving = ValueToFloat(driving);
    ValueToObject(thisObj, _thisObj);
    _thisObj->update(_elapsedTime, _steering, _braking, _driving);
}
DEFINE_PRIM(hx_PhysicsVehicle_update, 5);

// END
//
