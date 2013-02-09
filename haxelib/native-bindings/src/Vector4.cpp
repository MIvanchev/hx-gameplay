#include "HaxeAPI.h"

// DECL: Vector4();
value hx_Vector4_Construct()
{
    return ObjectToValue(new Vector4());
}
DEFINE_PRIM(hx_Vector4_Construct, 0);

// DECL: Vector4(const Vector4& copy);
value hx_Vector4_Construct_V4(value copy)
{
    Vector4 *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Vector4(*_copy));
}
DEFINE_PRIM(hx_Vector4_Construct_V4, 1);

// DECL: Vector4(const Vector4& p1, const Vector4& p2);
value hx_Vector4_Construct_V4X2(value p1, value p2)
{
    Vector4 *_p1, *_p2;
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    return ObjectToValue(new Vector4(*_p1, *_p2));
}
DEFINE_PRIM(hx_Vector4_Construct_V4X2, 2);

// DECL: Vector4(const float* array);
value hx_Vector4_Construct_ArrFlt(value array)
{
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1)),
                ValueToFloat(val_array_i(array, 2)),
                ValueToFloat(val_array_i(array, 3))
            };
    return ObjectToValue(new Vector4(values));
}
DEFINE_PRIM(hx_Vector4_Construct_ArrFlt, 1);

// DECL: Vector4(float x, float y, float z, float w);
value hx_Vector4_Construct_FltX4(value x, value y, value z, value w)
{
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _w = ValueToFloat(w);
    return ObjectToValue(new Vector4(_x, _y, _z, _w));
}
DEFINE_PRIM(hx_Vector4_Construct_FltX4, 4);

// DECL: static void add(const Vector4& v1, const Vector4& v2, Vector4* dst);
void hx_Vector4_static_add(value v1, value v2, value dst)
{
    Vector4 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector4::add(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector4_static_add, 3);

// DECL: void add(const Vector4& v);
void hx_Vector4_add(value thisObj, value v)
{
    Vector4 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->add(*_v);
}
DEFINE_PRIM(hx_Vector4_add, 2);

// DECL: static float angle(const Vector4& v1, const Vector4& v2);
value hx_Vector4_static_angle(value v1, value v2)
{
    Vector4 *_v1, *_v2;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    return alloc_float(Vector4::angle(*_v1, *_v2));
}
DEFINE_PRIM(hx_Vector4_static_angle, 2);

// DECL: static void clamp(const Vector4& v, const Vector4& min, const Vector4& max, Vector4* dst);
void hx_Vector4_static_clamp(value v, value min, value max, value dst)
{
    Vector4 *_v, *_min, *_max, *_dst;
    ValueToObject(v, _v);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    ValueToObject(dst, _dst);
    Vector4::clamp(*_v, *_min, *_max, _dst);
}
DEFINE_PRIM(hx_Vector4_static_clamp, 4);

// DECL: void clamp(const Vector4& min, const Vector4& max);
void hx_Vector4_clamp(value thisObj, value min, value max)
{
    Vector4 *_thisObj, *_min, *_max;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    _thisObj->clamp(*_min, *_max);
}
DEFINE_PRIM(hx_Vector4_clamp, 3);

// DECL: float distance(const Vector4& v) const;
value hx_Vector4_distance(value thisObj, value v)
{
    Vector4 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->distance(*_v));
}
DEFINE_PRIM(hx_Vector4_distance, 2);

// DECL: float distanceSquared(const Vector4& v) const;
value hx_Vector4_distanceSquared(value thisObj, value v)
{
    Vector4 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->distanceSquared(*_v));
}
DEFINE_PRIM(hx_Vector4_distanceSquared, 2);

// DECL: float dot(const Vector4& v) const;
value hx_Vector4_dot(value thisObj, value v)
{
    Vector4 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->dot(*_v));
}
DEFINE_PRIM(hx_Vector4_dot, 2);

// DECL: static float dot(const Vector4& v1, const Vector4& v2);
value hx_Vector4_static_dot(value v1, value v2)
{
    Vector4 *_v1, *_v2;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    return alloc_float(Vector4::dot(*_v1, *_v2));
}
DEFINE_PRIM(hx_Vector4_static_dot, 2);

// DECL: static Vector4 fromColor(unsigned int color);
value hx_Vector4_static_fromColor(value color)
{
    unsigned int _color = ValueToUint(color);
    return ObjectToValue(new Vector4(Vector4::fromColor(_color)));
}
DEFINE_PRIM(hx_Vector4_static_fromColor, 1);

// DECL: bool isOne() const;
value hx_Vector4_isOne(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isOne());
}
DEFINE_PRIM(hx_Vector4_isOne, 1);

// DECL: bool isZero() const;
value hx_Vector4_isZero(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isZero());
}
DEFINE_PRIM(hx_Vector4_isZero, 1);

// DECL: float length() const;
value hx_Vector4_length(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->length());
}
DEFINE_PRIM(hx_Vector4_length, 1);

// DECL: float lengthSquared() const;
value hx_Vector4_lengthSquared(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->lengthSquared());
}
DEFINE_PRIM(hx_Vector4_lengthSquared, 1);

// DECL: void negate();
void hx_Vector4_negate(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->negate();
}
DEFINE_PRIM(hx_Vector4_negate, 1);

// DECL: Vector4& normalize();
value hx_Vector4_normalize(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->normalize();
    return thisObj;
}
DEFINE_PRIM(hx_Vector4_normalize, 1);

// DECL: void normalize(Vector4* dst) const;
void hx_Vector4_normalize_V4(value thisObj, value dst)
{
    Vector4 *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->normalize(_dst);
}
DEFINE_PRIM(hx_Vector4_normalize_V4, 2);

// DECL: static const Vector4& one();
value hx_Vector4_static_one()
{
    return ObjectToValue(&Vector4::one(), false);
}
DEFINE_PRIM(hx_Vector4_static_one, 0);

// DECL: void scale(float scalar);
void hx_Vector4_scale(value thisObj, value scalar)
{
    Vector4 *_thisObj;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_scalar);
}
DEFINE_PRIM(hx_Vector4_scale, 2);

// DECL: void set(const Vector4& p1, const Vector4& p2);
void hx_Vector4_set_V4X2(value thisObj, value p1, value p2)
{
    Vector4 *_thisObj, *_p1, *_p2;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    _thisObj->set(*_p1, *_p2);
}
DEFINE_PRIM(hx_Vector4_set_V4X2, 3);

// DECL: void set(const Vector4& v);
void hx_Vector4_set_V4(value thisObj, value v)
{
    Vector4 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->set(*_v);
}
DEFINE_PRIM(hx_Vector4_set_V4, 2);

// DECL: void set(const float* array);
void hx_Vector4_set_ArrFlt(value thisObj, value array)
{
    Vector4 *_thisObj;
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
DEFINE_PRIM(hx_Vector4_set_ArrFlt, 2);

// DECL: void set(float x, float y, float z, float w);
void hx_Vector4_set_FltX4(value thisObj, value x, value y, value z, value w)
{
    Vector4 *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _w = ValueToFloat(w);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(_x, _y, _z, _w);
}
DEFINE_PRIM(hx_Vector4_set_FltX4, 5);

// DECL: static void subtract(const Vector4& v1, const Vector4& v2, Vector4* dst);
void hx_Vector4_static_subtract(value v1, value v2, value dst)
{
    Vector4 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector4::subtract(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector4_static_subtract, 3);

// DECL: void subtract(const Vector4& v);
void hx_Vector4_subtract(value thisObj, value v)
{
    Vector4 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->subtract(*_v);
}
DEFINE_PRIM(hx_Vector4_subtract, 2);

// DECL: static const Vector4& unitW();
value hx_Vector4_static_unitW()
{
    return ObjectToValue(&Vector4::unitW(), false);
}
DEFINE_PRIM(hx_Vector4_static_unitW, 0);

// DECL: static const Vector4& unitX();
value hx_Vector4_static_unitX()
{
    return ObjectToValue(&Vector4::unitX(), false);
}
DEFINE_PRIM(hx_Vector4_static_unitX, 0);

// DECL: static const Vector4& unitY();
value hx_Vector4_static_unitY()
{
    return ObjectToValue(&Vector4::unitY(), false);
}
DEFINE_PRIM(hx_Vector4_static_unitY, 0);

// DECL: static const Vector4& unitZ();
value hx_Vector4_static_unitZ()
{
    return ObjectToValue(&Vector4::unitZ(), false);
}
DEFINE_PRIM(hx_Vector4_static_unitZ, 0);

// DECL: static const Vector4& zero();
value hx_Vector4_static_zero()
{
    return ObjectToValue(&Vector4::zero(), false);
}
DEFINE_PRIM(hx_Vector4_static_zero, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Vector4_property_w_get(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->w);
}
DEFINE_PRIM(hx_Vector4_property_w_get, 1);

value hx_Vector4_property_w_set(value thisObj, value _value)
{
    Vector4 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->w = _flt);
}
DEFINE_PRIM(hx_Vector4_property_w_set, 2);

value hx_Vector4_property_x_get(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x);
}
DEFINE_PRIM(hx_Vector4_property_x_get, 1);

value hx_Vector4_property_x_set(value thisObj, value _value)
{
    Vector4 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x = _flt);
}
DEFINE_PRIM(hx_Vector4_property_x_set, 2);

value hx_Vector4_property_y_get(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y);
}
DEFINE_PRIM(hx_Vector4_property_y_get, 1);

value hx_Vector4_property_y_set(value thisObj, value _value)
{
    Vector4 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y = _flt);
}
DEFINE_PRIM(hx_Vector4_property_y_set, 2);

value hx_Vector4_property_z_get(value thisObj)
{
    Vector4 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->z);
}
DEFINE_PRIM(hx_Vector4_property_z_get, 1);

value hx_Vector4_property_z_set(value thisObj, value _value)
{
    Vector4 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->z = _flt);
}
DEFINE_PRIM(hx_Vector4_property_z_set, 2);

// END
//
