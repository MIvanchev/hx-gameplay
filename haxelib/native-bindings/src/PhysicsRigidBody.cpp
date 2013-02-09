#include "HaxeAPI.h"

// DECL: void applyForce(const Vector3& force, const Vector3* relativePosition = NULL);
void hx_PhysicsRigidBody_applyForce(value thisObj, value force, value relativePosition)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_force, *_relativePosition;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(force, _force);
    ValueToObject(relativePosition, _relativePosition);
    _thisObj->applyForce(*_force, _relativePosition);
}
DEFINE_PRIM(hx_PhysicsRigidBody_applyForce, 3);

// DECL: void applyImpulse(const Vector3& impulse, const Vector3* relativePosition = NULL);
void hx_PhysicsRigidBody_applyImpulse(value thisObj, value impulse, value relativePosition)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_impulse, *_relativePosition;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(impulse, _impulse);
    ValueToObject(relativePosition, _relativePosition);
    _thisObj->applyImpulse(*_impulse, _relativePosition);
}
DEFINE_PRIM(hx_PhysicsRigidBody_applyImpulse, 3);

// DECL: void applyTorque(const Vector3& torque);
void hx_PhysicsRigidBody_applyTorque(value thisObj, value torque)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_torque;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(torque, _torque);
    _thisObj->applyTorque(*_torque);
}
DEFINE_PRIM(hx_PhysicsRigidBody_applyTorque, 2);

// DECL: void applyTorqueImpulse(const Vector3& torque);
void hx_PhysicsRigidBody_applyTorqueImpulse(value thisObj, value torque)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_torque;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(torque, _torque);
    _thisObj->applyTorqueImpulse(*_torque);
}
DEFINE_PRIM(hx_PhysicsRigidBody_applyTorqueImpulse, 2);

// DECL: inline float getAngularDamping() const;
value hx_PhysicsRigidBody_getAngularDamping(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getAngularDamping());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getAngularDamping, 1);

// DECL: inline Vector3 getAngularFactor() const;
value hx_PhysicsRigidBody_getAngularFactor(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getAngularFactor());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getAngularFactor, 1);

// DECL: inline Vector3 getAngularVelocity() const;
value hx_PhysicsRigidBody_getAngularVelocity(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getAngularVelocity());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getAngularVelocity, 1);

// DECL: inline Vector3 getAnisotropicFriction() const;
value hx_PhysicsRigidBody_getAnisotropicFriction(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getAnisotropicFriction());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getAnisotropicFriction, 1);

// DECL: inline float getFriction() const;
value hx_PhysicsRigidBody_getFriction(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFriction());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getFriction, 1);

// DECL: inline Vector3 getGravity() const;
value hx_PhysicsRigidBody_getGravity(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getGravity());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getGravity, 1);

// DECL: float getHeight(float x, float y, Vector3* normal = NULL) const;
value hx_PhysicsRigidBody_getHeight(value thisObj, value x, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getHeight(_x, _z));
}
DEFINE_PRIM(hx_PhysicsRigidBody_getHeight, 3);

// DECL: inline float getLinearDamping() const;
value hx_PhysicsRigidBody_getLinearDamping(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getLinearDamping());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getLinearDamping, 1);

// DECL: inline Vector3 getLinearFactor() const;
value hx_PhysicsRigidBody_getLinearFactor(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getLinearFactor());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getLinearFactor, 1);

// DECL: inline Vector3 getLinearVelocity() const;
value hx_PhysicsRigidBody_getLinearVelocity(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getLinearVelocity());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getLinearVelocity, 1);

// DECL: inline float getMass() const;
value hx_PhysicsRigidBody_getMass(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getMass());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getMass, 1);

// DECL: inline float getRestitution() const;
value hx_PhysicsRigidBody_getRestitution(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRestitution());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getRestitution, 1);

// DECL: PhysicsCollisionObject::Type getType() const;
value hx_PhysicsRigidBody_getType(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsRigidBody_getType, 1);

// DECL: bool isStatic() const;
value hx_PhysicsRigidBody_isStatic(value thisObj)
{
    PhysicsRigidBody *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isStatic());
}
DEFINE_PRIM(hx_PhysicsRigidBody_isStatic, 1);

// DECL: inline void setAngularFactor(const Vector3& angularFactor);
void hx_PhysicsRigidBody_setAngularFactor_V3(value thisObj, value angularFactor)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_angularFactor;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(angularFactor, _angularFactor);
    _thisObj->setAngularFactor(*_angularFactor);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setAngularFactor_V3, 2);

// DECL: inline void setAngularFactor(float x, float y, float z);
void hx_PhysicsRigidBody_setAngularFactor_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAngularFactor(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setAngularFactor_FltX3, 4);

// DECL: inline void setAngularVelocity(const Vector3& velocity);
void hx_PhysicsRigidBody_setAngularVelocity_V3(value thisObj, value velocity)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_velocity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(velocity, _velocity);
    _thisObj->setAngularVelocity(*_velocity);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setAngularVelocity_V3, 2);

// DECL: inline void setAngularVelocity(float x, float y, float z);
void hx_PhysicsRigidBody_setAngularVelocity_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAngularVelocity(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setAngularVelocity_FltX3, 4);

// DECL: inline void setAnisotropicFriction(const Vector3& friction);
void hx_PhysicsRigidBody_setAnisotropicFriction_V3(value thisObj, value friction)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_friction;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(friction, _friction);
    _thisObj->setAnisotropicFriction(*_friction);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setAnisotropicFriction_V3, 2);

// DECL: inline void setAnisotropicFriction(float x, float y, float z);
void hx_PhysicsRigidBody_setAnisotropicFriction_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAnisotropicFriction(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setAnisotropicFriction_FltX3, 4);

// DECL: inline void setDamping(float linearDamping, float angularDamping);
void hx_PhysicsRigidBody_setDamping(value thisObj, value linearDamping, value angularDamping)
{
    PhysicsRigidBody *_thisObj;
    float _linearDamping = ValueToFloat(linearDamping);
    float _angularDamping = ValueToFloat(angularDamping);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDamping(_linearDamping, _angularDamping);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setDamping, 3);

// DECL: void setEnabled(bool enable);
void hx_PhysicsRigidBody_setEnabled(value thisObj, value enable)
{
    PhysicsRigidBody *_thisObj;
    bool _enable = val_get_bool(enable);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enable);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setEnabled, 2);

// DECL: inline void setFriction(float friction);
void hx_PhysicsRigidBody_setFriction(value thisObj, value friction)
{
    PhysicsRigidBody *_thisObj;
    float _friction = ValueToFloat(friction);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFriction(_friction);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setFriction, 2);

// DECL: inline void setGravity(const Vector3& gravity);
void hx_PhysicsRigidBody_setGravity_V3(value thisObj, value gravity)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_gravity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(gravity, _gravity);
    _thisObj->setGravity(*_gravity);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setGravity_V3, 2);

// DECL: inline void setGravity(float x, float y, float z);
void hx_PhysicsRigidBody_setGravity_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setGravity(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setGravity_FltX3, 4);

// DECL: void setKinematic(bool kinematic);
void hx_PhysicsRigidBody_setKinematic(value thisObj, value kinematic)
{
    PhysicsRigidBody *_thisObj;
    bool _kinematic = val_get_bool(kinematic);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setKinematic(_kinematic);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setKinematic, 2);

// DECL: inline void setLinearFactor(const Vector3& linearFactor);
void hx_PhysicsRigidBody_setLinearFactor_V3(value thisObj, value linearFactor)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_linearFactor;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(linearFactor, _linearFactor);
    _thisObj->setLinearFactor(*_linearFactor);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setLinearFactor_V3, 2);

// DECL: inline void setLinearFactor(float x, float y, float z);
void hx_PhysicsRigidBody_setLinearFactor_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setLinearFactor(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setLinearFactor_FltX3, 4);

// DECL: inline void setLinearVelocity(const Vector3& velocity);
void hx_PhysicsRigidBody_setLinearVelocity_V3(value thisObj, value velocity)
{
    PhysicsRigidBody *_thisObj;
    Vector3 *_velocity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(velocity, _velocity);
    _thisObj->setLinearVelocity(*_velocity);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setLinearVelocity_V3, 2);

// DECL: inline void setLinearVelocity(float x, float y, float z);
void hx_PhysicsRigidBody_setLinearVelocity_FltX3(value thisObj, value x, value y, value z)
{
    PhysicsRigidBody *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setLinearVelocity(_x, _y, _z);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setLinearVelocity_FltX3, 4);

// DECL: inline void setRestitution(float restitution);
void hx_PhysicsRigidBody_setRestitution(value thisObj, value restitution)
{
    PhysicsRigidBody *_thisObj;
    float _restitution = ValueToFloat(restitution);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRestitution(_restitution);
}
DEFINE_PRIM(hx_PhysicsRigidBody_setRestitution, 2);

// END
//
