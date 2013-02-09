#include "HaxeAPI.h"

// DECL: Quaternion();
value hx_Quaternion_Construct()
{
    return ObjectToValue(new Quaternion());
}
DEFINE_PRIM(hx_Quaternion_Construct, 0);

// DECL: Quaternion(const Matrix& m);
value hx_Quaternion_Construct_Mat(value m)
{
    Matrix *_m;
    ValueToObject(m, _m);
    return ObjectToValue(new Quaternion(*_m));
}
DEFINE_PRIM(hx_Quaternion_Construct_Mat, 1);

// DECL: Quaternion(const Quaternion& copy);
value hx_Quaternion_Construct_Qtrn(value copy)
{
    Quaternion *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Quaternion(*_copy));
}
DEFINE_PRIM(hx_Quaternion_Construct_Qtrn, 1);

// DECL: Quaternion(const Vector3& axis, float angle);
value hx_Quaternion_Construct_V3_Flt(value axis, value angle)
{
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(axis, _axis);
    return ObjectToValue(new Quaternion(*_axis, _angle));
}
DEFINE_PRIM(hx_Quaternion_Construct_V3_Flt, 2);

// DECL: Quaternion(float x, float y, float z, float w);
value hx_Quaternion_Construct_FltX4(value x, value y, value z, value w)
{
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _w = ValueToFloat(w);
    return ObjectToValue(new Quaternion(_x, _y, _z, _w));
}
DEFINE_PRIM(hx_Quaternion_Construct_FltX4, 4);

// DECL: Quaternion(float* array);
value hx_Quaternion_Construct_ArrFlt(value array)
{
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1)),
                ValueToFloat(val_array_i(array, 2)),
                ValueToFloat(val_array_i(array, 3))
            };
    return ObjectToValue(new Quaternion(values));
}
DEFINE_PRIM(hx_Quaternion_Construct_ArrFlt, 1);

// DECL: void conjugate();
void hx_Quaternion_conjugate(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->conjugate();
}
DEFINE_PRIM(hx_Quaternion_conjugate, 1);

// DECL: void conjugate(Quaternion* dst) const;
void hx_Quaternion_conjugate_Qtrn(value thisObj, value dst)
{
    Quaternion *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->conjugate(_dst);
}
DEFINE_PRIM(hx_Quaternion_conjugate_Qtrn, 2);

// DECL: static void createFromAxisAngle(const Vector3& axis, float angle, Quaternion* dst);
void hx_Quaternion_static_createFromAxisAngle(value axis, value angle, value dst)
{
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);;
    Quaternion *_dst;
    ValueToObject(axis, _axis);
    ValueToObject(dst, _dst);
    Quaternion::createFromAxisAngle(*_axis, _angle, _dst);
}
DEFINE_PRIM(hx_Quaternion_static_createFromAxisAngle, 3);

// DECL: static void createFromRotationMatrix(const Matrix& m, Quaternion* dst);
void hx_Quaternion_static_createFromRotationMatrix(value m, value dst)
{
    Matrix *_m;
    Quaternion *_dst;
    ValueToObject(m, _m);
    ValueToObject(dst, _dst);
    Quaternion::createFromRotationMatrix(*_m, _dst);
}
DEFINE_PRIM(hx_Quaternion_static_createFromRotationMatrix, 2);

// DECL: static const Quaternion& identity();
value hx_Quaternion_static_identity()
{
    return ObjectToValue(&Quaternion::identity(), false);
}
DEFINE_PRIM(hx_Quaternion_static_identity, 0);

// DECL: bool inverse();
value hx_Quaternion_inverse(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->inverse());
}
DEFINE_PRIM(hx_Quaternion_inverse, 1);

// DECL: bool inverse(Quaternion* dst) const;
value hx_Quaternion_inverse_Qtrn(value thisObj, value dst)
{
    Quaternion *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    return alloc_bool(_thisObj->inverse(_dst));
}
DEFINE_PRIM(hx_Quaternion_inverse_Qtrn, 2);

// DECL: bool isIdentity() const;
value hx_Quaternion_isIdentity(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isIdentity());
}
DEFINE_PRIM(hx_Quaternion_isIdentity, 1);

// DECL: bool isZero() const;
value hx_Quaternion_isZero(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isZero());
}
DEFINE_PRIM(hx_Quaternion_isZero, 1);

// DECL: static void lerp(const Quaternion& q1, const Quaternion& q2, float t, Quaternion* dst);
void hx_Quaternion_static_lerp(value q1, value q2, value t, value dst)
{
    Quaternion *_q1, *_q2, *_dst;
    float _t = ValueToFloat(t);
    ValueToObject(q1, _q1);
    ValueToObject(q2, _q2);
    ValueToObject(dst, _dst);
    return Quaternion::lerp(*_q1, *_q2, _t, _dst);
}
DEFINE_PRIM(hx_Quaternion_static_lerp, 4);

// DECL: static void multiply(const Quaternion& q1, const Quaternion& q2, Quaternion* dst);
void hx_Quaternion_static_multiply(value q1, value q2, value dst)
{
    Quaternion *_q1, *_q2, *_dst;
    ValueToObject(q1, _q1);
    ValueToObject(q2, _q2);
    ValueToObject(dst, _dst);
    return Quaternion::multiply(*_q1, *_q2, _dst);
}
DEFINE_PRIM(hx_Quaternion_static_multiply, 3);

// DECL: void multiply(const Quaternion& q);
void hx_Quaternion_multiply(value thisObj, value q)
{
    Quaternion *_thisObj, *_q;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(q, _q);
    _thisObj->multiply(*_q);
}
DEFINE_PRIM(hx_Quaternion_multiply, 2);

// DECL: void normalize();
void hx_Quaternion_normalize(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->normalize();
}
DEFINE_PRIM(hx_Quaternion_normalize, 1);

// DECL: void normalize(Quaternion* dst) const;
void hx_Quaternion_normalize_Qtrn(value thisObj, value dst)
{
    Quaternion *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->normalize(_dst);
}
DEFINE_PRIM(hx_Quaternion_normalize_Qtrn, 2);

// DECL: void set(const Matrix& m);
void hx_Quaternion_set_Mat(value thisObj, value m)
{
    Quaternion *_thisObj;
    Matrix *_m;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(m, _m);
    _thisObj->set(*_m);
}
DEFINE_PRIM(hx_Quaternion_set_Mat, 2);

// DECL: void set(const Quaternion& q);
void hx_Quaternion_set_Qtrn(value thisObj, value q)
{
    Quaternion *_thisObj, *_q;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(q, _q);
    _thisObj->set(*_q);
}
DEFINE_PRIM(hx_Quaternion_set_Qtrn, 2);

// DECL: void set(const Vector3& axis, float angle);
void hx_Quaternion_set_V3_Flt(value thisObj, value axis, value angle)
{
    Quaternion *_thisObj;
    Vector3 *_axis;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    _thisObj->set(*_axis, _angle);
}
DEFINE_PRIM(hx_Quaternion_set_V3_Flt, 3);

// DECL: void set(float x, float y, float z, float w);
void hx_Quaternion_set_FltX4(value thisObj, value x, value y, value z, value w)
{
    Quaternion *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _w = ValueToFloat(w);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(_x, _y, _z, _w);
}
DEFINE_PRIM(hx_Quaternion_set_FltX4, 5);

// DECL: void set(float* array);
void hx_Quaternion_set_ArrFlt(value thisObj, value array)
{
    Quaternion *_thisObj;
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1)),
                ValueToFloat(val_array_i(array, 2)),
                ValueToFloat(val_array_i(array, 3))
            };
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(values);
}
DEFINE_PRIM(hx_Quaternion_set_ArrFlt, 2);

// DECL: void setIdentity();
void hx_Quaternion_setIdentity(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->setIdentity();
}
DEFINE_PRIM(hx_Quaternion_setIdentity, 1);

// DECL: static void slerp(const Quaternion& q1, const Quaternion& q2, float t, Quaternion* dst);
void hx_Quaternion_static_slerp(value q1, value q2, value t, value dst)
{
    Quaternion *_q1, *_q2, *_dst;
    float _t = ValueToFloat(t);
    ValueToObject(q1, _q1);
    ValueToObject(q2, _q2);
    ValueToObject(dst, _dst);
    return Quaternion::slerp(*_q1, *_q2, _t, _dst);
}
DEFINE_PRIM(hx_Quaternion_static_slerp, 4);

// DECL: static void squad(const Quaternion& q1, const Quaternion& q2, const Quaternion& s1, const Quaternion& s2, float t, Quaternion* dst);
void hx_Quaternion_static_squad(value *args, int nargs)
{
    const value& q1 = *args++;
    const value& q2 = *args++;
    const value& s1 = *args++;
    const value& s2 = *args++;
    const value& t = *args++;
    const value& dst = *args;

    Quaternion *_q1, *_q2, *_s1, *_s2, *_dst;
    float _t = ValueToFloat(t);
    ValueToObject(q1, _q1);
    ValueToObject(q2, _q2);
    ValueToObject(s1, _s1);
    ValueToObject(s2, _s2);
    ValueToObject(dst, _dst);
    return Quaternion::squad(*_q1, *_q2, *_s1, *_s2, _t, _dst);
}
DEFINE_PRIM_MULT(hx_Quaternion_static_squad);

// DECL: float toAxisAngle(Vector3* e) const;
value hx_Quaternion_toAxisAngle(value thisObj, value e)
{
    Quaternion *_thisObj;
    Vector3 *_e;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(e, _e);
    return alloc_float(_thisObj->toAxisAngle(_e));
}
DEFINE_PRIM(hx_Quaternion_toAxisAngle, 2);

// DECL: static const Quaternion& zero();
value hx_Quaternion_static_zero()
{
    return ObjectToValue(&Quaternion::zero(), false);
}
DEFINE_PRIM(hx_Quaternion_static_zero, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Quaternion_property_w_get(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->w);
}
DEFINE_PRIM(hx_Quaternion_property_w_get, 1);

value hx_Quaternion_property_w_set(value thisObj, value _value)
{
    Quaternion *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->w = _flt);
}
DEFINE_PRIM(hx_Quaternion_property_w_set, 2);

value hx_Quaternion_property_x_get(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x);
}
DEFINE_PRIM(hx_Quaternion_property_x_get, 1);

value hx_Quaternion_property_x_set(value thisObj, value _value)
{
    Quaternion *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x = _flt);
}
DEFINE_PRIM(hx_Quaternion_property_x_set, 2);

value hx_Quaternion_property_y_get(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y);
}
DEFINE_PRIM(hx_Quaternion_property_y_get, 1);

value hx_Quaternion_property_y_set(value thisObj, value _value)
{
    Quaternion *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y = _flt);
}
DEFINE_PRIM(hx_Quaternion_property_y_set, 2);

value hx_Quaternion_property_z_get(value thisObj)
{
    Quaternion *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->z);
}
DEFINE_PRIM(hx_Quaternion_property_z_get, 1);

value hx_Quaternion_property_z_set(value thisObj, value _value)
{
    Quaternion *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->z = _flt);
}
DEFINE_PRIM(hx_Quaternion_property_z_set, 2);

// END
//
