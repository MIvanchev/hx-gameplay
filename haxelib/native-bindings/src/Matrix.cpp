#include "HaxeAPI.h"

// DECL: Matrix();
value hx_Matrix_Construct()
{
    return ObjectToValue(new Matrix());
}
DEFINE_PRIM(hx_Matrix_Construct, 0);

// DECL: Matrix(const Matrix& copy);
value hx_Matrix_Construct_Mat(value copy)
{
    Matrix *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Matrix(*_copy));
}
DEFINE_PRIM(hx_Matrix_Construct_Mat, 1);

// DECL: Matrix(const float* m);
value hx_Matrix_Construct_ArrFlt(value m)
{
    float values[] =
        {
            ValueToFloat(val_array_i(m, 0)), ValueToFloat(val_array_i(m, 1)),
            ValueToFloat(val_array_i(m, 2)), ValueToFloat(val_array_i(m, 3)),
            ValueToFloat(val_array_i(m, 4)), ValueToFloat(val_array_i(m, 5)),
            ValueToFloat(val_array_i(m, 6)), ValueToFloat(val_array_i(m, 7)),
            ValueToFloat(val_array_i(m, 8)), ValueToFloat(val_array_i(m, 9)),
            ValueToFloat(val_array_i(m, 10)), ValueToFloat(val_array_i(m, 11)),
            ValueToFloat(val_array_i(m, 12)), ValueToFloat(val_array_i(m, 13)),
            ValueToFloat(val_array_i(m, 14)), ValueToFloat(val_array_i(m, 15))
        };
    return ObjectToValue(new Matrix(values));
}
DEFINE_PRIM(hx_Matrix_Construct_ArrFlt, 1);

// DECL: Matrix(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31,
value hx_Matrix_Construct_FltX16(value *args, int nargs)
{
    const value& m11 = *args++;
    const value& m12 = *args++;
    const value& m13 = *args++;
    const value& m14 = *args++;
    const value& m21 = *args++;
    const value& m22 = *args++;
    const value& m23 = *args++;
    const value& m24 = *args++;
    const value& m31 = *args++;
    const value& m32 = *args++;
    const value& m33 = *args++;
    const value& m34 = *args++;
    const value& m41 = *args++;
    const value& m42 = *args++;
    const value& m43 = *args++;
    const value& m44 = *args;

    float _m11 = ValueToFloat(m11);
    float _m12 = ValueToFloat(m12);
    float _m13 = ValueToFloat(m13);
    float _m14 = ValueToFloat(m14);
    float _m21 = ValueToFloat(m21);
    float _m22 = ValueToFloat(m22);
    float _m23 = ValueToFloat(m23);
    float _m24 = ValueToFloat(m24);
    float _m31 = ValueToFloat(m31);
    float _m32 = ValueToFloat(m32);
    float _m33 = ValueToFloat(m33);
    float _m34 = ValueToFloat(m34);
    float _m41 = ValueToFloat(m41);
    float _m42 = ValueToFloat(m42);
    float _m43 = ValueToFloat(m43);
    float _m44 = ValueToFloat(m44);
    return ObjectToValue(new Matrix(
                    _m11, _m12, _m13, _m14,
                    _m21, _m22, _m23, _m24,
                    _m31, _m32, _m33, _m34,
                    _m41, _m42, _m43, _m44
                ));
}
DEFINE_PRIM_MULT(hx_Matrix_Construct_FltX16);

// DECL: static void add(const Matrix& m1, const Matrix& m2, Matrix* dst);
void hx_Matrix_static_add(value m1, value m2, value dst)
{
    Matrix *_m1, *_m2, *_dst;
    ValueToObject(m1, _m1);
    ValueToObject(m2, _m2);
    ValueToObject(dst, _dst);
    Matrix::add(*_m1, *_m2, _dst);
}
DEFINE_PRIM(hx_Matrix_static_add, 3);

// DECL: void add(const Matrix& m);
void hx_Matrix_add_Mat(value thisObj, value m)
{
    Matrix *_thisObj, *_m;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(m, _m);
    _thisObj->add(*_m);
}
DEFINE_PRIM(hx_Matrix_add_Mat, 2);

// DECL: void add(float scalar);
void hx_Matrix_add_Flt(value thisObj, value scalar)
{
    Matrix *_thisObj;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    _thisObj->add(_scalar);
}
DEFINE_PRIM(hx_Matrix_add_Flt, 2);

// DECL: void add(float scalar, Matrix* dst);
void hx_Matrix_add_Flt_Mat(value thisObj, value scalar, value dst)
{
    Matrix *_thisObj, *_dst;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->add(_scalar, _dst);
}
DEFINE_PRIM(hx_Matrix_add_Flt_Mat, 3);

// DECL: static void createBillboard(const Vector3& objectPosition, const Vector3& cameraPosition,
void hx_Matrix_static_createBillboard_V3X3_Mat(value objectPosition, value cameraPosition, value cameraUpVector, value dst)
{
    Vector3 *_objectPosition, *_cameraPosition, *_cameraUpVector;
    Matrix *_dst;
    ValueToObject(objectPosition, _objectPosition);
    ValueToObject(cameraPosition, _cameraPosition);
    ValueToObject(cameraUpVector, _cameraUpVector);
    ValueToObject(dst, _dst);
    Matrix::createBillboard(*_objectPosition, *_cameraPosition, *_cameraUpVector, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createBillboard_V3X3_Mat, 4);

// DECL: static void createBillboard(const Vector3& objectPosition, const Vector3& cameraPosition,
void hx_Matrix_static_createBillboard_V3X4_Mat(value objectPosition, value cameraPosition, value cameraUpVector, value cameraForwardVector, value dst)
{
    Vector3 *_objectPosition, *_cameraPosition, *_cameraUpVector, *_cameraForwardVector;
    Matrix *_dst;
    ValueToObject(objectPosition, _objectPosition);
    ValueToObject(cameraPosition, _cameraPosition);
    ValueToObject(cameraUpVector, _cameraUpVector);
    ValueToObject(cameraForwardVector, _cameraForwardVector);
    ValueToObject(dst, _dst);
    Matrix::createBillboard(*_objectPosition, *_cameraPosition, *_cameraUpVector, *_cameraForwardVector, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createBillboard_V3X4_Mat, 5);

// DECL: static void createLookAt(const Vector3& eyePosition, const Vector3& targetPosition, const Vector3& up, Matrix* dst);
void hx_Matrix_static_createLookAt_V3X3_Mat(value eyePosition, value targetPosition, value up, value dst)
{
    Vector3 *_eyePosition, *_targetPosition, *_up;
    Matrix *_dst;
    ValueToObject(eyePosition, _eyePosition);
    ValueToObject(targetPosition, _targetPosition);
    ValueToObject(up, _up);
    ValueToObject(dst, _dst);
    Matrix::createLookAt(*_eyePosition, *_targetPosition, *_up, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createLookAt_V3X3_Mat, 4);

// DECL: static void createLookAt(float eyePositionX, float eyePositionY, float eyePositionZ, float targetCenterX,
void hx_Matrix_static_createLookAt_FltX9_Mat(value *args, int nargs)
{
    const value& eyePositionX = *args++;
    const value& eyePositionY = *args++;
    const value& eyePositionZ = *args++;
    const value& targetCenterX = *args++;
    const value& targetCenterY = *args++;
    const value& targetCenterZ = *args++;
    const value& upX = *args++;
    const value& upY = *args++;
    const value& upZ = *args++;
    const value& dst = *args;

    float _eyePositionX = ValueToFloat(eyePositionX);
    float _eyePositionY = ValueToFloat(eyePositionY);
    float _eyePositionZ = ValueToFloat(eyePositionZ);
    float _targetCenterX = ValueToFloat(targetCenterX);
    float _targetCenterY = ValueToFloat(targetCenterY);
    float _targetCenterZ = ValueToFloat(targetCenterZ);
    float _upX = ValueToFloat(upX);
    float _upY = ValueToFloat(upY);
    float _upZ = ValueToFloat(upZ);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createLookAt(
                _eyePositionX, _eyePositionY, _eyePositionZ,
                _targetCenterX, _targetCenterY, _targetCenterZ,
                _upX, _upY, _upZ,
                _dst
            );
}
DEFINE_PRIM_MULT(hx_Matrix_static_createLookAt_FltX9_Mat);

// DECL: static void createOrthographic(float width, float height, float zNearPlane, float zFarPlane, Matrix* dst);
void hx_Matrix_static_createOrthographic(value width, value height, value zNearPlane, value zFarPlane, value dst)
{
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _zNearPlane = ValueToFloat(zNearPlane);
    float _zFarPlane = ValueToFloat(zFarPlane);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createOrthographic(_width, _height, _zNearPlane, _zFarPlane, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createOrthographic, 5);

// DECL: static void createOrthographicOffCenter(float left, float right, float bottom, float top, float zNearPlane,
void hx_Matrix_static_createOrthographicOffCenter(value *args, int nargs)
{
    const value& left = *args++;
    const value& right = *args++;
    const value& bottom = *args++;
    const value& top = *args++;
    const value& zNearPlane = *args++;
    const value& zFarPlane = *args++;
    const value& dst = *args;

    float _left = ValueToFloat(left);
    float _right = ValueToFloat(right);
    float _bottom = ValueToFloat(bottom);
    float _top = ValueToFloat(top);
    float _zNearPlane = ValueToFloat(zNearPlane);
    float _zFarPlane = ValueToFloat(zFarPlane);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createOrthographicOffCenter(_left, _right, _bottom, _top, _zNearPlane, _zFarPlane, _dst);
}
DEFINE_PRIM_MULT(hx_Matrix_static_createOrthographicOffCenter);

// DECL: static void createPerspective(float fieldOfView, float aspectRatio, float zNearPlane, float zFarPlane, Matrix* dst);
void hx_Matrix_static_createPerspective(value fieldOfView, value aspectRatio, value zNearPlane, value zFarPlane, value dst)
{
    float _fieldOfView = ValueToFloat(fieldOfView);
    float _aspectRatio = ValueToFloat(aspectRatio);
    float _zNearPlane = ValueToFloat(zNearPlane);
    float _zFarPlane = ValueToFloat(zFarPlane);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createPerspective(_fieldOfView, _aspectRatio, _zNearPlane, _zFarPlane, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createPerspective, 5);

// DECL: static void createReflection(const Plane& plane, Matrix* dst);
void hx_Matrix_static_createReflection(value plane, value dst)
{
    Plane *_plane;
    Matrix *_dst;
    ValueToObject(plane, _plane);
    ValueToObject(dst, _dst);
    Matrix::createReflection(*_plane, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createReflection, 2);

// DECL: static void createRotation(const Quaternion& quat, Matrix* dst);
void hx_Matrix_static_createRotation_Qtrn_Mat(value quat, value dst)
{
    Quaternion *_quat;
    Matrix *_dst;
    ValueToObject(quat, _quat);
    ValueToObject(dst, _dst);
    Matrix::createRotation(*_quat, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createRotation_Qtrn_Mat, 2);

// DECL: static void createRotation(const Vector3& axis, float angle, Matrix* dst);
void hx_Matrix_static_createRotation_V3_Flt_Mat(value axis, value angle, value dst)
{
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    Matrix *_dst;
    ValueToObject(axis, _axis);
    ValueToObject(dst, _dst);
    Matrix::createRotation(*_axis, _angle, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createRotation_V3_Flt_Mat, 3);

// DECL: static void createRotationX(float angle, Matrix* dst);
void hx_Matrix_static_createRotationX(value angle, value dst)
{
    float _angle = ValueToFloat(angle);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createRotationX(_angle, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createRotationX, 2);

// DECL: static void createRotationY(float angle, Matrix* dst);
void hx_Matrix_static_createRotationY(value angle, value dst)
{
    float _angle = ValueToFloat(angle);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createRotationY(_angle, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createRotationY, 2);

// DECL: static void createRotationZ(float angle, Matrix* dst);
void hx_Matrix_static_createRotationZ(value angle, value dst)
{
    float _angle = ValueToFloat(angle);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createRotationZ(_angle, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createRotationZ, 2);

// DECL: static void createScale(const Vector3& scale, Matrix* dst);
void hx_Matrix_static_createScale_V3_Mat(value scale, value dst)
{
    Vector3 *_scale;
    Matrix *_dst;
    ValueToObject(scale, _scale);
    ValueToObject(dst, _dst);
    Matrix::createScale(*_scale, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createScale_V3_Mat, 2);

// DECL: static void createScale(float xScale, float yScale, float zScale, Matrix* dst);
void hx_Matrix_static_createScale_FltX3_Mat(value xScale, value yScale, value zScale, value dst)
{
    float _xScale = ValueToFloat(xScale);
    float _yScale = ValueToFloat(yScale);
    float _zScale = ValueToFloat(zScale);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createScale(_xScale, _yScale, _zScale, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createScale_FltX3_Mat, 4);

// DECL: static void createTranslation(const Vector3& translation, Matrix* dst);
void hx_Matrix_static_createTranslation_V3_Mat(value translation, value dst)
{
    Vector3 *_translation;
    Matrix *_dst;
    ValueToObject(translation, _translation);
    ValueToObject(dst, _dst);
    Matrix::createTranslation(*_translation, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createTranslation_V3_Mat, 2);

// DECL: static void createTranslation(float xTranslation, float yTranslation, float zTranslation, Matrix* dst);
void hx_Matrix_static_createTranslation_FltX3_Mat(value xTranslation, value yTranslation, value zTranslation, value dst)
{
    float _xTranslation = ValueToFloat(xTranslation);
    float _yTranslation = ValueToFloat(yTranslation);
    float _zTranslation = ValueToFloat(zTranslation);
    Matrix *_dst;
    ValueToObject(dst, _dst);
    Matrix::createScale(_xTranslation, _yTranslation, _zTranslation, _dst);
}
DEFINE_PRIM(hx_Matrix_static_createTranslation_FltX3_Mat, 4);

// DECL: bool decompose(Vector3* scale, Quaternion* rotation, Vector3* translation) const;
value hx_Matrix_decompose(value thisObj, value scale, value rotation, value translation)
{
    Matrix *_thisObj;
    Vector3 *_scale;
    Quaternion *_rotation;
    Vector3 *_translation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    ValueToObject(rotation, _rotation);
    ValueToObject(translation, _translation);
    return alloc_bool(_thisObj->decompose(_scale, _rotation, _translation));
}
DEFINE_PRIM(hx_Matrix_decompose, 4);

// DECL: float determinant() const;
value hx_Matrix_determinant(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->determinant());
}
DEFINE_PRIM(hx_Matrix_determinant, 1);

// DECL: void getBackVector(Vector3* dst) const;
void hx_Matrix_getBackVector(value thisObj, value dst)
{
    Matrix *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getBackVector(_dst);
}
DEFINE_PRIM(hx_Matrix_getBackVector, 2);

// DECL: void getDownVector(Vector3* dst) const;
void hx_Matrix_getDownVector(value thisObj, value dst)
{
    Matrix *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getDownVector(_dst);
}
DEFINE_PRIM(hx_Matrix_getDownVector, 2);

// DECL: void getForwardVector(Vector3* dst) const;
void hx_Matrix_getForwardVector(value thisObj, value dst)
{
    Matrix *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getForwardVector(_dst);
}
DEFINE_PRIM(hx_Matrix_getForwardVector, 2);

// DECL: void getLeftVector(Vector3* dst) const;
void hx_Matrix_getLeftVector(value thisObj, value dst)
{
    Matrix *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getLeftVector(_dst);
}
DEFINE_PRIM(hx_Matrix_getLeftVector, 2);

// DECL: void getRightVector(Vector3* dst) const;
void hx_Matrix_getRightVector(value thisObj, value dst)
{
    Matrix *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getRightVector(_dst);
}
DEFINE_PRIM(hx_Matrix_getRightVector, 2);

// DECL: bool getRotation(Quaternion* rotation) const;
value hx_Matrix_getRotation(value thisObj, value rotation)
{
    Matrix *_thisObj;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    return alloc_bool(_thisObj->getRotation(_rotation));
}
DEFINE_PRIM(hx_Matrix_getRotation, 2);

// DECL: void getScale(Vector3* scale) const;
void hx_Matrix_getScale(value thisObj, value scale)
{
    Matrix *_thisObj;
    Vector3 *_scale;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    _thisObj->getScale(_scale);
}
DEFINE_PRIM(hx_Matrix_getScale, 2);

// DECL: void getTranslation(Vector3* translation) const;
void hx_Matrix_getTranslation(value thisObj, value translation)
{
    Matrix *_thisObj;
    Vector3 *_translation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(translation, _translation);
    _thisObj->getTranslation(_translation);
}
DEFINE_PRIM(hx_Matrix_getTranslation, 2);

// DECL: void getUpVector(Vector3* dst) const;
void hx_Matrix_getUpVector(value thisObj, value dst)
{
    Matrix *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getUpVector(_dst);
}
DEFINE_PRIM(hx_Matrix_getUpVector, 2);

// DECL: static const Matrix& identity();
value hx_Matrix_static_identity()
{
    return ObjectToValue(&Matrix::identity(), false);
}
DEFINE_PRIM(hx_Matrix_static_identity, 0);

// DECL: bool invert();
value hx_Matrix_invert(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->invert());
}
DEFINE_PRIM(hx_Matrix_invert, 1);

// DECL: bool invert(Matrix* dst) const;
value hx_Matrix_invert_Mat(value thisObj, value dst)
{
    Matrix *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    return alloc_bool(_thisObj->invert(_dst));
}
DEFINE_PRIM(hx_Matrix_invert_Mat, 2);

// DECL: bool isIdentity() const;
value hx_Matrix_isIdentity(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isIdentity());
}
DEFINE_PRIM(hx_Matrix_isIdentity, 1);

// DECL: static void multiply(const Matrix& m, float scalar, Matrix* dst);
void hx_Matrix_static_multiply_Mat_Flt_Mat(value m, value scalar, value dst)
{
    Matrix *_m, *_dst;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(m, _m);
    ValueToObject(dst, _dst);
    Matrix::multiply(*_m, _scalar, _dst);
}
DEFINE_PRIM(hx_Matrix_static_multiply_Mat_Flt_Mat, 3);

// DECL: static void multiply(const Matrix& m1, const Matrix& m2, Matrix* dst);
void hx_Matrix_static_multiply_MatX3(value m1, value m2, value dst)
{
    Matrix *_m1, *_m2, *_dst;
    ValueToObject(m1, _m1);
    ValueToObject(m2, _m2);
    ValueToObject(dst, _dst);
    Matrix::multiply(*_m1, *_m2, _dst);
}
DEFINE_PRIM(hx_Matrix_static_multiply_MatX3, 3);

// DECL: void multiply(const Matrix& m);
void hx_Matrix_multiply_Mat(value thisObj, value m)
{
    Matrix *_thisObj, *_m;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(m, _m);
    _thisObj->multiply(*_m);
}
DEFINE_PRIM(hx_Matrix_multiply_Mat, 2);

// DECL: void multiply(float scalar);
void hx_Matrix_multiply_Flt(value thisObj, value scalar)
{
    Matrix *_thisObj;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    _thisObj->multiply(_scalar);
}
DEFINE_PRIM(hx_Matrix_multiply_Flt, 2);

// DECL: void multiply(float scalar, Matrix* dst) const;
void hx_Matrix_multiply_Flt_Mat(value thisObj, value scalar, value dst)
{
    Matrix *_thisObj, *_dst;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->multiply(_scalar, _dst);
}
DEFINE_PRIM(hx_Matrix_multiply_Flt_Mat, 3);

// DECL: void negate();
void hx_Matrix_negate(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->negate();
}
DEFINE_PRIM(hx_Matrix_negate, 1);

// DECL: void negate(Matrix* dst) const;
void hx_Matrix_negate_Mat(value thisObj, value dst)
{
    Matrix *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->negate(_dst);
}
DEFINE_PRIM(hx_Matrix_negate_Mat, 2);

// DECL: void rotate(const Quaternion& q);
void hx_Matrix_rotate_Qtrn(value thisObj, value q)
{
    Matrix *_thisObj;
    Quaternion *_q;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(q, _q);
    _thisObj->rotate(*_q);
}
DEFINE_PRIM(hx_Matrix_rotate_Qtrn, 2);

// DECL: void rotate(const Quaternion& q, Matrix* dst) const;
void hx_Matrix_rotate_Qtrn_Mat(value thisObj, value q, value dst)
{
    Matrix *_thisObj, *_dst;
    Quaternion *_q;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(q, _q);
    ValueToObject(dst, _dst);
    _thisObj->rotate(*_q, _dst);
}
DEFINE_PRIM(hx_Matrix_rotate_Qtrn_Mat, 3);

// DECL: void rotate(const Vector3& axis, float angle);
void hx_Matrix_rotate_V3_Flt(value thisObj, value axis, value angle)
{
    Matrix *_thisObj;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    _thisObj->rotate(*_axis, _angle);
}
DEFINE_PRIM(hx_Matrix_rotate_V3_Flt, 3);

// DECL: void rotate(const Vector3& axis, float angle, Matrix* dst) const;
void hx_Matrix_rotate_V3_Flt_Mat(value thisObj, value axis, value angle, value dst)
{
    Matrix *_thisObj, *_dst;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    ValueToObject(dst, _dst);
    _thisObj->rotate(*_axis, _angle, _dst);
}
DEFINE_PRIM(hx_Matrix_rotate_V3_Flt_Mat, 4);

// DECL: void rotateX(float angle);
void hx_Matrix_rotateX_Flt(value thisObj, value angle)
{
    Matrix *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotateX(_angle);
}
DEFINE_PRIM(hx_Matrix_rotateX_Flt, 2);

// DECL: void rotateX(float angle, Matrix* dst) const;
void hx_Matrix_rotateX_Flt_Mat(value thisObj, value angle, value dst)
{
    Matrix *_thisObj, *_dst;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->rotateX(_angle, _dst);
}
DEFINE_PRIM(hx_Matrix_rotateX_Flt_Mat, 3);

// DECL: void rotateY(float angle);
void hx_Matrix_rotateY_Flt(value thisObj, value angle)
{
    Matrix *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotateY(_angle);
}
DEFINE_PRIM(hx_Matrix_rotateY_Flt, 2);

// DECL: void rotateY(float angle, Matrix* dst) const;
void hx_Matrix_rotateY_Flt_Mat(value thisObj, value angle, value dst)
{
    Matrix *_thisObj, *_dst;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->rotateY(_angle, _dst);
}
DEFINE_PRIM(hx_Matrix_rotateY_Flt_Mat, 3);

// DECL: void rotateZ(float angle);
void hx_Matrix_rotateZ_Flt(value thisObj, value angle)
{
    Matrix *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotateZ(_angle);
}
DEFINE_PRIM(hx_Matrix_rotateZ_Flt, 2);

// DECL: void rotateZ(float angle, Matrix* dst) const;
void hx_Matrix_rotateZ_Flt_Mat(value thisObj, value angle, value dst)
{
    Matrix *_thisObj, *_dst;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->rotateZ(_angle, _dst);
}
DEFINE_PRIM(hx_Matrix_rotateZ_Flt_Mat, 3);

// DECL: void scale(const Vector3& s);
void hx_Matrix_scale_V3(value thisObj, value s)
{
    Matrix *_thisObj;
    Vector3 *_s;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(s, _s);
    _thisObj->scale(*_s);
}
DEFINE_PRIM(hx_Matrix_scale_V3, 2);

// DECL: void scale(const Vector3& s, Matrix* dst) const;
void hx_Matrix_scale_V3_Mat(value thisObj, value s, value dst)
{
    Matrix *_thisObj, *_dst;
    Vector3 *_s;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(s, _s);
    ValueToObject(dst, _dst);
    _thisObj->scale(*_s, _dst);
}
DEFINE_PRIM(hx_Matrix_scale_V3_Mat, 3);

// DECL: void scale(float value);
void hx_Matrix_scale_Flt(value thisObj, value val)
{
    Matrix *_thisObj;
    float _value = ValueToFloat(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_value);
}
DEFINE_PRIM(hx_Matrix_scale_Flt, 2);

// DECL: void scale(float value, Matrix* dst) const;
void hx_Matrix_scale_Flt_Mat(value thisObj, value val, value dst)
{
    Matrix *_thisObj, *_dst;
    float _value = ValueToFloat(val);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->scale(_value, _dst);
}
DEFINE_PRIM(hx_Matrix_scale_Flt_Mat, 3);

// DECL: void scale(float xScale, float yScale, float zScale);
void hx_Matrix_scale_FltX3(value thisObj, value xScale, value yScale, value zScale)
{
    Matrix *_thisObj;
    float _xScale = ValueToFloat(xScale);
    float _yScale = ValueToFloat(yScale);
    float _zScale = ValueToFloat(zScale);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_xScale, _yScale, _zScale);
}
DEFINE_PRIM(hx_Matrix_scale_FltX3, 4);

// DECL: void scale(float xScale, float yScale, float zScale, Matrix* dst) const;
void hx_Matrix_scale_FltX3_Mat(value thisObj, value xScale, value yScale, value zScale, value dst)
{
    Matrix *_thisObj, *_dst;
    float _xScale = ValueToFloat(xScale);
    float _yScale = ValueToFloat(yScale);
    float _zScale = ValueToFloat(zScale);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->scale(_xScale, _yScale, _zScale, _dst);
}
DEFINE_PRIM(hx_Matrix_scale_FltX3_Mat, 5);

// DECL: void set(const Matrix& m);
void hx_Matrix_set_Mat(value thisObj, value m)
{
    Matrix *_thisObj, *_m;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(m, _m);
    _thisObj->set(*_m);
}
DEFINE_PRIM(hx_Matrix_set_Mat, 2);

// DECL: void set(const float* m);
void hx_Matrix_set_ArrFlt(value thisObj, value m)
{
    Matrix *_thisObj;
    float values[] =
        {
            ValueToFloat(val_array_i(m, 0)), ValueToFloat(val_array_i(m, 1)),
            ValueToFloat(val_array_i(m, 2)), ValueToFloat(val_array_i(m, 3)),
            ValueToFloat(val_array_i(m, 4)), ValueToFloat(val_array_i(m, 5)),
            ValueToFloat(val_array_i(m, 6)), ValueToFloat(val_array_i(m, 7)),
            ValueToFloat(val_array_i(m, 8)), ValueToFloat(val_array_i(m, 9)),
            ValueToFloat(val_array_i(m, 10)), ValueToFloat(val_array_i(m, 11)),
            ValueToFloat(val_array_i(m, 12)), ValueToFloat(val_array_i(m, 13)),
            ValueToFloat(val_array_i(m, 14)), ValueToFloat(val_array_i(m, 15))
        };
   ValueToObject(thisObj, _thisObj);
   _thisObj->set(values);
}
DEFINE_PRIM(hx_Matrix_set_ArrFlt, 2);

// DECL: void set(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31,
void hx_Matrix_set_FltX16(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& m11 = *args++;
    const value& m12 = *args++;
    const value& m13 = *args++;
    const value& m14 = *args++;
    const value& m21 = *args++;
    const value& m22 = *args++;
    const value& m23 = *args++;
    const value& m24 = *args++;
    const value& m31 = *args++;
    const value& m32 = *args++;
    const value& m33 = *args++;
    const value& m34 = *args++;
    const value& m41 = *args++;
    const value& m42 = *args++;
    const value& m43 = *args++;
    const value& m44 = *args;

    Matrix *_thisObj;
    float _m11 = ValueToFloat(m11);
    float _m12 = ValueToFloat(m12);
    float _m13 = ValueToFloat(m13);
    float _m14 = ValueToFloat(m14);
    float _m21 = ValueToFloat(m21);
    float _m22 = ValueToFloat(m22);
    float _m23 = ValueToFloat(m23);
    float _m24 = ValueToFloat(m24);
    float _m31 = ValueToFloat(m31);
    float _m32 = ValueToFloat(m32);
    float _m33 = ValueToFloat(m33);
    float _m34 = ValueToFloat(m34);
    float _m41 = ValueToFloat(m41);
    float _m42 = ValueToFloat(m42);
    float _m43 = ValueToFloat(m43);
    float _m44 = ValueToFloat(m44);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(
            _m11, _m12, _m13, _m14,
            _m21, _m22, _m23, _m24,
            _m31, _m32, _m33, _m34,
            _m41, _m42, _m43, _m44
        );

}
DEFINE_PRIM_MULT(hx_Matrix_set_FltX16);

// DECL: void setIdentity();
void hx_Matrix_setIdentity(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->setIdentity();
}
DEFINE_PRIM(hx_Matrix_setIdentity, 1);

// DECL: void setZero();
void hx_Matrix_setZero(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->setZero();
}
DEFINE_PRIM(hx_Matrix_setZero, 1);

// DECL: static void subtract(const Matrix& m1, const Matrix& m2, Matrix* dst);
void hx_Matrix_static_subtract(value m1, value m2, value dst)
{
    Matrix *_m1, *_m2, *_dst;
    ValueToObject(m1, _m1);
    ValueToObject(m2, _m2);
    ValueToObject(dst, _dst);
    Matrix::subtract(*_m1, *_m2, _dst);
}
DEFINE_PRIM(hx_Matrix_static_subtract, 3);

// DECL: void subtract(const Matrix& m);
void hx_Matrix_subtract(value thisObj, value m)
{
    Matrix *_thisObj, *_m;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(m, _m);
    _thisObj->subtract(*_m);
}
DEFINE_PRIM(hx_Matrix_subtract, 2);

// DECL: void transformPoint(Vector3* point) const;
void hx_Matrix_transformPoint_V3(value thisObj, value point)
{
    Matrix *_thisObj;
    Vector3 *_point;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    _thisObj->transformPoint(_point);
}
DEFINE_PRIM(hx_Matrix_transformPoint_V3, 2);

// DECL: void transformPoint(const Vector3& point, Vector3* dst) const;
void hx_Matrix_transformPoint_V3X2(value thisObj, value point, value dst)
{
    Matrix *_thisObj;
    Vector3 *_point, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    ValueToObject(dst, _dst);
    _thisObj->transformPoint(*_point, _dst);
}
DEFINE_PRIM(hx_Matrix_transformPoint_V3X2, 3);

// DECL: void transformVector(Vector3* vector) const;
void hx_Matrix_transformVector_V3(value thisObj, value vector)
{
    Matrix *_thisObj;
    Vector3 *_vector;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(vector, _vector);
    _thisObj->transformVector(_vector);
}
DEFINE_PRIM(hx_Matrix_transformVector_V3, 2);

// DECL: void transformVector(Vector4* vector) const;
void hx_Matrix_transformVector_V4(value thisObj, value vector)
{
    Matrix *_thisObj;
    Vector4 *_vector;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(vector, _vector);
    _thisObj->transformVector(_vector);
}
DEFINE_PRIM(hx_Matrix_transformVector_V4, 2);

// DECL: void transformVector(const Vector3& vector, Vector3* dst) const;
void hx_Matrix_transformVector_V3X2(value thisObj, value vector, value dst)
{
    Matrix *_thisObj;
    Vector3 *_vector, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(vector, _vector);
    ValueToObject(dst, _dst);
    _thisObj->transformVector(*_vector, _dst);
}
DEFINE_PRIM(hx_Matrix_transformVector_V3X2, 3);

// DECL: void transformVector(const Vector4& vector, Vector4* dst) const;
void hx_Matrix_transformVector_V4X2(value thisObj, value vector, value dst)
{
    Matrix *_thisObj;
    Vector4 *_vector, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(vector, _vector);
    ValueToObject(dst, _dst);
    _thisObj->transformVector(*_vector, _dst);
}
DEFINE_PRIM(hx_Matrix_transformVector_V4X2, 3);

// DECL: void transformVector(float x, float y, float z, float w, Vector3* dst) const;
void hx_Matrix_transformVector_FltX4_V3(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& z = *args++;
    const value& w = *args++;
    const value& dst = *args;

    Matrix *_thisObj;
    Vector3 *_dst;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _w = ValueToFloat(w);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->transformVector(_x, _y, _z, _w, _dst);
}
DEFINE_PRIM_MULT(hx_Matrix_transformVector_FltX4_V3);

// DECL: void translate(const Vector3& t);
void hx_Matrix_translate_V3(value thisObj, value t)
{
    Matrix *_thisObj;
    Vector3 *_t;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(t, _t);
    _thisObj->translate(*_t);
}
DEFINE_PRIM(hx_Matrix_translate_V3, 2);

// DECL: void translate(const Vector3& t, Matrix* dst) const;
void hx_Matrix_translate_V3_Mat(value thisObj, value t, value dst)
{
    Matrix *_thisObj, *_dst;
    Vector3 *_t;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(t, _t);
    ValueToObject(dst, _dst);
    _thisObj->translate(*_t, _dst);
}
DEFINE_PRIM(hx_Matrix_translate_V3_Mat, 3);

// DECL: void translate(float x, float y, float z);
void hx_Matrix_translate_FltX3(value thisObj, value x, value y, value z)
{
    Matrix *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translate(_x, _y, _z);
}
DEFINE_PRIM(hx_Matrix_translate_FltX3, 4);

// DECL: void translate(float x, float y, float z, Matrix* dst) const;
void hx_Matrix_translate_FltX3_Mat(value thisObj, value x, value y, value z, value dst)
{
    Matrix *_thisObj, *_dst;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->translate(_x, _y, _z, _dst);
}
DEFINE_PRIM(hx_Matrix_translate_FltX3_Mat, 5);

// DECL: void transpose();
void hx_Matrix_transpose(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->transpose();
}
DEFINE_PRIM(hx_Matrix_transpose, 1);

// DECL: void transpose(Matrix* dst) const;
void hx_Matrix_transpose_Mat(value thisObj, value dst)
{
    Matrix *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->transpose(_dst);
}
DEFINE_PRIM(hx_Matrix_transpose_Mat, 2);

// DECL: static const Matrix& zero();
value hx_Matrix_static_zero()
{
    return ObjectToValue(&Matrix::zero(), false);
}
DEFINE_PRIM(hx_Matrix_static_zero, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Matrix_property_m_get(value thisObj)
{
    Matrix *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ArrayToValue(_thisObj->m);
}
DEFINE_PRIM(hx_Matrix_property_m_get, 1);

// END
//
