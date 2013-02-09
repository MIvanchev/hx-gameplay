#include "HaxeAPI.h"

// DECL: Transform();
value hx_Transform_Construct()
{
    return ObjectToValue(new Transform());
}
DEFINE_PRIM(hx_Transform_Construct, 0);

// DECL: Transform(const Transform& copy);
value hx_Transform_Construct_Trans(value copy)
{
    Transform *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Transform(*_copy));
}
DEFINE_PRIM(hx_Transform_Construct_Trans, 1);

// DECL: Transform(const Vector3& scale, const Matrix& rotation, const Vector3& translation);
value hx_Transform_Construct_V3_Mat_V3(value scale, value rotation, value translation)
{
    Vector3 *_scale, *_translation;
    Matrix *_rotation;
    ValueToObject(scale, _scale);
    ValueToObject(translation, _translation);
    ValueToObject(rotation, _rotation);
    return ObjectToValue(new Transform(*_scale, *_rotation, *_translation));
}
DEFINE_PRIM(hx_Transform_Construct_V3_Mat_V3, 3);

// DECL: Transform(const Vector3& scale, const Quaternion& rotation, const Vector3& translation);
value hx_Transform_Construct_V3_Qtrn_V3(value scale, value rotation, value translation)
{
    Vector3 *_scale, *_translation;
    Quaternion *_rotation;
    ValueToObject(scale, _scale);
    ValueToObject(translation, _translation);
    ValueToObject(rotation, _rotation);
    return ObjectToValue(new Transform(*_scale, *_rotation, *_translation));
}
DEFINE_PRIM(hx_Transform_Construct_V3_Qtrn_V3, 3);

// DECL: void addListener(Transform::Listener* listener, long cookie = 0);
void hx_Transform_addListener(value thisObj, value listener, value cookie)
{
    Transform *_thisObj;
    Transform::Listener *_listener;
    long _cookie = ValueToLong(cookie);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _cookie);
}
DEFINE_PRIM(hx_Transform_addListener, 3);

// DECL: unsigned int getAnimationPropertyComponentCount(int propertyId) const;
value hx_Transform_getAnimationPropertyComponentCount(value thisObj, value propertyId)
{
    Transform *_thisObj;
    int _propertyId = val_get_int(propertyId);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getAnimationPropertyComponentCount(_propertyId));
}
DEFINE_PRIM(hx_Transform_getAnimationPropertyComponentCount, 2);

// DECL: void getAnimationPropertyValue(int propertyId, AnimationValue* value);
void hx_Transform_getAnimationPropertyValue(value thisObj, value propertyId, value value)
{
    Transform *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->getAnimationPropertyValue(_propertyId, _value);
}
DEFINE_PRIM(hx_Transform_getAnimationPropertyValue, 3);

// DECL: Vector3 getBackVector() const;
value hx_Transform_getBackVector(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getBackVector());
}
DEFINE_PRIM(hx_Transform_getBackVector, 1);

// DECL: void getBackVector(Vector3* dst) const;
void hx_Transform_getBackVector_V3(value thisObj, value dst)
{
    Transform *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getBackVector(_dst);
}
DEFINE_PRIM(hx_Transform_getBackVector_V3, 2);

// DECL: Vector3 getDownVector() const;
value hx_Transform_getDownVector(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getDownVector());
}
DEFINE_PRIM(hx_Transform_getDownVector, 1);

// DECL: void getDownVector(Vector3* dst) const;
void hx_Transform_getDownVector_V3(value thisObj, value dst)
{
    Transform *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getDownVector(_dst);
}
DEFINE_PRIM(hx_Transform_getDownVector_V3, 2);

// DECL: Vector3 getForwardVector() const;
value hx_Transform_getForwardVector(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getForwardVector());
}
DEFINE_PRIM(hx_Transform_getForwardVector, 1);

// DECL: void getForwardVector(Vector3* dst) const;
void hx_Transform_getForwardVector_V3(value thisObj, value dst)
{
    Transform *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getForwardVector(_dst);
}
DEFINE_PRIM(hx_Transform_getForwardVector_V3, 2);

// DECL: Vector3 getLeftVector() const;
value hx_Transform_getLeftVector(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getLeftVector());
}
DEFINE_PRIM(hx_Transform_getLeftVector, 1);

// DECL: void getLeftVector(Vector3* dst) const;
void hx_Transform_getLeftVector_V3(value thisObj, value dst)
{
    Transform *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getLeftVector(_dst);
}
DEFINE_PRIM(hx_Transform_getLeftVector_V3, 2);

// DECL: const Matrix& getMatrix() const;
value hx_Transform_getMatrix(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getMatrix(), false);
}
DEFINE_PRIM(hx_Transform_getMatrix, 1);

// DECL: Vector3 getRightVector() const;
value hx_Transform_getRightVector(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getRightVector());
}
DEFINE_PRIM(hx_Transform_getRightVector, 1);

// DECL: void getRightVector(Vector3* dst) const;
void hx_Transform_getRightVector_V3(value thisObj, value dst)
{
    Transform *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getRightVector(_dst);
}
DEFINE_PRIM(hx_Transform_getRightVector_V3, 2);

// DECL: const Quaternion& getRotation() const;
value hx_Transform_getRotation(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRotation(), false);
}
DEFINE_PRIM(hx_Transform_getRotation, 1);

// DECL: float getRotation(Vector3* axis) const;
value hx_Transform_getRotation_V3(value thisObj, value axis)
{
    Transform *_thisObj;
    Vector3 *_axis;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    return alloc_float(_thisObj->getRotation(_axis));
}
DEFINE_PRIM(hx_Transform_getRotation_V3, 2);

// DECL: void getRotation(Matrix* rotation) const;
void hx_Transform_getRotation_Mat(value thisObj, value rotation)
{
    Transform *_thisObj;
    Matrix *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->getRotation(_rotation);
}
DEFINE_PRIM(hx_Transform_getRotation_Mat, 2);

// DECL: void getRotation(Quaternion* rotation) const;
void hx_Transform_getRotation_Qtrn(value thisObj, value rotation)
{
    Transform *_thisObj;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->getRotation(_rotation);
}
DEFINE_PRIM(hx_Transform_getRotation_Qtrn, 2);

// DECL: const Vector3& getScale() const;
value hx_Transform_getScale(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getScale(), false);
}
DEFINE_PRIM(hx_Transform_getScale, 1);

// DECL: void getScale(Vector3* scale) const;
void hx_Transform_getScale_V3(value thisObj, value scale)
{
    Transform *_thisObj;
    Vector3 *_scale;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    _thisObj->getScale(_scale);
}
DEFINE_PRIM(hx_Transform_getScale_V3, 2);

// DECL: float getScaleX() const;
value hx_Transform_getScaleX(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getScaleX());
}
DEFINE_PRIM(hx_Transform_getScaleX, 1);

// DECL: float getScaleY() const;
value hx_Transform_getScaleY(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getScaleY());
}
DEFINE_PRIM(hx_Transform_getScaleY, 1);

// DECL: float getScaleZ() const;
value hx_Transform_getScaleZ(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getScaleZ());
}
DEFINE_PRIM(hx_Transform_getScaleZ, 1);

// DECL: const Vector3& getTranslation() const;
value hx_Transform_getTranslation(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getTranslation(), false);
}
DEFINE_PRIM(hx_Transform_getTranslation, 1);

// DECL: void getTranslation(Vector3* translation) const;
void hx_Transform_getTranslation_V3(value thisObj, value translation)
{
    Transform *_thisObj;
    Vector3 *_translation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(translation, _translation);
    _thisObj->getTranslation(_translation);
}
DEFINE_PRIM(hx_Transform_getTranslation_V3, 2);

// DECL: float getTranslationX() const;
value hx_Transform_getTranslationX(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getTranslationX());
}
DEFINE_PRIM(hx_Transform_getTranslationX, 1);

// DECL: float getTranslationY() const;
value hx_Transform_getTranslationY(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getTranslationY());
}
DEFINE_PRIM(hx_Transform_getTranslationY, 1);

// DECL: float getTranslationZ() const;
value hx_Transform_getTranslationZ(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getTranslationZ());
}
DEFINE_PRIM(hx_Transform_getTranslationZ, 1);

// DECL: Vector3 getUpVector() const;
value hx_Transform_getUpVector(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getUpVector());
}
DEFINE_PRIM(hx_Transform_getUpVector, 1);

// DECL: void getUpVector(Vector3* dst) const;
void hx_Transform_getUpVector_V3(value thisObj, value dst)
{
    Transform *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getUpVector(_dst);
}
DEFINE_PRIM(hx_Transform_getUpVector_V3, 2);

// DECL: static bool isTransformChangedSuspended();
value hx_Transform_static_isTransformChangedSuspended()
{
    return alloc_bool(Transform::isTransformChangedSuspended());
}
DEFINE_PRIM(hx_Transform_static_isTransformChangedSuspended, 0);

// DECL: void removeListener(Transform::Listener* listener);
void hx_Transform_removeListener(value thisObj, value listener)
{
    Transform *_thisObj;
    Transform::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->removeListener(_listener);
}
DEFINE_PRIM(hx_Transform_removeListener, 2);

// DECL: static void resumeTransformChanged();
void hx_Transform_static_resumeTransformChanged()
{
    Transform::resumeTransformChanged();
}
DEFINE_PRIM(hx_Transform_static_resumeTransformChanged, 0);

// DECL: void rotate(const Matrix& rotation);
void hx_Transform_rotate_Mat(value thisObj, value rotation)
{
    Transform *_thisObj;
    Matrix *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->rotate(*_rotation);
}
DEFINE_PRIM(hx_Transform_rotate_Mat, 2);

// DECL: void rotate(const Quaternion& rotation);
void hx_Transform_rotate_Qtrn(value thisObj, value rotation)
{
    Transform *_thisObj;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->rotate(*_rotation);
}
DEFINE_PRIM(hx_Transform_rotate_Qtrn, 2);

// DECL: void rotate(const Vector3& axis, float angle);
void hx_Transform_rotate_V3_Flt(value thisObj, value axis, value angle)
{
    Transform *_thisObj;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    _thisObj->rotate(*_axis, _angle);
}
DEFINE_PRIM(hx_Transform_rotate_V3_Flt, 3);

// DECL: void rotate(float qx, float qy, float qz, float qw);
void hx_Transform_rotate_FltX4(value thisObj, value qx, value qy, value qz, value qw)
{
    Transform *_thisObj;
    float _qx = ValueToFloat(qx);
    float _qy = ValueToFloat(qy);
    float _qz = ValueToFloat(qz);
    float _qw = ValueToFloat(qw);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotate(_qx, _qy, _qz, _qw);
}
DEFINE_PRIM(hx_Transform_rotate_FltX4, 5);

// DECL: void rotateX(float angle);
void hx_Transform_rotateX(value thisObj, value angle)
{
    Transform *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotateX(_angle);
}
DEFINE_PRIM(hx_Transform_rotateX, 2);

// DECL: void rotateY(float angle);
void hx_Transform_rotateY(value thisObj, value angle)
{
    Transform *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotateY(_angle);
}
DEFINE_PRIM(hx_Transform_rotateY, 2);

// DECL: void rotateZ(float angle);
void hx_Transform_rotateZ(value thisObj, value angle)
{
    Transform *_thisObj;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->rotateZ(_angle);
}
DEFINE_PRIM(hx_Transform_rotateZ, 2);

// DECL: void scale(const Vector3& scale);
void hx_Transform_scale_V3(value thisObj, value scale)
{
    Transform *_thisObj;
    Vector3 *_scale;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    _thisObj->scale(*_scale);
}
DEFINE_PRIM(hx_Transform_scale_V3, 2);

// DECL: void scale(float scale);
void hx_Transform_scale_Flt(value thisObj, value scale)
{
    Transform *_thisObj;
    float _scale = ValueToFloat(scale);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_scale);
}
DEFINE_PRIM(hx_Transform_scale_Flt, 2);

// DECL: void scale(float sx, float sy, float sz);
void hx_Transform_scale_FltX3(value thisObj, value sx, value sy, value sz)
{
    Transform *_thisObj;
    float _sx = ValueToFloat(sx);
    float _sy = ValueToFloat(sy);
    float _sz = ValueToFloat(sz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_sx, _sy, _sz);
}
DEFINE_PRIM(hx_Transform_scale_FltX3, 4);

// DECL: void scaleX(float sx);
void hx_Transform_scaleX(value thisObj, value sx)
{
    Transform *_thisObj;
    float _sx = ValueToFloat(sx);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scaleX(_sx);
}
DEFINE_PRIM(hx_Transform_scaleX, 2);

// DECL: void scaleY(float sy);
void hx_Transform_scaleY(value thisObj, value sy)
{
    Transform *_thisObj;
    float _sy = ValueToFloat(sy);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scaleY(_sy);
}
DEFINE_PRIM(hx_Transform_scaleY, 2);

// DECL: void scaleZ(float sz);
void hx_Transform_scaleZ(value thisObj, value sz)
{
    Transform *_thisObj;
    float _sz = ValueToFloat(sz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scaleZ(_sz);
}
DEFINE_PRIM(hx_Transform_scaleZ, 2);

// DECL: void set(const Transform& transform);
void hx_Transform_set_Trans(value thisObj, value transform)
{
    Transform *_thisObj, *_transform;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(transform, _transform);
    _thisObj->set(*_transform);
}
DEFINE_PRIM(hx_Transform_set_Trans, 2);

// DECL: void set(const Vector3& scale, const Matrix& rotation, const Vector3& translation);
void hx_Transform_set_V3_Mat_V3(value thisObj, value scale, value rotation, value translation)
{
    Transform *_thisObj;
    Vector3 *_scale, *_translation;
    Matrix *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    ValueToObject(translation, _translation);
    ValueToObject(rotation, _rotation);
    _thisObj->set(*_scale, *_rotation, *_translation);
}
DEFINE_PRIM(hx_Transform_set_V3_Mat_V3, 4);

// DECL: void set(const Vector3& scale, const Quaternion& rotation, const Vector3& translation);
void hx_Transform_set_V3_Qtrn_V3(value thisObj, value scale, value rotation, value translation)
{
    Transform *_thisObj;
    Vector3 *_scale, *_translation;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    ValueToObject(translation, _translation);
    ValueToObject(rotation, _rotation);
    _thisObj->set(*_scale, *_rotation, *_translation);
}
DEFINE_PRIM(hx_Transform_set_V3_Qtrn_V3, 4);

// DECL: void set(const Vector3& scale, const Vector3& axis, float angle, const Vector3& translation);
void hx_Transform_set_V3X2_Flt_V3(value thisObj, value scale, value axis, value angle, value translation)
{
    Transform *_thisObj;
    Vector3 *_scale, *_axis, *_translation;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    ValueToObject(axis, _axis);
    ValueToObject(translation, _translation);
    _thisObj->set(*_scale, *_axis, _angle, *_translation);
}
DEFINE_PRIM(hx_Transform_set_V3X2_Flt_V3, 5);

// DECL: void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
void hx_Transform_setAnimationPropertyValue(value thisObj, value propertyId, value val, value blendWeight)
{
    Transform *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    float _blendWeight = ValueToFloat(blendWeight);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(val, _value);
    _thisObj->setAnimationPropertyValue(_propertyId, _value, _blendWeight);
}
DEFINE_PRIM(hx_Transform_setAnimationPropertyValue, 4);

// DECL: void setIdentity();
void hx_Transform_setIdentity(value thisObj)
{
    Transform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->setIdentity();
}
DEFINE_PRIM(hx_Transform_setIdentity, 1);

// DECL: void setRotation(const Matrix& rotation);
void hx_Transform_setRotation_Mat(value thisObj, value rotation)
{
    Transform *_thisObj;
    Matrix *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->setRotation(*_rotation);
}
DEFINE_PRIM(hx_Transform_setRotation_Mat, 2);

// DECL: void setRotation(const Quaternion& rotation);
void hx_Transform_setRotation_Qtrn(value thisObj, value rotation)
{
    Transform *_thisObj;
    Quaternion *_rotation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(rotation, _rotation);
    _thisObj->setRotation(*_rotation);
}
DEFINE_PRIM(hx_Transform_setRotation_Qtrn, 2);

// DECL: void setRotation(const Vector3& axis, float angle);
void hx_Transform_setRotation_V3_Flt(value thisObj, value axis, value angle)
{
    Transform *_thisObj;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    _thisObj->setRotation(*_axis, _angle);
}
DEFINE_PRIM(hx_Transform_setRotation_V3_Flt, 3);

// DECL: void setRotation(float qx, float qy, float qz, float qw);
void hx_Transform_setRotation_FltX4(value thisObj, value qx, value qy, value qz, value qw)
{
    Transform *_thisObj;
    float _qx = ValueToFloat(qx);
    float _qy = ValueToFloat(qy);
    float _qz = ValueToFloat(qz);
    float _qw = ValueToFloat(qw);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRotation(_qx, _qy, _qz, _qw);
}
DEFINE_PRIM(hx_Transform_setRotation_FltX4, 5);

// DECL: void setScale(const Vector3& scale);
void hx_Transform_setScale_V3(value thisObj, value scale)
{
    Transform *_thisObj;
    Vector3 *_scale;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    _thisObj->setScale(*_scale);
}
DEFINE_PRIM(hx_Transform_setScale_V3, 2);

// DECL: void setScale(float scale);
void hx_Transform_setScale_Flt(value thisObj, value scale)
{
    Transform *_thisObj;
    float _scale = ValueToFloat(scale);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setScale(_scale);
}
DEFINE_PRIM(hx_Transform_setScale_Flt, 2);

// DECL: void setScale(float sx, float sy, float sz);
void hx_Transform_setScale_FltX3(value thisObj, value sx, value sy, value sz)
{
    Transform *_thisObj;
    float _sx = ValueToFloat(sx);
    float _sy = ValueToFloat(sy);
    float _sz = ValueToFloat(sz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setScale(_sx, _sy, _sz);
}
DEFINE_PRIM(hx_Transform_setScale_FltX3, 4);

// DECL: void setScaleX(float sx);
void hx_Transform_setScaleX(value thisObj, value sx)
{
    Transform *_thisObj;
    float _sx = ValueToFloat(sx);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setScaleX(_sx);
}
DEFINE_PRIM(hx_Transform_setScaleX, 2);

// DECL: void setScaleY(float sy);
void hx_Transform_setScaleY(value thisObj, value sy)
{
    Transform *_thisObj;
    float _sy = ValueToFloat(sy);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setScaleY(_sy);
}
DEFINE_PRIM(hx_Transform_setScaleY, 2);

// DECL: void setScaleZ(float sz);
void hx_Transform_setScaleZ(value thisObj, value sz)
{
    Transform *_thisObj;
    float _sz = ValueToFloat(sz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setScaleZ(_sz);
}
DEFINE_PRIM(hx_Transform_setScaleZ, 2);

// DECL: void setTranslation(const Vector3& translation);
void hx_Transform_setTranslation_V3(value thisObj, value translation)
{
    Transform *_thisObj;
    Vector3 *_translation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(translation, _translation);
    _thisObj->setTranslation(*_translation);
}
DEFINE_PRIM(hx_Transform_setTranslation_V3, 2);

// DECL: void setTranslation(float tx, float ty, float tz);
void hx_Transform_setTranslation_FltX3(value thisObj, value tx, value ty, value tz)
{
    Transform *_thisObj;
    float _tx = ValueToFloat(tx);
    float _ty = ValueToFloat(ty);
    float _tz = ValueToFloat(tz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTranslation(_tx, _ty, _tz);
}
DEFINE_PRIM(hx_Transform_setTranslation_FltX3, 4);

// DECL: void setTranslationX(float tx);
void hx_Transform_setTranslationX(value thisObj, value tx)
{
    Transform *_thisObj;
    float _tx = ValueToFloat(tx);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTranslationX(_tx);
}
DEFINE_PRIM(hx_Transform_setTranslationX, 2);

// DECL: void setTranslationY(float ty);
void hx_Transform_setTranslationY(value thisObj, value ty)
{
    Transform *_thisObj;
    float _ty = ValueToFloat(ty);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTranslationY(_ty);
}
DEFINE_PRIM(hx_Transform_setTranslationY, 2);

// DECL: void setTranslationZ(float tz);
void hx_Transform_setTranslationZ(value thisObj, value tz)
{
    Transform *_thisObj;
    float _tz = ValueToFloat(tz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTranslationZ(_tz);
}
DEFINE_PRIM(hx_Transform_setTranslationZ, 2);

// DECL: static void suspendTransformChanged();
void hx_Transform_static_suspendTransformChanged()
{
    Transform::suspendTransformChanged();
}
DEFINE_PRIM(hx_Transform_static_suspendTransformChanged, 0);

// DECL: void transformPoint(Vector3* point);
void hx_Transform_transformPoint_V3(value thisObj, value point)
{
    Transform *_thisObj;
    Vector3 *_point;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    _thisObj->transformPoint(_point);
}
DEFINE_PRIM(hx_Transform_transformPoint_V3, 2);

// DECL: void transformPoint(const Vector3& point, Vector3* dst);
void hx_Transform_transformPoint_V3X2(value thisObj, value point, value dst)
{
    Transform *_thisObj;
    Vector3 *_point, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    ValueToObject(dst, _dst);
    _thisObj->transformPoint(*_point, _dst);
}
DEFINE_PRIM(hx_Transform_transformPoint_V3X2, 3);

// DECL: void transformVector(Vector3* vector);
void hx_Transform_transformVector_V3(value thisObj, value vector)
{
    Transform *_thisObj;
    Vector3 *_vector;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(vector, _vector);
    _thisObj->transformVector(_vector);
}
DEFINE_PRIM(hx_Transform_transformVector_V3, 2);

// DECL: void transformVector(const Vector3& transformVector, Vector3* dst);
void hx_Transform_transformVector_V3X2(value thisObj, value transformVector, value dst)
{
    Transform *_thisObj;
    Vector3 *_transformVector, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(transformVector, _transformVector);
    ValueToObject(dst, _dst);
    _thisObj->transformVector(*_transformVector, _dst);
}
DEFINE_PRIM(hx_Transform_transformVector_V3X2, 3);

// DECL: void transformVector(float x, float y, float z, float w, Vector3* dst);
void hx_Transform_transformVector_FltX4_V3(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& z = *args++;
    const value& w = *args++;
    const value& dst = *args;

    Transform *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _w = ValueToFloat(w);
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->transformVector(_x, _y, _z, _w, _dst);
}
DEFINE_PRIM_MULT(hx_Transform_transformVector_FltX4_V3);

// DECL: void translate(const Vector3& translation);
void hx_Transform_translate_V3(value thisObj, value translation)
{
    Transform *_thisObj;
    Vector3 *_translation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(translation, _translation);
    _thisObj->translate(*_translation);
}
DEFINE_PRIM(hx_Transform_translate_V3, 2);

// DECL: void translate(float tx, float ty, float tz);
void hx_Transform_translate_FltX3(value thisObj, value tx, value ty, value tz)
{
    Transform *_thisObj;
    float _tx = ValueToFloat(tx);
    float _ty = ValueToFloat(ty);
    float _tz = ValueToFloat(tz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translate(_tx, _ty, _tz);
}
DEFINE_PRIM(hx_Transform_translate_FltX3, 4);

// DECL: void translateForward(float amount);
void hx_Transform_translateForward(value thisObj, value amount)
{
    Transform *_thisObj;
    float _amount = ValueToFloat(amount);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translateForward(_amount);
}
DEFINE_PRIM(hx_Transform_translateForward, 2);

// DECL: void translateLeft(float amount);
void hx_Transform_translateLeft(value thisObj, value amount)
{
    Transform *_thisObj;
    float _amount = ValueToFloat(amount);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translateLeft(_amount);
}
DEFINE_PRIM(hx_Transform_translateLeft, 2);

// DECL: void translateSmooth(const Vector3& target, float elapsedTime, float responseTime);
void hx_Transform_translateSmooth(value thisObj, value target, value elapsedTime, value responseTime)
{
    Transform *_thisObj;
    Vector3 *_target;
    float _elapsedTime = ValueToFloat(elapsedTime);
    float _responseTime = ValueToFloat(responseTime);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(target, _target);
    _thisObj->translateSmooth(*_target, _elapsedTime, _responseTime);
}
DEFINE_PRIM(hx_Transform_translateSmooth, 4);

// DECL: void translateUp(float amount);
void hx_Transform_translateUp(value thisObj, value amount)
{
    Transform *_thisObj;
    float _amount = ValueToFloat(amount);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translateUp(_amount);
}
DEFINE_PRIM(hx_Transform_translateUp, 2);

// DECL: void translateX(float tx);
void hx_Transform_translateX(value thisObj, value tx)
{
    Transform *_thisObj;
    float _tx = ValueToFloat(tx);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translateX(_tx);
}
DEFINE_PRIM(hx_Transform_translateX, 2);

// DECL: void translateY(float ty);
void hx_Transform_translateY(value thisObj, value ty)
{
    Transform *_thisObj;
    float _ty = ValueToFloat(ty);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translateY(_ty);
}
DEFINE_PRIM(hx_Transform_translateY, 2);

// DECL: void translateZ(float tz);
void hx_Transform_translateZ(value thisObj, value tz)
{
    Transform *_thisObj;
    float _tz = ValueToFloat(tz);
    ValueToObject(thisObj, _thisObj);
    _thisObj->translateZ(_tz);
}
DEFINE_PRIM(hx_Transform_translateZ, 2);

// END
//
