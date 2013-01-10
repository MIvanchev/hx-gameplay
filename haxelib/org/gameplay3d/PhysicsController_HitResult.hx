package org.gameplay3d;

import cpp.Lib;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: struct PhysicsController_HitResult : public GameplayObject
class PhysicsController_HitResult extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var object(default, null):PhysicsCollisionObject;
    public var point(default, null):Vector3;
    public var fraction(get_fraction, set_fraction):Float;
    public var normal(default, null):Vector3;

    /***************************************************************************
     * FUNCTIONS                                                               *
     **************************************************************************/

    function new(
            nativeObjectInitializer:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObjectInitializer, nativeObjectInitializerParams);
        object = PhysicsCollisionObject.wrap(hx_PhysicsController_HitResult_property_object_get(nativeObject));
        point = Vector3.wrap(hx_PhysicsController_HitResult_property_point_get(nativeObject));
        normal = Vector3.wrap(hx_PhysicsController_HitResult_property_normal_get(nativeObject));
    }

    // DECL:
    public static function make():PhysicsController_HitResult
    {
        return new PhysicsController_HitResult(constructNativeObject());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL:
    static function constructNativeObject():Dynamic
    {
        return hx_PhysicsController_HitResult_Construct();
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_fraction():Float
    {
        return hx_PhysicsController_HitResult_property_fraction_get(nativeObject);
    }

    function set_fraction(value:Float):Float
    {
        return hx_PhysicsController_HitResult_property_fraction_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_HitResult_Construct = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_Construct", 0);
    static var hx_PhysicsController_HitResult_property_object_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_object_get", 1);
    static var hx_PhysicsController_HitResult_property_point_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_point_get", 1);
    static var hx_PhysicsController_HitResult_property_fraction_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_fraction_get", 1);
    static var hx_PhysicsController_HitResult_property_fraction_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_fraction_set", 2);
    static var hx_PhysicsController_HitResult_property_normal_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_normal_get", 1);
}

// END
