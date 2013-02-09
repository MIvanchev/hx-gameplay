package org.gameplay3d;

import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Vector2
class Vector2 extends GameplayObject, implements IVector2
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, set_x):Float;
    public var y(get_y, set_y):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _one:Vector2;
    static var _unitX:Vector2;
    static var _unitY:Vector2;
    static var _zero:Vector2;

    // DECL: Vector2();
    public static function make():Vector2
    {
        return new Vector2(constructNativeObject());
    }

    // DECL: Vector2(const Vector2& copy);
    public static function make_V2(copy:IVector2):Vector2
    {
        return new Vector2(constructNativeObject_V2(copy));
    }

    // DECL: Vector2(const Vector2& p1, const Vector2& p2);
    public static function make_V2X2(p1:IVector2, p2:IVector2):Vector2
    {
        return new Vector2(constructNativeObject_V2X2(p1, p2));
    }

    // DECL: Vector2(const float* array);
    public static function make_ArrFlt(array:Array<Float>):Vector2
    {
        return new Vector2(constructNativeObject_ArrFlt(array));
    }

    // DECL: Vector2(float x, float y);
    public static function make_FltX2(x:Float, y:Float):Vector2
    {
        return new Vector2(constructNativeObject_FltX2(x, y));
    }

    // DECL: static void add(const Vector2& v1, const Vector2& v2, Vector2* dst);
    public static function add_V2X3(v1:IVector2, v2:IVector2, dst:Vector2):Void
    {
        hx_Vector2_static_add(v1.native(), v2.native(), dst.native());
    }

    // DECL: void add(const Vector2& v);
    public function add_V2(v:IVector2):Void
    {
        hx_Vector2_add(nativeObject, v.native());
    }

    // DECL: static float angle(const Vector2& v1, const Vector2& v2);
    public static function angle(v1:IVector2, v2:IVector2):Float
    {
        return hx_Vector2_static_angle(v1.native(), v2.native());
    }

    // DECL: static void clamp(const Vector2& v, const Vector2& min, const Vector2& max, Vector2* dst);
    public static function clamp_V2X4(v:IVector2, min:IVector2, max:IVector2, dst:Vector2):Void
    {
        hx_Vector2_static_clamp(v.native(), min.native(), max.native(), dst.native());
    }

    // DECL: void clamp(const Vector2& min, const Vector2& max);
    public function clamp_V2X2(min:IVector2, max:IVector2):Void
    {
        hx_Vector2_clamp(nativeObject, min.native(), max.native());
    }

    // DECL: float distance(const Vector2& v) const;
    public function distance(v:IVector2):Float
    {
        return hx_Vector2_distance(nativeObject, v.native());
    }

    // DECL: float distanceSquared(const Vector2& v) const;
    public function distanceSquared(v:IVector2):Float
    {
        return hx_Vector2_distanceSquared(nativeObject, v.native());
    }

    // DECL: float dot(const Vector2& v) const;
    public function dot_V2(v:IVector2):Float
    {
        return hx_Vector2_dot(nativeObject, v.native());
    }

    // DECL: static float dot(const Vector2& v1, const Vector2& v2);
    public static function dot_V2X2(v1:IVector2, v2:IVector2):Float
    {
        return hx_Vector2_static_dot(v1.native(), v2.native());
    }

    // DECL: bool isOne() const;
    public function isOne():Bool
    {
        return hx_Vector2_isOne(nativeObject);
    }

    // DECL: bool isZero() const;
    public function isZero():Bool
    {
        return hx_Vector2_isZero(nativeObject);
    }

    // DECL: float length() const;
    public function length():Float
    {
        return hx_Vector2_length(nativeObject);
    }

    // DECL: float lengthSquared() const;
    public function lengthSquared():Float
    {
        return hx_Vector2_lengthSquared(nativeObject);
    }

    // DECL: void negate();
    public function negate():Void
    {
        hx_Vector2_negate(nativeObject);
    }

    // DECL: Vector2& normalize();
    public function normalize():Vector2
    {
        hx_Vector2_normalize(nativeObject);
        return this;
    }

    // DECL: void normalize(Vector2* dst) const;
    public function normalize_V2(dst:Vector2):Void
    {
        hx_Vector2_normalize_V2(nativeObject, dst.native());
    }

    // DECL: static const Vector2& one();
    public static function one():IVector2
    {
        return Macros.impersonateResult(_one, hx_Vector2_static_one());
    }

    // DECL: void rotate(const Vector2& point, float angle);
    public function rotate(point:IVector2, angle:Float):Void
    {
        hx_Vector2_rotate(nativeObject, point.native(), angle);
    }

    // DECL: void scale(const Vector2& scale);
    public function scale_V2(scale:IVector2):Void
    {
        hx_Vector2_scale_V2(nativeObject, scale.native());
    }

    // DECL: void scale(float scalar);
    public function scale_Flt(scalar:Float):Void
    {
        hx_Vector2_scale_Flt(nativeObject, scalar);
    }

    // DECL: void set(const Vector2& p1, const Vector2& p2);
    public function set_V2X2(p1:IVector2, p2:IVector2):Void
    {
        hx_Vector2_set_V2X2(nativeObject, p1.native(), p2.native());
    }

    // DECL: void set(const Vector2& v);
    public function set_V2(v:IVector2):Void
    {
        hx_Vector2_set_V2(nativeObject, v.native());
    }

    // DECL: void set(const float* array);
    public function set_ArrFlt(array:Array<Float>):Void
    {
        hx_Vector2_set_ArrFlt(nativeObject, array);
    }

    // DECL: void set(float x, float y);
    public function set_FltX2(x:Float, y:Float):Void
    {
        hx_Vector2_set_FltX2(nativeObject, x, y);
    }

    // DECL: void smooth(const Vector2& target, float elapsedTime, float responseTime);
    public function smooth(target:IVector2, elapsedTime:Float, responseTime:Float):Void
    {
        hx_Vector2_smooth(nativeObject, target.native(), elapsedTime, responseTime);
    }

    // DECL: static void subtract(const Vector2& v1, const Vector2& v2, Vector2* dst);
    public static function subtract_V2X3(v1:IVector2, v2:IVector2, dst:Vector2):Void
    {
        hx_Vector2_static_subtract(v1.native(), v2.native(), dst.native());
    }

    // DECL: void subtract(const Vector2& v);
    public function subtract_V2(v:IVector2):Void
    {
        hx_Vector2_subtract(nativeObject, v.native());
    }

    // DECL: static const Vector2& unitX();
    public static function unitX():IVector2
    {
        return Macros.impersonateResult(_unitX, hx_Vector2_static_unitX());
    }

    // DECL: static const Vector2& unitY();
    public static function unitY():IVector2
    {
        return Macros.impersonateResult(_unitY, hx_Vector2_static_unitY());
    }

    // DECL: static const Vector2& zero();
    public static function zero():IVector2
    {
        return Macros.impersonateResult(_zero, hx_Vector2_static_zero());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Vector2();
    static function constructNativeObject():Dynamic
    {
        return hx_Vector2_Construct();
    }

    // DECL: Vector2(const Vector2& copy);
    static function constructNativeObject_V2(copy:IVector2):Dynamic
    {
        return hx_Vector2_Construct_V2(copy.native());
    }

    // DECL: Vector2(const Vector2& p1, const Vector2& p2);
    static function constructNativeObject_V2X2(p1:IVector2, p2:IVector2):Dynamic
    {
        return hx_Vector2_Construct_V2X2(p1.native(), p2.native());
    }

    // DECL: Vector2(const float* array);
    static function constructNativeObject_ArrFlt(array:Array<Float>):Dynamic
    {
        return hx_Vector2_Construct_ArrFlt(array);
    }

    // DECL: Vector2(float x, float y);
    static function constructNativeObject_FltX2(x:Float, y:Float):Dynamic
    {
        return hx_Vector2_Construct_FltX2(x, y);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_x():Float
    {
        return hx_Vector2_property_x_get(nativeObject);
    }

    function set_x(value:Float):Float
    {
        return hx_Vector2_property_x_set(nativeObject, value);
    }

    function get_y():Float
    {
        return hx_Vector2_property_y_get(nativeObject);
    }

    function set_y(value:Float):Float
    {
        return hx_Vector2_property_y_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Vector2_Construct = NativeInterface.loadMember(Vector2, "Construct", 0);
    static var hx_Vector2_Construct_V2 = NativeInterface.loadMember(Vector2, "Construct_V2", 1);
    static var hx_Vector2_Construct_V2X2 = NativeInterface.loadMember(Vector2, "Construct_V2X2", 2);
    static var hx_Vector2_Construct_ArrFlt = NativeInterface.loadMember(Vector2, "Construct_ArrFlt", 1);
    static var hx_Vector2_Construct_FltX2 = NativeInterface.loadMember(Vector2, "Construct_FltX2", 2);
    static var hx_Vector2_static_add = NativeInterface.loadMember(Vector2, "static_add", 3);
    static var hx_Vector2_add = NativeInterface.loadMember(Vector2, "add", 2);
    static var hx_Vector2_static_angle = NativeInterface.loadMember(Vector2, "static_angle", 2);
    static var hx_Vector2_static_clamp = NativeInterface.loadMember(Vector2, "static_clamp", 4);
    static var hx_Vector2_clamp = NativeInterface.loadMember(Vector2, "clamp", 3);
    static var hx_Vector2_distance = NativeInterface.loadMember(Vector2, "distance", 2);
    static var hx_Vector2_distanceSquared = NativeInterface.loadMember(Vector2, "distanceSquared", 2);
    static var hx_Vector2_dot = NativeInterface.loadMember(Vector2, "dot", 2);
    static var hx_Vector2_static_dot = NativeInterface.loadMember(Vector2, "static_dot", 2);
    static var hx_Vector2_isOne = NativeInterface.loadMember(Vector2, "isOne", 1);
    static var hx_Vector2_isZero = NativeInterface.loadMember(Vector2, "isZero", 1);
    static var hx_Vector2_length = NativeInterface.loadMember(Vector2, "length", 1);
    static var hx_Vector2_lengthSquared = NativeInterface.loadMember(Vector2, "lengthSquared", 1);
    static var hx_Vector2_negate = NativeInterface.loadMember(Vector2, "negate", 1);
    static var hx_Vector2_normalize = NativeInterface.loadMember(Vector2, "normalize", 1);
    static var hx_Vector2_normalize_V2 = NativeInterface.loadMember(Vector2, "normalize_V2", 2);
    static var hx_Vector2_static_one = NativeInterface.loadMember(Vector2, "static_one", 0);
    static var hx_Vector2_rotate = NativeInterface.loadMember(Vector2, "rotate", 3);
    static var hx_Vector2_scale_V2 = NativeInterface.loadMember(Vector2, "scale_V2", 2);
    static var hx_Vector2_scale_Flt = NativeInterface.loadMember(Vector2, "scale_Flt", 2);
    static var hx_Vector2_set_V2X2 = NativeInterface.loadMember(Vector2, "set_V2X2", 3);
    static var hx_Vector2_set_V2 = NativeInterface.loadMember(Vector2, "set_V2", 2);
    static var hx_Vector2_set_ArrFlt = NativeInterface.loadMember(Vector2, "set_ArrFlt", 2);
    static var hx_Vector2_set_FltX2 = NativeInterface.loadMember(Vector2, "set_FltX2", 3);
    static var hx_Vector2_smooth = NativeInterface.loadMember(Vector2, "smooth", 4);
    static var hx_Vector2_static_subtract = NativeInterface.loadMember(Vector2, "static_subtract", 3);
    static var hx_Vector2_subtract = NativeInterface.loadMember(Vector2, "subtract", 2);
    static var hx_Vector2_static_unitX = NativeInterface.loadMember(Vector2, "static_unitX", 0);
    static var hx_Vector2_static_unitY = NativeInterface.loadMember(Vector2, "static_unitY", 0);
    static var hx_Vector2_static_zero = NativeInterface.loadMember(Vector2, "static_zero", 0);
    static var hx_Vector2_property_x_get = NativeInterface.loadMember(Vector2, "property_x_get", 1);
    static var hx_Vector2_property_x_set = NativeInterface.loadMember(Vector2, "property_x_set", 2);
    static var hx_Vector2_property_y_get = NativeInterface.loadMember(Vector2, "property_y_get", 1);
    static var hx_Vector2_property_y_set = NativeInterface.loadMember(Vector2, "property_y_set", 2);
}

// END
