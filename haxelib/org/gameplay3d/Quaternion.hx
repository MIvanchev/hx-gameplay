package org.gameplay3d;

import org.gameplay3d.immutable.IQuaternion;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Quaternion
class Quaternion extends GameplayObject, implements IQuaternion
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, set_x):Float;
    public var y(get_y, set_y):Float;
    public var z(get_z, set_z):Float;
    public var w(get_w, set_w):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Quaternion();
    public static function make():Quaternion
    {
        return new Quaternion(constructNativeObject());
    }

    // DECL: Quaternion(const Matrix& m);
    public static function make_Mat(m:Matrix):Quaternion
    {
        return new Quaternion(constructNativeObject_Mat(m));
    }

    // DECL: Quaternion(const Quaternion& copy);
    public static function make_Qtrn(copy:Quaternion):Quaternion
    {
        return new Quaternion(constructNativeObject_Qtrn(copy));
    }

    // DECL: Quaternion(const Vector3& axis, float angle);
    public static function make_V3_Flt(axis:Vector3, angle:Float):Quaternion
    {
        return new Quaternion(constructNativeObject_V3_Flt(axis, angle));
    }

    // DECL: Quaternion(float x, float y, float z, float w);
    public static function make_FltX4(x:Float, y:Float, z:Float, w:Float):Quaternion
    {
        return new Quaternion(constructNativeObject_FltX4(x, y, z, w));
    }

    // DECL: Quaternion(float* array);
    public static function make_ArrFlt(array:Array<Float>):Quaternion
    {
        return new Quaternion(constructNativeObject_ArrFlt(array));
    }

    // DECL: void conjugate();
    public function conjugate():Void
    {
        hx_Quaternion_conjugate(nativeObject);
    }

    // DECL: void conjugate(Quaternion* dst) const;
    public function conjugate_Qtrn(dst:Quaternion):Void
    {
        hx_Quaternion_conjugate_Qtrn(nativeObject, dst.native());
    }

    // DECL: static void createFromAxisAngle(const Vector3& axis, float angle, Quaternion* dst);
    public static function createFromAxisAngle(axis:Vector3, angle:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_createFromAxisAngle(axis.native(), angle, dst.native());
    }

    // DECL: static void createFromRotationMatrix(const Matrix& m, Quaternion* dst);
    public static function createFromRotationMatrix(m:Matrix, dst:Quaternion):Void
    {
        hx_Quaternion_static_createFromRotationMatrix(m.native(), dst.native());
    }

    // DECL: static const Quaternion& identity();
    public static function identity():Quaternion
    {
        return Quaternion.wrap(hx_Quaternion_static_identity());
    }

    // DECL: bool inverse();
    public function inverse():Bool
    {
        return hx_Quaternion_inverse(nativeObject);
    }

    // DECL: bool inverse(Quaternion* dst) const;
    public function inverse_Qtrn(dst:Quaternion):Bool
    {
        return hx_Quaternion_inverse_Qtrn(nativeObject, dst.native());
    }

    // DECL: bool isIdentity() const;
    public function isIdentity():Bool
    {
        return hx_Quaternion_isIdentity(nativeObject);
    }

    // DECL: bool isZero() const;
    public function isZero():Bool
    {
        return hx_Quaternion_isZero(nativeObject);
    }

    // DECL: static void lerp(const Quaternion& q1, const Quaternion& q2, float t, Quaternion* dst);
    public static function lerp(q1:Quaternion, q2:Quaternion, t:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_lerp(q1.native(), q2.native(), t, dst.native());
    }

    // DECL: static void multiply(const Quaternion& q1, const Quaternion& q2, Quaternion* dst);
    public static function multiply_QtrnX3(q1:Quaternion, q2:Quaternion, dst:Quaternion):Void
    {
        hx_Quaternion_static_multiply(q1.native(), q2.native(), dst.native());
    }

    // DECL: void multiply(const Quaternion& q);
    public function multiply_Qtrn(q:Quaternion):Void
    {
        hx_Quaternion_multiply(nativeObject, q.native());
    }

    // DECL: void normalize();
    public function normalize():Void
    {
        hx_Quaternion_normalize(nativeObject);
    }

    // DECL: void normalize(Quaternion* dst) const;
    public function normalize_Qtrn(dst:Quaternion):Void
    {
        hx_Quaternion_normalize_Qtrn(nativeObject, dst.native());
    }

    // DECL: void set(const Matrix& m);
    public function set_Mat(m:Matrix):Void
    {
        hx_Quaternion_set_Mat(nativeObject, m.native());
    }

    // DECL: void set(const Quaternion& q);
    public function set_Qtrn(q:Quaternion):Void
    {
        hx_Quaternion_set_Qtrn(nativeObject, q.native());
    }

    // DECL: void set(const Vector3& axis, float angle);
    public function set_V3_Flt(axis:Vector3, angle:Float):Void
    {
        hx_Quaternion_set_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void set(float x, float y, float z, float w);
    public function set_FltX4(x:Float, y:Float, z:Float, w:Float):Void
    {
        hx_Quaternion_set_FltX4(nativeObject, x, y, z, w);
    }

    // DECL: void set(float* array);
    public function set_ArrFlt(array:Array<Float>):Void
    {
        hx_Quaternion_set_ArrFlt(nativeObject, array);
    }

    // DECL: void setIdentity();
    public function setIdentity():Void
    {
        hx_Quaternion_setIdentity(nativeObject);
    }

    // DECL: static void slerp(const Quaternion& q1, const Quaternion& q2, float t, Quaternion* dst);
    public static function slerp(q1:Quaternion, q2:Quaternion, t:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_slerp(q1.native(), q2.native(), t, dst.native());
    }

    // DECL: static void squad(const Quaternion& q1, const Quaternion& q2, const Quaternion& s1, const Quaternion& s2, float t, Quaternion* dst);
    public static function squad(q1:Quaternion, q2:Quaternion, s1:Quaternion, s2:Quaternion, t:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_squad(q1.native(), q2.native(), s1.native(), s2.native(), t, dst.native());
    }

    // DECL: float toAxisAngle(Vector3* e) const;
    public function toAxisAngle(e:Vector3):Float
    {
        return hx_Quaternion_toAxisAngle(nativeObject, e.native());
    }

    // DECL: static const Quaternion& zero();
    public static function zero():Quaternion
    {
        return Quaternion.wrap(hx_Quaternion_static_zero());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Quaternion();
    static function constructNativeObject():Dynamic
    {
        return hx_Quaternion_Construct();
    }

    // DECL: Quaternion(const Matrix& m);
    static function constructNativeObject_Mat(m:Matrix):Dynamic
    {
        return hx_Quaternion_Construct_Mat(m.native());
    }

    // DECL: Quaternion(const Quaternion& copy);
    static function constructNativeObject_Qtrn(copy:Quaternion):Dynamic
    {
        return hx_Quaternion_Construct_Qtrn(copy.native());
    }

    // DECL: Quaternion(const Vector3& axis, float angle);
    static function constructNativeObject_V3_Flt(axis:Vector3, angle:Float):Dynamic
    {
        return hx_Quaternion_Construct_V3_Flt(axis.native(), angle);
    }

    // DECL: Quaternion(float x, float y, float z, float w);
    static function constructNativeObject_FltX4(x:Float, y:Float, z:Float, w:Float):Dynamic
    {
        return hx_Quaternion_Construct_FltX4(x, y, z, w);
    }

    // DECL: Quaternion(float* array);
    static function constructNativeObject_ArrFlt(array:Array<Float>):Dynamic
    {
        return hx_Quaternion_Construct_ArrFlt(array);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_x():Float
    {
        return hx_Quaternion_property_x_get(nativeObject);
    }

    function set_x(value:Float):Float
    {
        return hx_Quaternion_property_x_set(nativeObject, value);
    }

    function get_y():Float
    {
        return hx_Quaternion_property_y_get(nativeObject);
    }

    function set_y(value:Float):Float
    {
        return hx_Quaternion_property_y_set(nativeObject, value);
    }

    function get_z():Float
    {
        return hx_Quaternion_property_z_get(nativeObject);
    }

    function set_z(value:Float):Float
    {
        return hx_Quaternion_property_z_set(nativeObject, value);
    }

    function get_w():Float
    {
        return hx_Quaternion_property_w_get(nativeObject);
    }

    function set_w(value:Float):Float
    {
        return hx_Quaternion_property_w_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Quaternion_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_Construct", 0);
    static var hx_Quaternion_Construct_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_Construct_Mat", 1);
    static var hx_Quaternion_Construct_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_Construct_Qtrn", 1);
    static var hx_Quaternion_Construct_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_Construct_V3_Flt", 2);
    static var hx_Quaternion_Construct_FltX4:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_Construct_FltX4", 4);
    static var hx_Quaternion_Construct_ArrFlt:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_Construct_ArrFlt", 1);
    static var hx_Quaternion_conjugate:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_conjugate", 1);
    static var hx_Quaternion_conjugate_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_conjugate_Qtrn", 2);
    static var hx_Quaternion_static_createFromAxisAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_createFromAxisAngle", 3);
    static var hx_Quaternion_static_createFromRotationMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_createFromRotationMatrix", 2);
    static var hx_Quaternion_static_identity:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_identity", 0);
    static var hx_Quaternion_inverse:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_inverse", 1);
    static var hx_Quaternion_inverse_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_inverse_Qtrn", 2);
    static var hx_Quaternion_isIdentity:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_isIdentity", 1);
    static var hx_Quaternion_isZero:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_isZero", 1);
    static var hx_Quaternion_static_lerp:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_lerp", 4);
    static var hx_Quaternion_static_multiply:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_multiply", 3);
    static var hx_Quaternion_multiply:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_multiply", 2);
    static var hx_Quaternion_normalize:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_normalize", 1);
    static var hx_Quaternion_normalize_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_normalize_Qtrn", 2);
    static var hx_Quaternion_set_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_set_Mat", 2);
    static var hx_Quaternion_set_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_set_Qtrn", 2);
    static var hx_Quaternion_set_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_set_V3_Flt", 3);
    static var hx_Quaternion_set_FltX4:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_set_FltX4", 5);
    static var hx_Quaternion_set_ArrFlt:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_set_ArrFlt", 2);
    static var hx_Quaternion_setIdentity:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_setIdentity", 1);
    static var hx_Quaternion_static_slerp:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_slerp", 4);
    static var hx_Quaternion_static_squad:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_squad", -1);
    static var hx_Quaternion_toAxisAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_toAxisAngle", 2);
    static var hx_Quaternion_static_zero:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_static_zero", 0);
    static var hx_Quaternion_property_w_get:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_w_get", 1);
    static var hx_Quaternion_property_w_set:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_w_set", 2);
    static var hx_Quaternion_property_x_get:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_x_get", 1);
    static var hx_Quaternion_property_x_set:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_x_set", 2);
    static var hx_Quaternion_property_y_get:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_y_get", 1);
    static var hx_Quaternion_property_y_set:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_y_set", 2);
    static var hx_Quaternion_property_z_get:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_z_get", 1);
    static var hx_Quaternion_property_z_set:Dynamic = cpp.Lib.load("gameplay", "hx_Quaternion_property_z_set", 2);
}

// END
