package org.gameplay3d;

import cpp.Lib;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;

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

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        super.impersonate(nativeObject);
        Macros.impersonateResult(object, hx_PhysicsController_HitResult_property_object_get(nativeObject));
        Macros.impersonateResult(point, hx_PhysicsController_HitResult_property_point_get(nativeObject));
        Macros.impersonateResult(normal, hx_PhysicsController_HitResult_property_normal_get(nativeObject));
        return cast(this);
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
    static var hx_PhysicsController_HitResult_property_object_get = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_object_get", 1);
    static var hx_PhysicsController_HitResult_property_point_get = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_point_get", 1);
    static var hx_PhysicsController_HitResult_property_fraction_get = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_fraction_get", 1);
    static var hx_PhysicsController_HitResult_property_fraction_set = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_fraction_set", 2);
    static var hx_PhysicsController_HitResult_property_normal_get = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_normal_get", 1);
}

// END
