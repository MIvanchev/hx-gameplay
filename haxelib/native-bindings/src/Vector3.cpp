#include "HaxeAPI.h"

// DECL: Vector3();
value hx_Vector3_Construct()
{
    return ObjectToValue(new Vector3());
}
DEFINE_PRIM(hx_Vector3_Construct, 0);

// DECL: Vector3(const Vector3& copy);
value hx_Vector3_Construct_V3(value copy)
{
    Vector3 *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Vector3(*_copy));
}
DEFINE_PRIM(hx_Vector3_Construct_V3, 1);

// DECL: Vector3(const Vector3& p1, const Vector3& p2);
value hx_Vector3_Construct_V3X2(value p1, value p2)
{
    Vector3 *_p1, *_p2;
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    return ObjectToValue(new Vector3(*_p1, *_p2));
}
DEFINE_PRIM(hx_Vector3_Construct_V3X2, 2);

// DECL: Vector3(const float* array);
value hx_Vector3_Construct_ArrFlt(value array)
{
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1)),
                ValueToFloat(val_array_i(array, 2))
            };
    return ObjectToValue(new Vector3(values));
}
DEFINE_PRIM(hx_Vector3_Construct_ArrFlt, 1);

// DECL: Vector3(float x, float y, float z);
value hx_Vector3_Construct_FltX3(value x, value y, value z)
{
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    return ObjectToValue(new Vector3(_x, _y, _z));
}
DEFINE_PRIM(hx_Vector3_Construct_FltX3, 3);

// DECL: static void add(const Vector3& v1, const Vector3& v2, Vector3* dst);
void hx_Vector3_static_add(value v1, value v2, value dst)
{
    Vector3 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector3::add(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector3_static_add, 3);

// DECL: void add(const Vector3& v);
void hx_Vector3_add(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->add(*_v);
}
DEFINE_PRIM(hx_Vector3_add, 2);

// DECL: static float angle(const Vector3& v1, const Vector3& v2);
value hx_Vector3_static_angle(value v1, value v2)
{
    Vector3 *_v1, *_v2;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    return alloc_float(Vector3::angle(*_v1, *_v2));
}
DEFINE_PRIM(hx_Vector3_static_angle, 2);

// DECL: static void clamp(const Vector3& v, const Vector3& min, const Vector3& max, Vector3* dst);
void hx_Vector3_static_clamp(value v, value min, value max, value dst)
{
    Vector3 *_v, *_min, *_max, *_dst;
    ValueToObject(v, _v);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    ValueToObject(dst, _dst);
    Vector3::clamp(*_v, *_min, *_max, _dst);
}
DEFINE_PRIM(hx_Vector3_static_clamp, 4);

// DECL: void clamp(const Vector3& min, const Vector3& max);
void hx_Vector3_clamp(value thisObj, value min, value max)
{
    Vector3 *_thisObj, *_min, *_max;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    _thisObj->clamp(*_min, *_max);
}
DEFINE_PRIM(hx_Vector3_clamp, 3);

// DECL: static void cross(const Vector3& v1, const Vector3& v2, Vector3* dst);
void hx_Vector3_static_cross(value v1, value v2, value dst)
{
    Vector3 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector3::cross(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector3_static_cross, 3);

// DECL: void cross(const Vector3& v);
void hx_Vector3_cross(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->cross(*_v);
}
DEFINE_PRIM(hx_Vector3_cross, 2);

// DECL: float distance(const Vector3& v) const;
value hx_Vector3_distance(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->distance(*_v));
}
DEFINE_PRIM(hx_Vector3_distance, 2);

// DECL: float distanceSquared(const Vector3& v) const;
value hx_Vector3_distanceSquared(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->distanceSquared(*_v));
}
DEFINE_PRIM(hx_Vector3_distanceSquared, 2);

// DECL: float dot(const Vector3& v) const;
value hx_Vector3_dot(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->dot(*_v));
}
DEFINE_PRIM(hx_Vector3_dot, 2);

// DECL: static float dot(const Vector3& v1, const Vector3& v2);
value hx_Vector3_static_dot(value v1, value v2)
{
    Vector3 *_v1, *_v2;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    return alloc_float(Vector3::dot(*_v1, *_v2));
}
DEFINE_PRIM(hx_Vector3_static_dot, 2);

// DECL: static Vector3 fromColor(unsigned int color);
value hx_Vector3_static_fromColor(value color)
{
    unsigned int _color = ValueToUint(color);
    return ObjectToValue(new Vector3(Vector3::fromColor(_color)));
}
DEFINE_PRIM(hx_Vector3_static_fromColor, 1);

// DECL: bool isOne() const;
value hx_Vector3_isOne(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isOne());
}
DEFINE_PRIM(hx_Vector3_isOne, 1);

// DECL: bool isZero() const;
value hx_Vector3_isZero(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isZero());
}
DEFINE_PRIM(hx_Vector3_isZero, 1);

// DECL: float length() const;
value hx_Vector3_length(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->length());
}
DEFINE_PRIM(hx_Vector3_length, 1);

// DECL: float lengthSquared() const;
value hx_Vector3_lengthSquared(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->lengthSquared());
}
DEFINE_PRIM(hx_Vector3_lengthSquared, 1);

// DECL: void negate();
void hx_Vector3_negate(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->negate();
}
DEFINE_PRIM(hx_Vector3_negate, 1);

// DECL: Vector3& normalize();
value hx_Vector3_normalize(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->normalize();
    return thisObj;
}
DEFINE_PRIM(hx_Vector3_normalize, 1);

// DECL: void normalize(Vector3* dst) const;
void hx_Vector3_normalize_V3(value thisObj, value dst)
{
    Vector3 *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->normalize(_dst);
}
DEFINE_PRIM(hx_Vector3_normalize_V3, 2);

// DECL: static const Vector3& one();
value hx_Vector3_static_one()
{
    return ObjectToValue(&Vector3::one(), false);
}
DEFINE_PRIM(hx_Vector3_static_one, 0);

void hx_Vector3_scale(value thisObj, value scalar)
{
    Vector3 *_thisObj;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_scalar);
}
DEFINE_PRIM(hx_Vector3_scale, 2);

// DECL: void set(const Vector3& p1, const Vector3& p2);
void hx_Vector3_set_V3X2(value thisObj, value p1, value p2)
{
    Vector3 *_thisObj, *_p1, *_p2;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    _thisObj->set(*_p1, *_p2);
}
DEFINE_PRIM(hx_Vector3_set_V3X2, 3);

// DECL: void set(const Vector3& v);
void hx_Vector3_set_V3(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->set(*_v);
}
DEFINE_PRIM(hx_Vector3_set_V3, 2);

// DECL: void set(const float* array);
void hx_Vector3_set_ArrFlt(value thisObj, value array)
{
    Vector3 *_thisObj;
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1)),
                ValueToFloat(val_array_i(array, 2))
            };
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(values);
}
DEFINE_PRIM(hx_Vector3_set_ArrFlt, 2);

// DECL: void set(float x, float y, float z);
void hx_Vector3_set_FltX3(value thisObj, value x, value y, value z)
{
    Vector3 *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(_x, _y, _z);
}
DEFINE_PRIM(hx_Vector3_set_FltX3, 4);

// DECL: void smooth(const Vector3& target, float elapsedTime, float responseTime);
void hx_Vector3_smooth(value thisObj, value target, value elapsedTime, value responseTime)
{
    Vector3 *_thisObj, *_target;
    float _elapsedTime = ValueToFloat(elapsedTime);
    float _responseTime = ValueToFloat(responseTime);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(target, _target);
    _thisObj->smooth(*_target, _elapsedTime, _responseTime);
}
DEFINE_PRIM(hx_Vector3_smooth, 4);

// DECL: static void subtract(const Vector3& v1, const Vector3& v2, Vector3* dst);
void hx_Vector3_static_subtract(value v1, value v2, value dst)
{
    Vector3 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector3::subtract(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector3_static_subtract, 3);

// DECL: void subtract(const Vector3& v);
void hx_Vector3_subtract(value thisObj, value v)
{
    Vector3 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->subtract(*_v);
}
DEFINE_PRIM(hx_Vector3_subtract, 2);

// DECL: static const Vector3& unitX();
value hx_Vector3_static_unitX()
{
    return ObjectToValue(&Vector3::unitX(), false);
}
DEFINE_PRIM(hx_Vector3_static_unitX, 0);

// DECL: static const Vector3& unitY();
value hx_Vector3_static_unitY()
{
    return ObjectToValue(&Vector3::unitY(), false);
}
DEFINE_PRIM(hx_Vector3_static_unitY, 0);

// DECL: static const Vector3& unitZ();
value hx_Vector3_static_unitZ()
{
    return ObjectToValue(&Vector3::unitZ(), false);
}
DEFINE_PRIM(hx_Vector3_static_unitZ, 0);

// DECL: static const Vector3& zero();
value hx_Vector3_static_zero()
{
    return ObjectToValue(&Vector3::zero(), false);
}
DEFINE_PRIM(hx_Vector3_static_zero, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Vector3_property_x_get(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x);
}
DEFINE_PRIM(hx_Vector3_property_x_get, 1);

value hx_Vector3_property_x_set(value thisObj, value _value)
{
    Vector3 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x = _flt);
}
DEFINE_PRIM(hx_Vector3_property_x_set, 2);

value hx_Vector3_property_y_get(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y);
}
DEFINE_PRIM(hx_Vector3_property_y_get, 1);

value hx_Vector3_property_y_set(value thisObj, value _value)
{
    Vector3 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y = _flt);
}
DEFINE_PRIM(hx_Vector3_property_y_set, 2);

value hx_Vector3_property_z_get(value thisObj)
{
    Vector3 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->z);
}
DEFINE_PRIM(hx_Vector3_property_z_get, 1);

value hx_Vector3_property_z_set(value thisObj, value _value)
{
    Vector3 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->z = _flt);
}
DEFINE_PRIM(hx_Vector3_property_z_set, 2);

// END
//
