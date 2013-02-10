package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

class Vector3 extends GameplayObject implements IVector3
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, set_x):Float;
    public var y(get_y, set_y):Float;
    public var z(get_z, set_z):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _one:Vector3;
    static var _unitX:Vector3;
    static var _unitY:Vector3;
    static var _unitZ:Vector3;
    static var _zero:Vector3;

    // DECL: Vector3();
    public static function make():Vector3
    {
        return new Vector3(constructNativeObject());
    }

    // DECL: Vector3(const Vector3& copy);
    public static function make_V3(copy:IVector3):Vector3
    {
        return new Vector3(constructNativeObject_V3(copy));
    }

    // DECL: Vector3(const Vector3& p1, const Vector3& p2);
    public static function make_V3X2(p1:IVector3, p2:IVector3):Vector3
    {
        return new Vector3(constructNativeObject_V3X2(p1, p2));
    }

    // DECL: Vector3(const float* array);
    public static function make_ArrFlt(array:Array<Float>):Vector3
    {
        return new Vector3(constructNativeObject_ArrFlt(array));
    }

    // DECL: Vector3(float x, float y, float z);
    public static function make_FltX3(x:Float, y:Float, z:Float):Vector3
    {
        return new Vector3(constructNativeObject_FltX3(x, y, z));
    }

    // DECL: static void add(const Vector3& v1, const Vector3& v2, Vector3* dst);
    public static function add_V3X3(v1:IVector3, v2:IVector3, dst:Vector3):Void
    {
        hx_Vector3_static_add(v1.native(), v2.native(), dst.native());
    }

    // DECL: void add(const Vector3& v);
    public function add_V3(v:IVector3):Void
    {
        hx_Vector3_add(nativeObject, v.native());
    }

    // DECL: static float angle(const Vector3& v1, const Vector3& v2);
    public static function angle(v1:IVector3, v2:IVector3):Float
    {
        return hx_Vector3_static_angle(v1.native(), v2.native());
    }

    // DECL: static void clamp(const Vector3& v, const Vector3& min, const Vector3& max, Vector3* dst);
    public static function clamp_V3X4(v:IVector3, min:IVector3, max:IVector3, dst:Vector3):Void
    {
        hx_Vector3_static_clamp(v.native(), min.native(), max.native(), dst.native());
    }

    // DECL: void clamp(const Vector3& min, const Vector3& max);
    public function clamp_V3X2(min:IVector3, max:IVector3):Void
    {
        hx_Vector3_clamp(nativeObject, min.native(), max.native());
    }

    // DECL: static void cross(const Vector3& v1, const Vector3& v2, Vector3* dst);
    public static function cross_V3X3(v1:IVector3, v2:IVector3, dst:Vector3):Void
    {
        hx_Vector3_static_cross(v1.native(), v2.native(), dst.native());
    }

    // DECL: void cross(const Vector3& v);
    public function cross_V3(v:IVector3):Void
    {
        hx_Vector3_cross(nativeObject, v.native());
    }

    // DECL: float distance(const Vector3& v) const;
    public function distance(v:IVector3):Float
    {
        return hx_Vector3_distance(nativeObject, v.native());
    }

    // DECL: float distanceSquared(const Vector3& v) const;
    public function distanceSquared(v:IVector3):Float
    {
        return hx_Vector3_distanceSquared(nativeObject, v.native());
    }

    // DECL: float dot(const Vector3& v) const;
    public function dot_V3(v:IVector3):Float
    {
        return hx_Vector3_dot(nativeObject, v.native());
    }

    // DECL: static float dot(const Vector3& v1, const Vector3& v2);
    public static function dot_V3X2(v1:IVector3, v2:IVector3):Float
    {
        return hx_Vector3_static_dot(v1.native(), v2.native());
    }

    // DECL: static Vector3 fromColor(unsigned int color);
    public static function fromColor(color:Int):Vector3
    {
        return Vector3.wrap(hx_Vector3_static_fromColor(color));
    }

    // DECL: bool isOne() const;
    public function isOne():Bool
    {
        return hx_Vector3_isOne(nativeObject);
    }

    // DECL: bool isZero() const;
    public function isZero():Bool
    {
        return hx_Vector3_isZero(nativeObject);
    }

    // DECL: float length() const;
    public function length():Float
    {
        return hx_Vector3_length(nativeObject);
    }

    // DECL: float lengthSquared() const;
    public function lengthSquared():Float
    {
        return hx_Vector3_lengthSquared(nativeObject);
    }

    // DECL: void negate();
    public function negate():Void
    {
        hx_Vector3_negate(nativeObject);
    }

    // DECL: Vector3& normalize();
    public function normalize():Vector3
    {
        hx_Vector3_normalize(nativeObject);
        return this;
    }

    // DECL: void normalize(Vector3* dst) const;
    public function normalize_V3(dst:Vector3):Void
    {
        hx_Vector3_normalize_V3(nativeObject, dst.native());
    }

    // DECL: static const Vector3& one();
    public static function one():IVector3
    {
        return Macros.impersonateResult(_one, hx_Vector3_static_one());
    }

    // DECL: void scale(float scalar);
    public function scale(scalar:Float):Void
    {
        hx_Vector3_scale(nativeObject, scalar);
    }

    // DECL: void set(const Vector3& p1, const Vector3& p2);
    public function set_V3X2(p1:IVector3, p2:IVector3):Void
    {
        hx_Vector3_set_V3X2(nativeObject, p1.native(), p2.native());
    }

    // DECL: void set(const Vector3& v);
    public function set_V3(v:IVector3):Void
    {
        hx_Vector3_set_V3(nativeObject, v.native());
    }

    // DECL: void set(const float* array);
    public function set_ArrFlt(array:Array<Float>):Void
    {
        hx_Vector3_set_ArrFlt(nativeObject, array);
    }

    // DECL: void set(float x, float y, float z);
    public function set_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_Vector3_set_FltX3(nativeObject, x, y, z);
    }

    // DECL: void smooth(const Vector3& target, float elapsedTime, float responseTime);
    public function smooth(target:IVector3, elapsedTime:Float, responseTime:Float):Void
    {
        hx_Vector3_smooth(nativeObject, target.native(), elapsedTime, responseTime);
    }

    // DECL: static void subtract(const Vector3& v1, const Vector3& v2, Vector3* dst);
    public static function subtract_V3X3(v1:IVector3, v2:IVector3, dst:Vector3):Void
    {
        hx_Vector3_static_subtract(v1.native(), v2.native(), dst.native());
    }

    // DECL: void subtract(const Vector3& v);
    public function subtract_V3(v:IVector3):Void
    {
        hx_Vector3_subtract(nativeObject, v.native());
    }

    // DECL: static const Vector3& unitX();
    public static function unitX():IVector3
    {
        return Macros.impersonateResult(_unitX, hx_Vector3_static_unitX());
    }

    // DECL: static const Vector3& unitY();
    public static function unitY():IVector3
    {
        return Macros.impersonateResult(_unitY, hx_Vector3_static_unitY());
    }

    // DECL: static const Vector3& unitZ();
    public static function unitZ():IVector3
    {
        return Macros.impersonateResult(_unitX, hx_Vector3_static_unitZ());
    }

    // DECL: static const Vector3& zero();
    public static function zero():IVector3
    {
        return Macros.impersonateResult(_zero, hx_Vector3_static_zero());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    static function constructNativeObject():Dynamic
    {
        return hx_Vector3_Construct();
    }

    static function constructNativeObject_V3(copy:IVector3):Dynamic
    {
        return hx_Vector3_Construct_V3(copy.native());
    }

    static function constructNativeObject_V3X2(p1:IVector3, p2:IVector3):Dynamic
    {
        return hx_Vector3_Construct_V3X2(p1.native(), p2.native());
    }

    static function constructNativeObject_ArrFlt(array:Array<Float>):Dynamic
    {
        return hx_Vector3_Construct_ArrFlt(array);
    }

    static function constructNativeObject_FltX3(x:Float, y:Float, z:Float):Dynamic
    {
        return hx_Vector3_Construct_FltX3(x, y, z);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_x():Float
    {
        return hx_Vector3_property_x_get(nativeObject);
    }

    function set_x(value:Float):Float
    {
        return hx_Vector3_property_x_set(nativeObject, value);
    }

    function get_y():Float
    {
        return hx_Vector3_property_y_get(nativeObject);
    }

    function set_y(value:Float):Float
    {
        return hx_Vector3_property_y_set(nativeObject, value);
    }

    function get_z():Float
    {
        return hx_Vector3_property_z_get(nativeObject);
    }

    function set_z(value:Float):Float
    {
        return hx_Vector3_property_z_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Vector3_Construct = NativeInterface.loadMember(Vector3, "Construct", 0);
    static var hx_Vector3_Construct_V3 = NativeInterface.loadMember(Vector3, "Construct_V3", 1);
    static var hx_Vector3_Construct_V3X2 = NativeInterface.loadMember(Vector3, "Construct_V3X2", 2);
    static var hx_Vector3_Construct_ArrFlt = NativeInterface.loadMember(Vector3, "Construct_ArrFlt", 1);
    static var hx_Vector3_Construct_FltX3 = NativeInterface.loadMember(Vector3, "Construct_FltX3", 3);
    static var hx_Vector3_static_add = NativeInterface.loadMember(Vector3, "static_add", 3);
    static var hx_Vector3_add = NativeInterface.loadMember(Vector3, "add", 2);
    static var hx_Vector3_static_angle = NativeInterface.loadMember(Vector3, "static_angle", 2);
    static var hx_Vector3_static_clamp = NativeInterface.loadMember(Vector3, "static_clamp", 4);
    static var hx_Vector3_clamp = NativeInterface.loadMember(Vector3, "clamp", 3);
    static var hx_Vector3_static_cross = NativeInterface.loadMember(Vector3, "static_cross", 3);
    static var hx_Vector3_cross = NativeInterface.loadMember(Vector3, "cross", 2);
    static var hx_Vector3_distance = NativeInterface.loadMember(Vector3, "distance", 2);
    static var hx_Vector3_distanceSquared = NativeInterface.loadMember(Vector3, "distanceSquared", 2);
    static var hx_Vector3_dot = NativeInterface.loadMember(Vector3, "dot", 2);
    static var hx_Vector3_static_dot = NativeInterface.loadMember(Vector3, "static_dot", 2);
    static var hx_Vector3_static_fromColor = NativeInterface.loadMember(Vector3, "static_fromColor", 1);
    static var hx_Vector3_isOne = NativeInterface.loadMember(Vector3, "isOne", 1);
    static var hx_Vector3_isZero = NativeInterface.loadMember(Vector3, "isZero", 1);
    static var hx_Vector3_length = NativeInterface.loadMember(Vector3, "length", 1);
    static var hx_Vector3_lengthSquared = NativeInterface.loadMember(Vector3, "lengthSquared", 1);
    static var hx_Vector3_negate = NativeInterface.loadMember(Vector3, "negate", 1);
    static var hx_Vector3_normalize = NativeInterface.loadMember(Vector3, "normalize", 1);
    static var hx_Vector3_normalize_V3 = NativeInterface.loadMember(Vector3, "normalize_V3", 2);
    static var hx_Vector3_static_one = NativeInterface.loadMember(Vector3, "static_one", 0);
    static var hx_Vector3_scale = NativeInterface.loadMember(Vector3, "scale", 2);
    static var hx_Vector3_set_V3X2 = NativeInterface.loadMember(Vector3, "set_V3X2", 3);
    static var hx_Vector3_set_V3 = NativeInterface.loadMember(Vector3, "set_V3", 2);
    static var hx_Vector3_set_ArrFlt = NativeInterface.loadMember(Vector3, "set_ArrFlt", 2);
    static var hx_Vector3_set_FltX3 = NativeInterface.loadMember(Vector3, "set_FltX3", 4);
    static var hx_Vector3_smooth = NativeInterface.loadMember(Vector3, "smooth", 4);
    static var hx_Vector3_static_subtract = NativeInterface.loadMember(Vector3, "static_subtract", 3);
    static var hx_Vector3_subtract = NativeInterface.loadMember(Vector3, "subtract", 2);
    static var hx_Vector3_static_unitX = NativeInterface.loadMember(Vector3, "static_unitX", 0);
    static var hx_Vector3_static_unitY = NativeInterface.loadMember(Vector3, "static_unitY", 0);
    static var hx_Vector3_static_unitZ = NativeInterface.loadMember(Vector3, "static_unitZ", 0);
    static var hx_Vector3_static_zero = NativeInterface.loadMember(Vector3, "static_zero", 0);
    static var hx_Vector3_property_x_get = NativeInterface.loadMember(Vector3, "property_x_get", 1);
    static var hx_Vector3_property_x_set = NativeInterface.loadMember(Vector3, "property_x_set", 2);
    static var hx_Vector3_property_y_get = NativeInterface.loadMember(Vector3, "property_y_get", 1);
    static var hx_Vector3_property_y_set = NativeInterface.loadMember(Vector3, "property_y_set", 2);
    static var hx_Vector3_property_z_get = NativeInterface.loadMember(Vector3, "property_z_get", 1);
    static var hx_Vector3_property_z_set = NativeInterface.loadMember(Vector3, "property_z_set", 2);
}

// END
