package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: struct PhysicsController_HitResult : public GameplayObject
class PhysicsRigidBody_Parameters extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var mass(get, set):Float;
    public var friction(get, set):Float;
    public var restitution(get, set):Float;
    public var linearDamping(get, set):Float;
    public var angularDamping(get, set):Float;
    public var kinematic(get, set):Bool;
    public var anisotropicFriction(get, set):Vector3;

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_mass():Float
    {
        return hx_PhysicsRigidBody_Parameters_property_mass_get(nativeObject);
    }

    function set_mass(value:Float):Float
    {
        return hx_PhysicsRigidBody_Parameters_property_mass_set(nativeObject, value);
    }

    function get_friction():Float
    {
        return hx_PhysicsRigidBody_Parameters_property_friction_get(nativeObject);
    }

    function set_friction(value:Float):Float
    {
        return hx_PhysicsRigidBody_Parameters_property_friction_set(nativeObject, value);
    }

    function get_restitution():Float
    {
        return hx_PhysicsRigidBody_Parameters_property_restitution_get(nativeObject);
    }

    function set_restitution(value:Float):Float
    {
        return hx_PhysicsRigidBody_Parameters_property_restitution_set(nativeObject, value);
    }

    function get_linearDamping():Float
    {
        return hx_PhysicsRigidBody_Parameters_property_linearDamping_get(nativeObject);
    }

    function set_linearDamping(value:Float):Float
    {
        return hx_PhysicsRigidBody_Parameters_property_linearDamping_set(nativeObject, value);
    }

    function get_angularDamping():Float
    {
        return hx_PhysicsRigidBody_Parameters_property_angularDamping_get(nativeObject);
    }

    function set_angularDamping(value:Float):Float
    {
        return hx_PhysicsRigidBody_Parameters_property_angularDamping_set(nativeObject, value);
    }

    function get_kinematic():Bool
    {
        return hx_PhysicsRigidBody_Parameters_property_kinematic_get(nativeObject);
    }

    function set_kinematic(value:Bool):Bool
    {
        return hx_PhysicsRigidBody_Parameters_property_kinematic_set(nativeObject, value);
    }

    function get_anisotropicFriction():Vector3
    {
        return Vector3.wrap(hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_get(nativeObject));
    }

    function set_anisotropicFriction(value:Vector3):Vector3
    {
        return Vector3.wrap(hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_set(nativeObject, value.native()));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsRigidBody_Parameters_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_Construct", 0);
    static var hx_PhysicsRigidBody_Parameters_Construct_FltX5_Bool_V3X3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_Construct_FltX5_Bool_V3X3", -1);
    static var hx_PhysicsRigidBody_Parameters_property_mass_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_mass_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_mass_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_mass_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_friction_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_friction_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_friction_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_friction_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_restitution_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_restitution_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_restitution_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_restitution_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_linearDamping_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_linearDamping_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_linearDamping_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_linearDamping_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_angularDamping_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_angularDamping_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_angularDamping_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_angularDamping_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_kinematic_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_kinematic_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_kinematic_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_kinematic_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_linearFactor_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_linearFactor_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_linearFactor_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_linearFactor_set", 2);
    static var hx_PhysicsRigidBody_Parameters_property_angularFactor_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_angularFactor_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_angularFactor_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_angularFactor_set", 2);
}

// END
