package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Matrix : public GameplayObject
class Matrix extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var m(get, set):Array<Float>;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Matrix();
    public static function make():Matrix
    {
        return new Matrix(constructNativeObject());
    }

    // DECL: Matrix(const Matrix& copy);
    public static function make_Mat(copy:Matrix):Matrix
    {
        return new Matrix(constructNativeObject_Mat(copy));
    }

    // DECL: Matrix(const float* m);
    public static function make_ArrFlt(m:Array<Float>):Matrix
    {
        return new Matrix(constructNativeObject_ArrFlt(m));
    }

    // DECL: Matrix(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31,
    public static function make_FltX16(m11:Float, m12:Float, m13:Float, m14:Float, m21:Float, m22:Float, m23:Float, m24:Float, m31:Float, m32:Float, m33:Float, m34:Float, m41:Float, m42:Float, m43:Float, m44:Float):Matrix
    {
        return new Matrix(constructNativeObject_FltX16(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44));
    }

    // DECL: static void add(const Matrix& m1, const Matrix& m2, Matrix* dst);
    public static function add_MatX3(m1:Matrix, m2:Matrix, dst:Matrix):Void
    {
        hx_Matrix_static_add(m1.native(), m2.native(), dst.native());
    }

    // DECL: void add(const Matrix& m);
    public function add_Mat(m:Matrix):Void
    {
        hx_Matrix_add_Mat(nativeObject, m.native());
    }

    // DECL: void add(float scalar);
    public function add_Flt(scalar:Float):Void
    {
        hx_Matrix_add_Flt(nativeObject, scalar);
    }

    // DECL: void add(float scalar, Matrix* dst);
    public function add_Flt_Mat(scalar:Float, dst:Matrix):Void
    {
        hx_Matrix_add_Flt_Mat(nativeObject, scalar, dst.native());
    }

    // DECL: static void createLookAt(const Vector3& eyePosition, const Vector3& targetPosition, const Vector3& up, Matrix* dst);
    public static function createLookAt_V3X3_Mat(eyePosition:Vector3, targetPosition:Vector3, up:Vector3, dst:Matrix):Void
    {
        hx_Matrix_static_createLookAt_V3X3_Mat(eyePosition.native(), targetPosition.native(), up.native(), dst.native());
    }

    // DECL: static void createLookAt(float eyePositionX, float eyePositionY, float eyePositionZ, float targetCenterX,
    public static function createLookAt_FltX9_Mat(eyePositionX:Float, eyePositionY:Float, eyePositionZ:Float, targetCenterX:Float, targetCenterY:Float, targetCenterZ:Float, upX:Float, upY:Float, upZ:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createLookAt_FltX9_Mat(eyePositionX, eyePositionY, eyePositionZ, targetCenterX, targetCenterY, targetCenterZ, upX, upY, upZ, dst.native());
    }

    // DECL: static void createOrthographic(float width, float height, float zNearPlane, float zFarPlane, Matrix* dst);
    public static function createOrthographic(width:Float, height:Float, zNearPlane:Float, zFarPlane:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createOrthographic(width, height, zNearPlane, zFarPlane, dst.native());
    }

    // DECL: static void createOrthographicOffCenter(float left, float right, float bottom, float top, float zNearPlane,
    public static function createOrthographicOffCenter(left:Float, right:Float, bottom:Float, top:Float, zNearPlane:Float, zFarPlane:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createOrthographicOffCenter(left, right, bottom, top, zNearPlane, zFarPlane, dst.native());
    }

    // DECL: static void createPerspective(float fieldOfView, float aspectRatio, float zNearPlane, float zFarPlane, Matrix* dst);
    public static function createPerspective(fieldOfView:Float, aspectRatio:Float, zNearPlane:Float, zFarPlane:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createPerspective(fieldOfView, aspectRatio, zNearPlane, zFarPlane, dst.native());
    }

    // DECL: static void createRotation(const Quaternion& quat, Matrix* dst);
    public static function createRotation_Qtrn_Mat(quat:Quaternion, dst:Matrix):Void
    {
        hx_Matrix_static_createRotation_Qtrn_Mat(quat.native(), dst.native());
    }

    // DECL: static void createRotation(const Vector3& axis, float angle, Matrix* dst);
    public static function createRotation_V3_Flt_Mat(axis:Vector3, angle:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createRotation_V3_Flt_Mat(axis.native(), angle, dst.native());
    }

    // DECL: static void createRotationX(float angle, Matrix* dst);
    public static function createRotationX(angle:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createRotationX(angle, dst.native());
    }

    // DECL: static void createRotationY(float angle, Matrix* dst);
    public static function createRotationY(angle:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createRotationY(angle, dst.native());
    }

    // DECL: static void createRotationZ(float angle, Matrix* dst);
    public static function createRotationZ(angle:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createRotationZ(angle, dst.native());
    }

    // DECL: static void createScale(const Vector3& scale, Matrix* dst);
    public static function createScale_V3_Mat(scale:Vector3, dst:Matrix):Void
    {
        hx_Matrix_static_createScale_V3_Mat(scale.native(), dst.native());
    }

    // DECL: static void createScale(float xScale, float yScale, float zScale, Matrix* dst);
    public static function createScale_FltX3_Mat(xScale:Float, yScale:Float, zScale:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createScale_FltX3_Mat(xScale, yScale, zScale, dst.native());
    }

    // DECL: static void createTranslation(const Vector3& translation, Matrix* dst);
    public static function createTranslation_V3_Mat(translation:Vector3, dst:Matrix):Void
    {
        hx_Matrix_static_createTranslation_V3_Mat(translation.native(), dst.native());
    }

    // DECL: static void createTranslation(float xTranslation, float yTranslation, float zTranslation, Matrix* dst);
    public static function createTranslation_FltX3_Mat(xTranslation:Float, yTranslation:Float, zTranslation:Float, dst:Matrix):Void
    {
        hx_Matrix_static_createTranslation_FltX3_Mat(xTranslation, yTranslation, zTranslation, dst.native());
    }

    // DECL: bool decompose(Vector3* scale, Quaternion* rotation, Vector3* translation) const;
    public function decompose(scale:Vector3, rotation:Quaternion, translation:Vector3):Bool
    {
        return hx_Matrix_decompose(nativeObject, scale.native(), rotation.native(), translation.native());
    }

    // DECL: float determinant() const;
    public function determinant():Float
    {
        return hx_Matrix_determinant(nativeObject);
    }

    // DECL: void getBackVector(Vector3* dst) const;
    public function getBackVector(dst:Vector3):Void
    {
        hx_Matrix_getBackVector(nativeObject, dst.native());
    }

    // DECL: void getDownVector(Vector3* dst) const;
    public function getDownVector(dst:Vector3):Void
    {
        hx_Matrix_getDownVector(nativeObject, dst.native());
    }

    // DECL: void getForwardVector(Vector3* dst) const;
    public function getForwardVector(dst:Vector3):Void
    {
        hx_Matrix_getForwardVector(nativeObject, dst.native());
    }

    // DECL: void getLeftVector(Vector3* dst) const;
    public function getLeftVector(dst:Vector3):Void
    {
        hx_Matrix_getLeftVector(nativeObject, dst.native());
    }

    // DECL: void getRightVector(Vector3* dst) const;
    public function getRightVector(dst:Vector3):Void
    {
        hx_Matrix_getRightVector(nativeObject, dst.native());
    }

    // DECL: bool getRotation(Quaternion* rotation) const;
    public function getRotation(rotation:Quaternion):Bool
    {
        return hx_Matrix_getRotation(nativeObject, rotation.native());
    }

    // DECL: void getScale(Vector3* scale) const;
    public function getScale(scale:Vector3):Void
    {
        hx_Matrix_getScale(nativeObject, scale.native());
    }

    // DECL: void getTranslation(Vector3* translation) const;
    public function getTranslation(translation:Vector3):Void
    {
        hx_Matrix_getTranslation(nativeObject, translation.native());
    }

    // DECL: void getUpVector(Vector3* dst) const;
    public function getUpVector(dst:Vector3):Void
    {
        hx_Matrix_getUpVector(nativeObject, dst.native());
    }

    // DECL: static const Matrix& identity();
    public static function identity():Matrix
    {
        return Matrix.wrap(hx_Matrix_static_identity());
    }

    // DECL: bool invert();
    public function invert():Bool
    {
        return hx_Matrix_invert(nativeObject);
    }

    // DECL: bool invert(Matrix* dst) const;
    public function invert_Mat(dst:Matrix):Bool
    {
        return hx_Matrix_invert_Mat(nativeObject, dst.native());
    }

    // DECL: bool isIdentity() const;
    public function isIdentity():Bool
    {
        return hx_Matrix_isIdentity(nativeObject);
    }

    // DECL: static void multiply(const Matrix& m, float scalar, Matrix* dst);
    public static function multiply_Mat_Flt_Mat(m:Matrix, scalar:Float, dst:Matrix):Void
    {
        hx_Matrix_static_multiply_Mat_Flt_Mat(m.native(), scalar, dst.native());
    }

    // DECL: static void multiply(const Matrix& m1, const Matrix& m2, Matrix* dst);
    public static function multiply_MatX3(m1:Matrix, m2:Matrix, dst:Matrix):Void
    {
        hx_Matrix_static_multiply_MatX3(m1.native(), m2.native(), dst.native());
    }

    // DECL: void multiply(const Matrix& m);
    public function multiply_Mat(m:Matrix):Void
    {
        hx_Matrix_multiply_Mat(nativeObject, m.native());
    }

    // DECL: void multiply(float scalar);
    public function multiply_Flt(scalar:Float):Void
    {
        hx_Matrix_multiply_Flt(nativeObject, scalar);
    }

    // DECL: void multiply(float scalar, Matrix* dst) const;
    public function multiply_Flt_Mat(scalar:Float, dst:Matrix):Void
    {
        hx_Matrix_multiply_Flt_Mat(nativeObject, scalar, dst.native());
    }

    // DECL: void negate();
    public function negate():Void
    {
        hx_Matrix_negate(nativeObject);
    }

    // DECL: void negate(Matrix* dst) const;
    public function negate_Mat(dst:Matrix):Void
    {
        hx_Matrix_negate_Mat(nativeObject, dst.native());
    }

    // DECL: void rotate(const Quaternion& q);
    public function rotate_Qtrn(q:Quaternion):Void
    {
        hx_Matrix_rotate_Qtrn(nativeObject, q.native());
    }

    // DECL: void rotate(const Quaternion& q, Matrix* dst) const;
    public function rotate_Qtrn_Mat(q:Quaternion, dst:Matrix):Void
    {
        hx_Matrix_rotate_Qtrn_Mat(nativeObject, q.native(), dst.native());
    }

    // DECL: void rotate(const Vector3& axis, float angle);
    public function rotate_V3_Flt(axis:Vector3, angle:Float):Void
    {
        hx_Matrix_rotate_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void rotate(const Vector3& axis, float angle, Matrix* dst) const;
    public function rotate_V3_Flt_Mat(axis:Vector3, angle:Float, dst:Matrix):Void
    {
        hx_Matrix_rotate_V3_Flt_Mat(nativeObject, axis.native(), angle, dst.native());
    }

    // DECL: void rotateX(float angle);
    public function rotateX_Flt(angle:Float):Void
    {
        hx_Matrix_rotateX_Flt(nativeObject, angle);
    }

    // DECL: void rotateX(float angle, Matrix* dst) const;
    public function rotateX_Flt_Mat(angle:Float, dst:Matrix):Void
    {
        hx_Matrix_rotateX_Flt_Mat(nativeObject, angle, dst.native());
    }

    // DECL: void rotateY(float angle);
    public function rotateY_Flt(angle:Float):Void
    {
        hx_Matrix_rotateY_Flt(nativeObject, angle);
    }

    // DECL: void rotateY(float angle, Matrix* dst) const;
    public function rotateY_Flt_Mat(angle:Float, dst:Matrix):Void
    {
        hx_Matrix_rotateY_Flt_Mat(nativeObject, angle, dst.native());
    }

    // DECL: void rotateZ(float angle);
    public function rotateZ_Flt(angle:Float):Void
    {
        hx_Matrix_rotateZ_Flt(nativeObject, angle);
    }

    // DECL: void rotateZ(float angle, Matrix* dst) const;
    public function rotateZ_Flt_Mat(angle:Float, dst:Matrix):Void
    {
        hx_Matrix_rotateZ_Flt_Mat(nativeObject, angle, dst.native());
    }

    // DECL: void scale(const Vector3& s);
    public function scale_V3(s:Vector3):Void
    {
        hx_Matrix_scale_V3(nativeObject, s.native());
    }

    // DECL: void scale(const Vector3& s, Matrix* dst) const;
    public function scale_V3_Mat(s:Vector3, dst:Matrix):Void
    {
        hx_Matrix_scale_V3_Mat(nativeObject, s.native(), dst.native());
    }

    // DECL: void scale(float value);
    public function scale_Flt(value:Float):Void
    {
        hx_Matrix_scale_Flt(nativeObject, value);
    }

    // DECL: void scale(float value, Matrix* dst) const;
    public function scale_Flt_Mat(value:Float, dst:Matrix):Void
    {
        hx_Matrix_scale_Flt_Mat(nativeObject, value, dst.native());
    }

    // DECL: void scale(float xScale, float yScale, float zScale);
    public function scale_FltX3(xScale:Float, yScale:Float, zScale:Float):Void
    {
        hx_Matrix_scale_FltX3(nativeObject, xScale, yScale, zScale);
    }

    // DECL: void scale(float xScale, float yScale, float zScale, Matrix* dst) const;
    public function scale_FltX3_Mat(xScale:Float, yScale:Float, zScale:Float, dst:Matrix):Void
    {
        hx_Matrix_scale_FltX3_Mat(nativeObject, xScale, yScale, zScale, dst.native());
    }

    // DECL: void set(const Matrix& m);
    public function set_Mat(m:Matrix):Void
    {
        hx_Matrix_set_Mat(nativeObject, m.native());
    }

    // DECL: void set(const float* m);
    public function set_ArrFlt(m:Array<Float>):Void
    {
        hx_Matrix_set_ArrFlt(nativeObject, m);
    }

    // DECL: void set(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31,
    public function set_FltX16(m11:Float, m12:Float, m13:Float, m14:Float, m21:Float, m22:Float, m23:Float, m24:Float, m31:Float, m32:Float, m33:Float, m34:Float, m41:Float, m42:Float, m43:Float, m44:Float):Void
    {
        hx_Matrix_set_FltX16(nativeObject, m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44);
    }

    // DECL: void setIdentity();
    public function setIdentity():Void
    {
        hx_Matrix_setIdentity(nativeObject);
    }

    // DECL: void setZero();
    public function setZero():Void
    {
        hx_Matrix_setZero(nativeObject);
    }

    // DECL: static void subtract(const Matrix& m1, const Matrix& m2, Matrix* dst);
    public static function subtract_MatX3(m1:Matrix, m2:Matrix, dst:Matrix):Void
    {
        hx_Matrix_static_subtract(m1.native(), m2.native(), dst.native());
    }

    // DECL: void subtract(const Matrix& m);
    public function subtract_Mat(m:Matrix):Void
    {
        hx_Matrix_subtract(nativeObject, m.native());
    }

    // DECL: void transformPoint(Vector3* point) const;
    public function transformPoint_V3(point:Vector3):Void
    {
        hx_Matrix_transformPoint_V3(nativeObject, point.native());
    }

    // DECL: void transformPoint(const Vector3& point, Vector3* dst) const;
    public function transformPoint_V3X2(point:Vector3, dst:Vector3):Void
    {
        hx_Matrix_transformPoint_V3X2(nativeObject, point.native(), dst.native());
    }

    // DECL: void transformVector(Vector3* vector) const;
    public function transformVector_V3(vector:Vector3):Void
    {
        hx_Matrix_transformVector_V3(nativeObject, vector.native());
    }

    // DECL: void transformVector(Vector4* vector) const;
    public function transformVector_V4(vector:Vector4):Void
    {
        hx_Matrix_transformVector_V4(nativeObject, vector.native());
    }

    // DECL: void transformVector(const Vector3& vector, Vector3* dst) const;
    public function transformVector_V3X2(vector:Vector3, dst:Vector3):Void
    {
        hx_Matrix_transformVector_V3X2(nativeObject, vector.native(), dst.native());
    }

    // DECL: void transformVector(const Vector4& vector, Vector4* dst) const;
    public function transformVector_V4X2(vector:Vector4, dst:Vector4):Void
    {
        hx_Matrix_transformVector_V4X2(nativeObject, vector.native(), dst.native());
    }

    // DECL: void transformVector(float x, float y, float z, float w, Vector3* dst) const;
    public function transformVector_FltX4_V3(x:Float, y:Float, z:Float, w:Float, dst:Vector3):Void
    {
        hx_Matrix_transformVector_FltX4_V3(nativeObject, x, y, z, w, dst.native());
    }

    // DECL: void translate(const Vector3& t);
    public function translate_V3(t:Vector3):Void
    {
        hx_Matrix_translate_V3(nativeObject, t.native());
    }

    // DECL: void translate(const Vector3& t, Matrix* dst) const;
    public function translate_V3_Mat(t:Vector3, dst:Matrix):Void
    {
        hx_Matrix_translate_V3_Mat(nativeObject, t.native(), dst.native());
    }

    // DECL: void translate(float x, float y, float z);
    public function translate_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_Matrix_translate_FltX3(nativeObject, x, y, z);
    }

    // DECL: void translate(float x, float y, float z, Matrix* dst) const;
    public function translate_FltX3_Mat(x:Float, y:Float, z:Float, dst:Matrix):Void
    {
        hx_Matrix_translate_FltX3_Mat(nativeObject, x, y, z, dst.native());
    }

    // DECL: void transpose();
    public function transpose():Void
    {
        hx_Matrix_transpose(nativeObject);
    }

    // DECL: void transpose(Matrix* dst) const;
    public function transpose_Mat(dst:Matrix):Void
    {
        hx_Matrix_transpose_Mat(nativeObject, dst.native());
    }

    // DECL: static const Matrix& zero();
    public static function zero():Matrix
    {
        return Matrix.wrap(hx_Matrix_static_zero());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Matrix();
    static function constructNativeObject():Dynamic
    {
        return hx_Matrix_Construct();
    }

    // DECL: Matrix(const Matrix& copy);
    static function constructNativeObject_Mat(copy:Matrix):Dynamic
    {
        return hx_Matrix_Construct_Mat(copy.native());
    }

    // DECL: Matrix(const float* m);
    static function constructNativeObject_ArrFlt(m:Array<Float>):Dynamic
    {
        return hx_Matrix_Construct_ArrFlt(m);
    }

    // DECL: Matrix(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31,
    static function constructNativeObject_FltX16(m11:Float, m12:Float, m13:Float, m14:Float, m21:Float, m22:Float, m23:Float, m24:Float, m31:Float, m32:Float, m33:Float, m34:Float, m41:Float, m42:Float, m43:Float, m44:Float):Dynamic
    {
        return hx_Matrix_Construct_FltX16(m11, m12, m13, m14, m21, m22, m23, m24, m31, m32, m33, m34, m41, m42, m43, m44);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_m():Array<Float>
    {
        return hx_Matrix_property_m_get(nativeObject);
    }

    function set_m(value:Array<Float>):Array<Float>
    {
        return hx_Matrix_property_m_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Matrix_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_Construct", 0);
    static var hx_Matrix_Construct_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_Construct_Mat", 1);
    static var hx_Matrix_Construct_ArrFlt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_Construct_ArrFlt", 1);
    static var hx_Matrix_Construct_FltX16:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_Construct_FltX16", -1);
    static var hx_Matrix_static_add:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_add", 3);
    static var hx_Matrix_add_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_add_Mat", 2);
    static var hx_Matrix_add_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_add_Flt", 2);
    static var hx_Matrix_add_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_add_Flt_Mat", 3);
    static var hx_Matrix_static_createLookAt_V3X3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createLookAt_V3X3_Mat", 4);
    static var hx_Matrix_static_createLookAt_FltX9_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createLookAt_FltX9_Mat", -1);
    static var hx_Matrix_static_createOrthographic:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createOrthographic", 5);
    static var hx_Matrix_static_createOrthographicOffCenter:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createOrthographicOffCenter", -1);
    static var hx_Matrix_static_createPerspective:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createPerspective", 5);
    static var hx_Matrix_static_createRotation_Qtrn_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createRotation_Qtrn_Mat", 2);
    static var hx_Matrix_static_createRotation_V3_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createRotation_V3_Flt_Mat", 3);
    static var hx_Matrix_static_createRotationX:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createRotationX", 2);
    static var hx_Matrix_static_createRotationY:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createRotationY", 2);
    static var hx_Matrix_static_createRotationZ:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createRotationZ", 2);
    static var hx_Matrix_static_createScale_V3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createScale_V3_Mat", 2);
    static var hx_Matrix_static_createScale_FltX3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createScale_FltX3_Mat", 4);
    static var hx_Matrix_static_createTranslation_V3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createTranslation_V3_Mat", 2);
    static var hx_Matrix_static_createTranslation_FltX3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_createTranslation_FltX3_Mat", 4);
    static var hx_Matrix_decompose:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_decompose", 4);
    static var hx_Matrix_determinant:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_determinant", 1);
    static var hx_Matrix_getBackVector:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getBackVector", 2);
    static var hx_Matrix_getDownVector:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getDownVector", 2);
    static var hx_Matrix_getForwardVector:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getForwardVector", 2);
    static var hx_Matrix_getLeftVector:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getLeftVector", 2);
    static var hx_Matrix_getRightVector:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getRightVector", 2);
    static var hx_Matrix_getRotation:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getRotation", 2);
    static var hx_Matrix_getScale:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getScale", 2);
    static var hx_Matrix_getTranslation:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getTranslation", 2);
    static var hx_Matrix_getUpVector:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_getUpVector", 2);
    static var hx_Matrix_static_identity:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_identity", 0);
    static var hx_Matrix_invert:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_invert", 1);
    static var hx_Matrix_invert_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_invert_Mat", 2);
    static var hx_Matrix_isIdentity:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_isIdentity", 1);
    static var hx_Matrix_static_multiply_Mat_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_multiply_Mat_Flt_Mat", 3);
    static var hx_Matrix_static_multiply_MatX3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_multiply_MatX3", 3);
    static var hx_Matrix_multiply_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_multiply_Mat", 2);
    static var hx_Matrix_multiply_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_multiply_Flt", 2);
    static var hx_Matrix_multiply_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_multiply_Flt_Mat", 3);
    static var hx_Matrix_negate:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_negate", 1);
    static var hx_Matrix_negate_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_negate_Mat", 2);
    static var hx_Matrix_rotate_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotate_Qtrn", 2);
    static var hx_Matrix_rotate_Qtrn_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotate_Qtrn_Mat", 3);
    static var hx_Matrix_rotate_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotate_V3_Flt", 3);
    static var hx_Matrix_rotate_V3_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotate_V3_Flt_Mat", 4);
    static var hx_Matrix_rotateX_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotateX_Flt", 2);
    static var hx_Matrix_rotateX_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotateX_Flt_Mat", 3);
    static var hx_Matrix_rotateY_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotateY_Flt", 2);
    static var hx_Matrix_rotateY_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotateY_Flt_Mat", 3);
    static var hx_Matrix_rotateZ_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotateZ_Flt", 2);
    static var hx_Matrix_rotateZ_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_rotateZ_Flt_Mat", 3);
    static var hx_Matrix_scale_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_scale_V3", 2);
    static var hx_Matrix_scale_V3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_scale_V3_Mat", 3);
    static var hx_Matrix_scale_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_scale_Flt", 2);
    static var hx_Matrix_scale_Flt_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_scale_Flt_Mat", 3);
    static var hx_Matrix_scale_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_scale_FltX3", 4);
    static var hx_Matrix_scale_FltX3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_scale_FltX3_Mat", 5);
    static var hx_Matrix_set_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_set_Mat", 2);
    static var hx_Matrix_set_ArrFlt:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_set_ArrFlt", 2);
    static var hx_Matrix_set_FltX16:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_set_FltX16", -1);
    static var hx_Matrix_setIdentity:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_setIdentity", 1);
    static var hx_Matrix_setZero:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_setZero", 1);
    static var hx_Matrix_static_subtract:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_subtract", 3);
    static var hx_Matrix_subtract:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_subtract", 2);
    static var hx_Matrix_transformPoint_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformPoint_V3", 2);
    static var hx_Matrix_transformPoint_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformPoint_V3X2", 3);
    static var hx_Matrix_transformVector_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformVector_V3", 2);
    static var hx_Matrix_transformVector_V4:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformVector_V4", 2);
    static var hx_Matrix_transformVector_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformVector_V3X2", 3);
    static var hx_Matrix_transformVector_V4X2:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformVector_V4X2", 3);
    static var hx_Matrix_transformVector_FltX4_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transformVector_FltX4_V3", -1);
    static var hx_Matrix_translate_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_translate_V3", 2);
    static var hx_Matrix_translate_V3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_translate_V3_Mat", 3);
    static var hx_Matrix_translate_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_translate_FltX3", 4);
    static var hx_Matrix_translate_FltX3_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_translate_FltX3_Mat", 5);
    static var hx_Matrix_transpose:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transpose", 1);
    static var hx_Matrix_transpose_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_transpose_Mat", 2);
    static var hx_Matrix_static_zero:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_static_zero", 0);
    static var hx_Matrix_property_m_get:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_property_m_get", 1);
    static var hx_Matrix_property_m_set:Dynamic = cpp.Lib.load("gameplay", "hx_Matrix_property_m_set", 2);
}

// END
