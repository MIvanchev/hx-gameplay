#include "HaxeAPI.h"

// DECL: Parameters() : mass(0.0f), friction(0.5f), restitution(0.0f), linearDamping(0.0f), angularDamping(0.0f), kinematic(false), anisotropicFriction(Vector3::one()), linearFactor(Vector3::one()), angularFactor(Vector3::one())
value hx_PhysicsRigidBody_Parameters_Construct()
{
    return ObjectToValue(new PhysicsRigidBody::Parameters());
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_Construct, 0);

// DECL: Parameters(float mass, float friction = 0.5f, float resititution = 0.0f, float linearDamping = 0.0f, float angularDamping = 0.0f, bool kinematic = false, const Vector3& anisotropicFriction = Vector3::one(), const Vector3& linearFactor = Vector3::one(), const Vector3& angularFactor = Vector3::one())
value hx_PhysicsRigidBody_Parameters_Construct_FltX5_Bool_V3X3(value *args, int nargs)
{
    const value& mass = *args++;
    const value& friction = *args++;
    const value& resititution = *args++;
    const value& linearDamping = *args++;
    const value& angularDamping = *args++;
    const value& kinematic = *args++;
    const value& anisotropicFriction = *args++;
    const value& linearFactor = *args++;
    const value& angularFactor = *args;

    float _mass = ValueToFloat(mass);
    float _friction = ValueToFloat(friction);
    float _resititution = ValueToFloat(resititution);
    float _linearDamping = ValueToFloat(linearDamping);
    float _angularDamping = ValueToFloat(angularDamping);
    bool _kinematic = val_get_bool(kinematic);
    Vector3 *_anisotropicFriction, *_linearFactor, *_angularFactor;
    ValueToObject(anisotropicFriction, _anisotropicFriction);
    ValueToObject(linearFactor, _linearFactor);
    ValueToObject(angularFactor, _angularFactor);
    return ObjectToValue(new PhysicsRigidBody::Parameters(_mass, _friction, _resititution, _linearDamping, _angularDamping, _kinematic, *_anisotropicFriction, *_linearFactor, *_angularFactor));
}
DEFINE_PRIM_MULT(hx_PhysicsRigidBody_Parameters_Construct_FltX5_Bool_V3X3);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_PhysicsRigidBody_Parameters_property_mass_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->mass);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_mass_get, 1);

value hx_PhysicsRigidBody_Parameters_property_mass_set(value thisObj, value _value)
{
    PhysicsRigidBody::Parameters *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->mass = _flt;
    return _value;
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_mass_set, 2);

value hx_PhysicsRigidBody_Parameters_property_friction_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->friction);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_friction_get, 1);

value hx_PhysicsRigidBody_Parameters_property_friction_set(value thisObj, value _value)
{
    PhysicsRigidBody::Parameters *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->friction = _flt;
    return _value;
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_friction_set, 2);

value hx_PhysicsRigidBody_Parameters_property_restitution_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->restitution);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_restitution_get, 1);

value hx_PhysicsRigidBody_Parameters_property_restitution_set(value thisObj, value _value)
{
    PhysicsRigidBody::Parameters *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->restitution = _flt;
    return _value;
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_restitution_set, 2);

value hx_PhysicsRigidBody_Parameters_property_linearDamping_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->linearDamping);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_linearDamping_get, 1);

value hx_PhysicsRigidBody_Parameters_property_linearDamping_set(value thisObj, value _value)
{
    PhysicsRigidBody::Parameters *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->linearDamping = _flt;
    return _value;
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_linearDamping_set, 2);

value hx_PhysicsRigidBody_Parameters_property_angularDamping_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->angularDamping);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_angularDamping_get, 1);

value hx_PhysicsRigidBody_Parameters_property_angularDamping_set(value thisObj, value _value)
{
    PhysicsRigidBody::Parameters *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->angularDamping = _flt;
    return _value;
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_angularDamping_set, 2);

value hx_PhysicsRigidBody_Parameters_property_kinematic_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->kinematic);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_kinematic_get, 1);

value hx_PhysicsRigidBody_Parameters_property_kinematic_set(value thisObj, value _value)
{
    PhysicsRigidBody::Parameters *_thisObj;
    float _bool = val_get_bool(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->kinematic = _bool;
    return _value;
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_kinematic_set, 2);

value hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->anisotropicFriction, false);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_get, 1);

value hx_PhysicsRigidBody_Parameters_property_linearFactor_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->linearFactor, false);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_linearFactor_get, 1);

value hx_PhysicsRigidBody_Parameters_property_angularFactor_get(value thisObj)
{
    PhysicsRigidBody::Parameters *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->angularFactor, false);
}
DEFINE_PRIM(hx_PhysicsRigidBody_Parameters_property_angularFactor_get, 1);

// END
//
