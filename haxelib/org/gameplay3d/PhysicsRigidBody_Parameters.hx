package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: struct PhysicsRigidBody_Parameters : public GameplayObject
class PhysicsRigidBody_Parameters extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var mass(get_mass, set_mass):Float;
    public var friction(get_friction, set_friction):Float;
    public var restitution(get_restitution, set_restitution):Float;
    public var linearDamping(get_linearDamping, set_linearDamping):Float;
    public var angularDamping(get_angularDamping, set_angularDamping):Float;
    public var kinematic(get_kinematic, set_kinematic):Bool;
    public var anisotropicFriction(default, null):Vector3;
    public var linearFactor(default, null):Vector3;
    public var angularFactor(default, null):Vector3;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    function new(
            nativeObjectInitializer:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObjectInitializer, nativeObjectInitializerParams);
        anisotropicFriction = Vector3.wrap(hx_PhysicsRigidBody_Parameters_property_anisotropicFriction_get(nativeObject));
        linearFactor = Vector3.wrap(hx_PhysicsRigidBody_Parameters_property_linearFactor_get(nativeObject));
        angularFactor = Vector3.wrap(hx_PhysicsRigidBody_Parameters_property_angularFactor_get(nativeObject));
    }

    // DECL: PhysicsRigidBody_Parameters();
    public static function make():PhysicsRigidBody_Parameters
    {
        return new PhysicsRigidBody_Parameters(constructNativeObject());
    }

    // DECL: PhysicsRigidBody_Parameters(float mass, float friction=0.5f, float resititution=0.0f, float linearDamping=0.0f, float angularDamping=0.0f, bool kinematic=false, const Vector3 &anisotropicFriction=Vector3::one());
    public static function make_FltX5_Bool_V3X3(mass:Float, friction:Float = 0.5, restitution:Float = 0.0, linearDamping:Float = 0.0, angularDamping:Float = 0.0, kinematic:Bool = false, anisotropicFiltering:IVector3):PhysicsRigidBody_Parameters
    {
        return new PhysicsRigidBody_Parameters(constructNativeObject_FltX5_Bool_V3X3(mass, friction, restitution, linearDamping, angularDamping, kinematic, anisotropicFiltering));
    }

    // DECL: PhysicsRigidBody_Parameters();
    static function constructNativeObject():Dynamic
    {
        return hx_PhysicsRigidBody_Parameters_Construct();
    }

    // DECL: PhysicsRigidBody_Parameters(float mass, float friction=0.5f, float resititution=0.0f, float linearDamping=0.0f, float angularDamping=0.0f, bool kinematic=false, const Vector3 &anisotropicFriction=Vector3::one());
    static function constructNativeObject_FltX5_Bool_V3X3(mass:Float, friction:Float, restitution:Float, linearDamping:Float, angularDamping:Float, kinematic:Bool, anisotropicFiltering:IVector3):PhysicsRigidBody_Parameters
    {
        return hx_PhysicsRigidBody_Parameters_Construct_FltX5_Bool_V3X3(mass, friction, restitution, linearDamping, angularDamping, kinematic, anisotropicFiltering);
    }

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
    static var hx_PhysicsRigidBody_Parameters_property_linearFactor_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_linearFactor_get", 1);
    static var hx_PhysicsRigidBody_Parameters_property_angularFactor_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_Parameters_property_angularFactor_get", 1);
}

// END
