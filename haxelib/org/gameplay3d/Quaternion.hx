package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Quaternion
class Quaternion extends GameplayObject implements IQuaternion
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

    static var _identity:Quaternion;
    static var _zero:Quaternion;

    // DECL: Quaternion();
    public static function make():Quaternion
    {
        return new Quaternion(constructNativeObject());
    }

    // DECL: Quaternion(const Matrix& m);
    public static function make_Mat(m:IMatrix):Quaternion
    {
        return new Quaternion(constructNativeObject_Mat(m));
    }

    // DECL: Quaternion(const Quaternion& copy);
    public static function make_Qtrn(copy:IQuaternion):Quaternion
    {
        return new Quaternion(constructNativeObject_Qtrn(copy));
    }

    // DECL: Quaternion(const Vector3& axis, float angle);
    public static function make_V3_Flt(axis:IVector3, angle:Float):Quaternion
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
    public static function createFromAxisAngle(axis:IVector3, angle:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_createFromAxisAngle(axis.native(), angle, dst.native());
    }

    // DECL: static void createFromRotationMatrix(const Matrix& m, Quaternion* dst);
    public static function createFromRotationMatrix(m:IMatrix, dst:Quaternion):Void
    {
        hx_Quaternion_static_createFromRotationMatrix(m.native(), dst.native());
    }

    // DECL: static const Quaternion& identity();
    public static function identity():IQuaternion
    {
        return Macros.impersonateResult(_identity, hx_Quaternion_static_identity());
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
    public static function lerp(q1:IQuaternion, q2:IQuaternion, t:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_lerp(q1.native(), q2.native(), t, dst.native());
    }

    // DECL: static void multiply(const Quaternion& q1, const Quaternion& q2, Quaternion* dst);
    public static function multiply_QtrnX3(q1:IQuaternion, q2:IQuaternion, dst:Quaternion):Void
    {
        hx_Quaternion_static_multiply(q1.native(), q2.native(), dst.native());
    }

    // DECL: void multiply(const Quaternion& q);
    public function multiply_Qtrn(q:IQuaternion):Void
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
    public function set_Mat(m:IMatrix):Void
    {
        hx_Quaternion_set_Mat(nativeObject, m.native());
    }

    // DECL: void set(const Quaternion& q);
    public function set_Qtrn(q:IQuaternion):Void
    {
        hx_Quaternion_set_Qtrn(nativeObject, q.native());
    }

    // DECL: void set(const Vector3& axis, float angle);
    public function set_V3_Flt(axis:IVector3, angle:Float):Void
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
    public static function slerp(q1:IQuaternion, q2:IQuaternion, t:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_slerp(q1.native(), q2.native(), t, dst.native());
    }

    // DECL: static void squad(const Quaternion& q1, const Quaternion& q2, const Quaternion& s1, const Quaternion& s2, float t, Quaternion* dst);
    public static function squad(q1:IQuaternion, q2:IQuaternion, s1:IQuaternion, s2:IQuaternion, t:Float, dst:Quaternion):Void
    {
        hx_Quaternion_static_squad(q1.native(), q2.native(), s1.native(), s2.native(), t, dst.native());
    }

    // DECL: float toAxisAngle(Vector3* e) const;
    public function toAxisAngle(e:Vector3):Float
    {
        return hx_Quaternion_toAxisAngle(nativeObject, e.native());
    }

    // DECL: static const Quaternion& zero();
    public static function zero():IQuaternion
    {
        return Macros.impersonateResult(_zero, hx_Quaternion_static_zero());
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
    static function constructNativeObject_Mat(m:IMatrix):Dynamic
    {
        return hx_Quaternion_Construct_Mat(m.native());
    }

    // DECL: Quaternion(const Quaternion& copy);
    static function constructNativeObject_Qtrn(copy:IQuaternion):Dynamic
    {
        return hx_Quaternion_Construct_Qtrn(copy.native());
    }

    // DECL: Quaternion(const Vector3& axis, float angle);
    static function constructNativeObject_V3_Flt(axis:IVector3, angle:Float):Dynamic
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

    static var hx_Quaternion_Construct = NativeInterface.loadMember(Quaternion, "Construct", 0);
    static var hx_Quaternion_Construct_Mat = NativeInterface.loadMember(Quaternion, "Construct_Mat", 1);
    static var hx_Quaternion_Construct_Qtrn = NativeInterface.loadMember(Quaternion, "Construct_Qtrn", 1);
    static var hx_Quaternion_Construct_V3_Flt = NativeInterface.loadMember(Quaternion, "Construct_V3_Flt", 2);
    static var hx_Quaternion_Construct_FltX4 = NativeInterface.loadMember(Quaternion, "Construct_FltX4", 4);
    static var hx_Quaternion_Construct_ArrFlt = NativeInterface.loadMember(Quaternion, "Construct_ArrFlt", 1);
    static var hx_Quaternion_conjugate = NativeInterface.loadMember(Quaternion, "conjugate", 1);
    static var hx_Quaternion_conjugate_Qtrn = NativeInterface.loadMember(Quaternion, "conjugate_Qtrn", 2);
    static var hx_Quaternion_static_createFromAxisAngle = NativeInterface.loadMember(Quaternion, "static_createFromAxisAngle", 3);
    static var hx_Quaternion_static_createFromRotationMatrix = NativeInterface.loadMember(Quaternion, "static_createFromRotationMatrix", 2);
    static var hx_Quaternion_static_identity = NativeInterface.loadMember(Quaternion, "static_identity", 0);
    static var hx_Quaternion_inverse = NativeInterface.loadMember(Quaternion, "inverse", 1);
    static var hx_Quaternion_inverse_Qtrn = NativeInterface.loadMember(Quaternion, "inverse_Qtrn", 2);
    static var hx_Quaternion_isIdentity = NativeInterface.loadMember(Quaternion, "isIdentity", 1);
    static var hx_Quaternion_isZero = NativeInterface.loadMember(Quaternion, "isZero", 1);
    static var hx_Quaternion_static_lerp = NativeInterface.loadMember(Quaternion, "static_lerp", 4);
    static var hx_Quaternion_static_multiply = NativeInterface.loadMember(Quaternion, "static_multiply", 3);
    static var hx_Quaternion_multiply = NativeInterface.loadMember(Quaternion, "multiply", 2);
    static var hx_Quaternion_normalize = NativeInterface.loadMember(Quaternion, "normalize", 1);
    static var hx_Quaternion_normalize_Qtrn = NativeInterface.loadMember(Quaternion, "normalize_Qtrn", 2);
    static var hx_Quaternion_set_Mat = NativeInterface.loadMember(Quaternion, "set_Mat", 2);
    static var hx_Quaternion_set_Qtrn = NativeInterface.loadMember(Quaternion, "set_Qtrn", 2);
    static var hx_Quaternion_set_V3_Flt = NativeInterface.loadMember(Quaternion, "set_V3_Flt", 3);
    static var hx_Quaternion_set_FltX4 = NativeInterface.loadMember(Quaternion, "set_FltX4", 5);
    static var hx_Quaternion_set_ArrFlt = NativeInterface.loadMember(Quaternion, "set_ArrFlt", 2);
    static var hx_Quaternion_setIdentity = NativeInterface.loadMember(Quaternion, "setIdentity", 1);
    static var hx_Quaternion_static_slerp = NativeInterface.loadMember(Quaternion, "static_slerp", 4);
    static var hx_Quaternion_static_squad = NativeInterface.loadMember(Quaternion, "static_squad", -1);
    static var hx_Quaternion_toAxisAngle = NativeInterface.loadMember(Quaternion, "toAxisAngle", 2);
    static var hx_Quaternion_static_zero = NativeInterface.loadMember(Quaternion, "static_zero", 0);
    static var hx_Quaternion_property_w_get = NativeInterface.loadMember(Quaternion, "property_w_get", 1);
    static var hx_Quaternion_property_w_set = NativeInterface.loadMember(Quaternion, "property_w_set", 2);
    static var hx_Quaternion_property_x_get = NativeInterface.loadMember(Quaternion, "property_x_get", 1);
    static var hx_Quaternion_property_x_set = NativeInterface.loadMember(Quaternion, "property_x_set", 2);
    static var hx_Quaternion_property_y_get = NativeInterface.loadMember(Quaternion, "property_y_get", 1);
    static var hx_Quaternion_property_y_set = NativeInterface.loadMember(Quaternion, "property_y_set", 2);
    static var hx_Quaternion_property_z_get = NativeInterface.loadMember(Quaternion, "property_z_get", 1);
    static var hx_Quaternion_property_z_set = NativeInterface.loadMember(Quaternion, "property_z_set", 2);
}

// END
