package org.gameplay3d;
import cpp.Lib;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: struct PhysicsController_HitResult : public GameplayObject
class PhysicsController_HitResult extends GameplayObject
{
    /***************************************************************************
     * FUNCTIONS                                                               *
     **************************************************************************/

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
     * PROPERTIES                                                              *
     **************************************************************************/

    public var object(get_object, set_object):PhysicsCollisionObject;
    public var point(get_point, set_point):Vector3;
    public var fraction(get_fraction, set_fraction):Float;
    public var normal(get_normal, set_normal):Vector3;

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_object():PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_PhysicsController_HitResult_property_object_get(nativeObject));
    }

    function set_object(value:PhysicsCollisionObject):PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_PhysicsController_HitResult_property_object_set(nativeObject, value.native()));
    }

    function get_point():Vector3
    {
        return Vector3.wrap(hx_PhysicsController_HitResult_property_point_get(nativeObject));
    }

    function set_point(value:Vector3):Vector3
    {
        return Vector3.wrap(hx_PhysicsController_HitResult_property_point_set(nativeObject, value.native()));
    }

    function get_fraction():Float
    {
        return hx_PhysicsController_HitResult_property_fraction_get(nativeObject);
    }

    function set_fraction(value:Float):Float
    {
        return hx_PhysicsController_HitResult_property_fraction_set(nativeObject, value);
    }

    function get_normal():Vector3
    {
        return Vector3.wrap(hx_PhysicsController_HitResult_property_normal_get(nativeObject));
    }

    function set_normal(value:Vector3):Vector3
    {
        return Vector3.wrap(hx_PhysicsController_HitResult_property_normal_set(nativeObject, value.native()));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_HitResult_Construct = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_Construct", 0);
    static var hx_PhysicsController_HitResult_property_object_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_object_get", 1);
    static var hx_PhysicsController_HitResult_property_object_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_object_set", 2);
    static var hx_PhysicsController_HitResult_property_point_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_point_get", 1);
    static var hx_PhysicsController_HitResult_property_point_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_point_set", 2);
    static var hx_PhysicsController_HitResult_property_fraction_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_fraction_get", 1);
    static var hx_PhysicsController_HitResult_property_fraction_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_fraction_set", 2);
    static var hx_PhysicsController_HitResult_property_normal_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_normal_get", 1);
    static var hx_PhysicsController_HitResult_property_normal_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitResult_property_normal_set", 2);
}

// END
