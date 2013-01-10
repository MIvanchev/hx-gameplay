#include "HaxeAPI.h"

// DECL: Vector2();
value hx_Vector2_Construct()
{
    return ObjectToValue(new Vector2());
}
DEFINE_PRIM(hx_Vector2_Construct, 0);

// DECL: Vector2(const Vector2& copy);
value hx_Vector2_Construct_V2(value copy)
{
    Vector2 *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Vector2(*_copy));
}
DEFINE_PRIM(hx_Vector2_Construct_V2, 1);

// DECL: Vector2(const Vector2& p1, const Vector2& p2);
value hx_Vector2_Construct_V2X2(value p1, value p2)
{
    Vector2 *_p1, *_p2;
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    return ObjectToValue(new Vector2(*_p1, *_p2));
}
DEFINE_PRIM(hx_Vector2_Construct_V2X2, 2);

// DECL: Vector2(const float* array);
value hx_Vector2_Construct_ArrFlt(value array)
{
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1))
            };
    return ObjectToValue(new Vector2(values));
}
DEFINE_PRIM(hx_Vector2_Construct_ArrFlt, 1);

// DECL: Vector2(float x, float y);
value hx_Vector2_Construct_FltX2(value x, value y)
{
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    return ObjectToValue(new Vector2(_x, _y));
}
DEFINE_PRIM(hx_Vector2_Construct_FltX2, 2);

// DECL: static void add(const Vector2& v1, const Vector2& v2, Vector2* dst);
void hx_Vector2_static_add(value v1, value v2, value dst)
{
    Vector2 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector2::add(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector2_static_add, 3);

// DECL: void add(const Vector2& v);
void hx_Vector2_add(value thisObj, value v)
{
    Vector2 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->add(*_v);
}
DEFINE_PRIM(hx_Vector2_add, 2);

// DECL: static float angle(const Vector2& v1, const Vector2& v2);
value hx_Vector2_static_angle(value v1, value v2)
{
    Vector2 *_v1, *_v2;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    return alloc_float(Vector2::angle(*_v1, *_v2));
}
DEFINE_PRIM(hx_Vector2_static_angle, 2);

// DECL: static void clamp(const Vector2& v, const Vector2& min, const Vector2& max, Vector2* dst);
void hx_Vector2_static_clamp(value v, value min, value max, value dst)
{
    Vector2 *_v, *_min, *_max, *_dst;
    ValueToObject(v, _v);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    ValueToObject(dst, _dst);
    Vector2::clamp(*_v, *_min, *_max, _dst);
}
DEFINE_PRIM(hx_Vector2_static_clamp, 4);

// DECL: void clamp(const Vector2& min, const Vector2& max);
void hx_Vector2_clamp(value thisObj, value min, value max)
{
    Vector2 *_thisObj, *_min, *_max;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    _thisObj->clamp(*_min, *_max);
}
DEFINE_PRIM(hx_Vector2_clamp, 3);

// DECL: float distance(const Vector2& v) const;
value hx_Vector2_distance(value thisObj, value v)
{
    Vector2 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->distance(*_v));
}
DEFINE_PRIM(hx_Vector2_distance, 2);

// DECL: float distanceSquared(const Vector2& v) const;
value hx_Vector2_distanceSquared(value thisObj, value v)
{
    Vector2 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->distanceSquared(*_v));
}
DEFINE_PRIM(hx_Vector2_distanceSquared, 2);

// DECL: float dot(const Vector2& v) const;
value hx_Vector2_dot(value thisObj, value v)
{
    Vector2 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    return alloc_float(_thisObj->dot(*_v));
}
DEFINE_PRIM(hx_Vector2_dot, 2);

// DECL: static float dot(const Vector2& v1, const Vector2& v2);
value hx_Vector2_static_dot(value v1, value v2)
{
    Vector2 *_v1, *_v2;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    return alloc_float(Vector2::dot(*_v1, *_v2));
}
DEFINE_PRIM(hx_Vector2_static_dot, 2);

// DECL: bool isOne() const;
value hx_Vector2_isOne(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isOne());
}
DEFINE_PRIM(hx_Vector2_isOne, 1);

// DECL: bool isZero() const;
value hx_Vector2_isZero(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isZero());
}
DEFINE_PRIM(hx_Vector2_isZero, 1);

// DECL: float length() const;
value hx_Vector2_length(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->length());
}
DEFINE_PRIM(hx_Vector2_length, 1);

// DECL: float lengthSquared() const;
value hx_Vector2_lengthSquared(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->lengthSquared());
}
DEFINE_PRIM(hx_Vector2_lengthSquared, 1);

// DECL: void negate();
void hx_Vector2_negate(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->negate();
}
DEFINE_PRIM(hx_Vector2_negate, 1);

// DECL: Vector2& normalize();
value hx_Vector2_normalize(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->normalize();
    return thisObj;
}
DEFINE_PRIM(hx_Vector2_normalize, 1);

// DECL: void normalize(Vector2* dst) const;
void hx_Vector2_normalize_V2(value thisObj, value dst)
{
    Vector2 *_thisObj, *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->normalize(_dst);
}
DEFINE_PRIM(hx_Vector2_normalize_V2, 2);

// DECL: static const Vector2& one();
value hx_Vector2_static_one()
{
    return ObjectToValue(&Vector2::one(), false);
}
DEFINE_PRIM(hx_Vector2_static_one, 0);

// DECL: void rotate(const Vector2& point, float angle);
void hx_Vector2_rotate(value thisObj, value point, value angle)
{
    Vector2 *_thisObj, *_point;
    float _angle = ValueToFloat(angle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    _thisObj->rotate(*_point, _angle);
}
DEFINE_PRIM(hx_Vector2_rotate, 3);

// DECL: void scale(const Vector2& scale);
void hx_Vector2_scale_V2(value thisObj, value scale)
{
    Vector2 *_thisObj, *_scale;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(scale, _scale);
    _thisObj->scale(*_scale);
}
DEFINE_PRIM(hx_Vector2_scale_V2, 2);

// DECL: void scale(float scalar);
void hx_Vector2_scale_Flt(value thisObj, value scalar)
{
    Vector2 *_thisObj;
    float _scalar = ValueToFloat(scalar);
    ValueToObject(thisObj, _thisObj);
    _thisObj->scale(_scalar);
}
DEFINE_PRIM(hx_Vector2_scale_Flt, 2);

// DECL: void set(const Vector2& p1, const Vector2& p2);
void hx_Vector2_set_V2X2(value thisObj, value p1, value p2)
{
    Vector2 *_thisObj, *_p1, *_p2;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    _thisObj->set(*_p1, *_p2);
}
DEFINE_PRIM(hx_Vector2_set_V2X2, 3);

// DECL: void set(const Vector2& v);
void hx_Vector2_set_V2(value thisObj, value v)
{
    Vector2 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->set(*_v);
}
DEFINE_PRIM(hx_Vector2_set_V2, 2);

// DECL: void set(const float* array);
void hx_Vector2_set_ArrFlt(value thisObj, value array)
{
    Vector2 *_thisObj;
    float values[] =
            {
                ValueToFloat(val_array_i(array, 0)),
                ValueToFloat(val_array_i(array, 1))
            };
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(values);
}
DEFINE_PRIM(hx_Vector2_set_ArrFlt, 2);

// DECL: void set(float x, float y);
void hx_Vector2_set_FltX2(value thisObj, value x, value y)
{
    Vector2 *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(_x, _y);
}
DEFINE_PRIM(hx_Vector2_set_FltX2, 3);

// DECL: void smooth(const Vector2& target, float elapsedTime, float responseTime);
void hx_Vector2_smooth(value thisObj, value target, value elapsedTime, value responseTime)
{
    Vector2 *_thisObj, *_target;
    float _elapsedTime = ValueToFloat(elapsedTime);
    float _responseTime = ValueToFloat(responseTime);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(target, _target);
    _thisObj->smooth(*_target, _elapsedTime, _responseTime);
}
DEFINE_PRIM(hx_Vector2_smooth, 4);

// DECL: static void subtract(const Vector2& v1, const Vector2& v2, Vector2* dst);
void hx_Vector2_static_subtract(value v1, value v2, value dst)
{
    Vector2 *_v1, *_v2, *_dst;
    ValueToObject(v1, _v1);
    ValueToObject(v2, _v2);
    ValueToObject(dst, _dst);
    Vector2::subtract(*_v1, *_v2, _dst);
}
DEFINE_PRIM(hx_Vector2_static_subtract, 3);

// DECL: void subtract(const Vector2& v);
void hx_Vector2_subtract(value thisObj, value v)
{
    Vector2 *_thisObj, *_v;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(v, _v);
    _thisObj->subtract(*_v);
}
DEFINE_PRIM(hx_Vector2_subtract, 2);

// DECL: static const Vector2& unitX();
value hx_Vector2_static_unitX()
{
    return ObjectToValue(&Vector2::unitX(), false);
}
DEFINE_PRIM(hx_Vector2_static_unitX, 0);

// DECL: static const Vector2& unitY();
value hx_Vector2_static_unitY()
{
    return ObjectToValue(&Vector2::unitY(), false);
}
DEFINE_PRIM(hx_Vector2_static_unitY, 0);

// DECL: static const Vector2& zero();
value hx_Vector2_static_zero()
{
    return ObjectToValue(&Vector2::zero(), false);
}
DEFINE_PRIM(hx_Vector2_static_zero, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Vector2_property_x_get(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x);
}
DEFINE_PRIM(hx_Vector2_property_x_get, 1);

value hx_Vector2_property_x_set(value thisObj, value _value)
{
    Vector2 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x = _flt);
}
DEFINE_PRIM(hx_Vector2_property_x_set, 2);

value hx_Vector2_property_y_get(value thisObj)
{
    Vector2 *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y);
}
DEFINE_PRIM(hx_Vector2_property_y_get, 1);

value hx_Vector2_property_y_set(value thisObj, value _value)
{
    Vector2 *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y = _flt);
}
DEFINE_PRIM(hx_Vector2_property_y_set, 2);

// END
//
