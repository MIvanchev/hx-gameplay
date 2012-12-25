package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Vector2 : public GameplayObject
class Vector2 extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, set_x):Float;
    public var y(get_y, set_y):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Vector2();
    public static function make():Vector2
    {
        return new Vector2(constructNativeObject());
    }

    // DECL: Vector2(const Vector2& copy);
    public static function make_V2(copy:Vector2):Vector2
    {
        return new Vector2(constructNativeObject_V2(copy));
    }

    // DECL: Vector2(const Vector2& p1, const Vector2& p2);
    public static function make_V2X2(p1:Vector2, p2:Vector2):Vector2
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
    public static function add_V2X3(v1:Vector2, v2:Vector2, dst:Vector2):Void
    {
        hx_Vector2_static_add(v1.native(), v2.native(), dst.native());
    }

    // DECL: void add(const Vector2& v);
    public function add_V2(v:Vector2):Void
    {
        hx_Vector2_add(nativeObject, v.native());
    }

    // DECL: static float angle(const Vector2& v1, const Vector2& v2);
    public static function angle(v1:Vector2, v2:Vector2):Float
    {
        return hx_Vector2_static_angle(v1.native(), v2.native());
    }

    // DECL: static void clamp(const Vector2& v, const Vector2& min, const Vector2& max, Vector2* dst);
    public static function clamp_V2X4(v:Vector2, min:Vector2, max:Vector2, dst:Vector2):Void
    {
        hx_Vector2_static_clamp(v.native(), min.native(), max.native(), dst.native());
    }

    // DECL: void clamp(const Vector2& min, const Vector2& max);
    public function clamp_V2X2(min:Vector2, max:Vector2):Void
    {
        hx_Vector2_clamp(nativeObject, min.native(), max.native());
    }

    // DECL: float distance(const Vector2& v) const;
    public function distance(v:Vector2):Float
    {
        return hx_Vector2_distance(nativeObject, v.native());
    }

    // DECL: float distanceSquared(const Vector2& v) const;
    public function distanceSquared(v:Vector2):Float
    {
        return hx_Vector2_distanceSquared(nativeObject, v.native());
    }

    // DECL: float dot(const Vector2& v) const;
    public function dot_V2(v:Vector2):Float
    {
        return hx_Vector2_dot(nativeObject, v.native());
    }

    // DECL: static float dot(const Vector2& v1, const Vector2& v2);
    public static function dot_V2X2(v1:Vector2, v2:Vector2):Float
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
        return Vector2.wrap(hx_Vector2_normalize(nativeObject));
    }

    // DECL: void normalize(Vector2* dst);
    public function normalize_V2(dst:Vector2):Void
    {
        hx_Vector2_normalize_V2(nativeObject, dst.native());
    }

    // DECL: static const Vector2& one();
    public static function one():Vector2
    {
        return Vector2.wrap(hx_Vector2_static_one());
    }

    // DECL: void rotate(const Vector2& point, float angle);
    public function rotate(point:Vector2, angle:Float):Void
    {
        hx_Vector2_rotate(nativeObject, point.native(), angle);
    }

    // DECL: void scale(const Vector2& scale);
    public function scale_V2(scale:Vector2):Void
    {
        hx_Vector2_scale_V2(nativeObject, scale.native());
    }

    // DECL: void scale(float scalar);
    public function scale_Flt(scalar:Float):Void
    {
        hx_Vector2_scale_Flt(nativeObject, scalar);
    }

    // DECL: void set(const Vector2& p1, const Vector2& p2);
    public function set_V2X2(p1:Vector2, p2:Vector2):Void
    {
        hx_Vector2_set_V2X2(nativeObject, p1.native(), p2.native());
    }

    // DECL: void set(const Vector2& v);
    public function set_V2(v:Vector2):Void
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
    public function smooth(target:Vector2, elapsedTime:Float, responseTime:Float):Void
    {
        hx_Vector2_smooth(nativeObject, target.native(), elapsedTime, responseTime);
    }

    // DECL: static void subtract(const Vector2& v1, const Vector2& v2, Vector2* dst);
    public static function subtract_V2X3(v1:Vector2, v2:Vector2, dst:Vector2):Void
    {
        hx_Vector2_static_subtract(v1.native(), v2.native(), dst.native());
    }

    // DECL: void subtract(const Vector2& v);
    public function subtract_V2(v:Vector2):Void
    {
        hx_Vector2_subtract(nativeObject, v.native());
    }

    // DECL: static const Vector2& unitX();
    public static function unitX():Vector2
    {
        return Vector2.wrap(hx_Vector2_static_unitX());
    }

    // DECL: static const Vector2& unitY();
    public static function unitY():Vector2
    {
        return Vector2.wrap(hx_Vector2_static_unitY());
    }

    // DECL: static const Vector2& zero();
    public static function zero():Vector2
    {
        return Vector2.wrap(hx_Vector2_static_zero());
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
    static function constructNativeObject_V2(copy:Vector2):Dynamic
    {
        return hx_Vector2_Construct_V2(copy.native());
    }

    // DECL: Vector2(const Vector2& p1, const Vector2& p2);
    static function constructNativeObject_V2X2(p1:Vector2, p2:Vector2):Dynamic
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

    static var hx_Vector2_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_Construct", 0);
    static var hx_Vector2_Construct_V2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_Construct_V2", 1);
    static var hx_Vector2_Construct_V2X2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_Construct_V2X2", 2);
    static var hx_Vector2_Construct_ArrFlt:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_Construct_ArrFlt", 1);
    static var hx_Vector2_Construct_FltX2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_Construct_FltX2", 2);
    static var hx_Vector2_static_add:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_add", 3);
    static var hx_Vector2_add:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_add", 2);
    static var hx_Vector2_static_angle:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_angle", 2);
    static var hx_Vector2_static_clamp:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_clamp", 4);
    static var hx_Vector2_clamp:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_clamp", 3);
    static var hx_Vector2_distance:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_distance", 2);
    static var hx_Vector2_distanceSquared:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_distanceSquared", 2);
    static var hx_Vector2_dot:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_dot", 2);
    static var hx_Vector2_static_dot:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_dot", 2);
    static var hx_Vector2_isOne:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_isOne", 1);
    static var hx_Vector2_isZero:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_isZero", 1);
    static var hx_Vector2_length:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_length", 1);
    static var hx_Vector2_lengthSquared:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_lengthSquared", 1);
    static var hx_Vector2_negate:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_negate", 1);
    static var hx_Vector2_normalize:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_normalize", 1);
    static var hx_Vector2_normalize_V2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_normalize_V2", 2);
    static var hx_Vector2_static_one:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_one", 0);
    static var hx_Vector2_rotate:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_rotate", 3);
    static var hx_Vector2_scale_V2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_scale_V2", 2);
    static var hx_Vector2_scale_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_scale_Flt", 2);
    static var hx_Vector2_set_V2X2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_set_V2X2", 3);
    static var hx_Vector2_set_V2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_set_V2", 2);
    static var hx_Vector2_set_ArrFlt:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_set_ArrFlt", 2);
    static var hx_Vector2_set_FltX2:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_set_FltX2", 3);
    static var hx_Vector2_smooth:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_smooth", 4);
    static var hx_Vector2_static_subtract:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_subtract", 3);
    static var hx_Vector2_subtract:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_subtract", 2);
    static var hx_Vector2_static_unitX:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_unitX", 0);
    static var hx_Vector2_static_unitY:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_unitY", 0);
    static var hx_Vector2_static_zero:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_static_zero", 0);
    static var hx_Vector2_property_x_get:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_property_x_get", 1);
    static var hx_Vector2_property_x_set:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_property_x_set", 2);
    static var hx_Vector2_property_y_get:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_property_y_get", 1);
    static var hx_Vector2_property_y_set:Dynamic = cpp.Lib.load("gameplay", "hx_Vector2_property_y_set", 2);
}

// END
