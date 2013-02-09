#include "HaxeAPI.h"

// DECL: Rectangle();
value hx_Rectangle_Construct()
{
    return ObjectToValue(new Rectangle());
}
DEFINE_PRIM(hx_Rectangle_Construct, 0);

// DECL: Rectangle(const Rectangle& copy);
value hx_Rectangle_Construct_Rct(value copy)
{
    Rectangle *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Rectangle(*_copy));
}
DEFINE_PRIM(hx_Rectangle_Construct_Rct, 1);

// DECL: Rectangle(float width, float height);
value hx_Rectangle_Construct_FltX2(value width, value height)
{
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    return ObjectToValue(new Rectangle(_width, _height));
}
DEFINE_PRIM(hx_Rectangle_Construct_FltX2, 2);

// DECL: Rectangle(float x, float y, float width, float height);
value hx_Rectangle_Construct_FltX4(value x, value y, value width, value height)
{
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    return ObjectToValue(new Rectangle(_x, _y, _width, _height));
}
DEFINE_PRIM(hx_Rectangle_Construct_FltX4, 4);

// DECL: float bottom() const;
value hx_Rectangle_bottom(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->bottom());
}
DEFINE_PRIM(hx_Rectangle_bottom, 1);

// DECL: static void combine(const Rectangle& r1, const Rectangle& r2, Rectangle* dst);
void hx_Rectangle_static_combine(value r1, value r2, value dst)
{
    Rectangle *_r1, *_r2, *_dst;
    ValueToObject(r1, _r1);
    ValueToObject(r2, _r2);
    ValueToObject(dst, _dst);
    Rectangle::combine(*_r1, *_r2, _dst);
}
DEFINE_PRIM(hx_Rectangle_static_combine, 3);

// DECL: bool contains(const Rectangle& r) const;
value hx_Rectangle_contains_Rct(value thisObj, value r)
{
    Rectangle *_thisObj, *_r;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(r, _r);
    return alloc_bool(_thisObj->contains(*_r));
}
DEFINE_PRIM(hx_Rectangle_contains_Rct, 2);

// DECL: bool contains(float x, float y) const;
value hx_Rectangle_contains_FltX2(value thisObj, value x, value y)
{
    Rectangle *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->contains(_x, _y));
}
DEFINE_PRIM(hx_Rectangle_contains_FltX2, 3);

// DECL: bool contains(float x, float y, float width, float height) const;
value hx_Rectangle_contains_FltX4(value thisObj, value x, value y, value width, value height)
{
    Rectangle *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->contains(_x, _y, _width, _height));
}
DEFINE_PRIM(hx_Rectangle_contains_FltX4, 5);

// DECL: static const Rectangle& empty();
value hx_Rectangle_static_empty()
{
    return ObjectToValue(&Rectangle::empty(), false);
}
DEFINE_PRIM(hx_Rectangle_static_empty, 0);

// DECL: void inflate(float horizontalAmount, float verticalAmount);
void hx_Rectangle_inflate(value thisObj, value horizontalAmount, value verticalAmount)
{
    Rectangle *_thisObj;
    float _horizontalAmount = ValueToFloat(horizontalAmount);
    float _verticalAmount = ValueToFloat(verticalAmount);
    ValueToObject(thisObj, _thisObj);
    _thisObj->inflate(_horizontalAmount, _verticalAmount);
}
DEFINE_PRIM(hx_Rectangle_inflate, 3);

// DECL: bool intersects(const Rectangle& r) const;
value hx_Rectangle_intersects_Rct(value thisObj, value r)
{
    Rectangle *_thisObj, *_r;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(r, _r);
    return alloc_bool(_thisObj->intersects(*_r));
}
DEFINE_PRIM(hx_Rectangle_intersects_Rct, 2);

// DECL: bool intersects(float x, float y, float width, float height) const;
value hx_Rectangle_intersects_FltX4(value thisObj, value x, value y, value width, value height)
{
    Rectangle *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->intersects(_x, _y, _width, _height));
}
DEFINE_PRIM(hx_Rectangle_intersects_FltX4, 5);

// DECL: bool isEmpty() const;
value hx_Rectangle_isEmpty(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEmpty());
}
DEFINE_PRIM(hx_Rectangle_isEmpty, 1);

// DECL: float left() const;
value hx_Rectangle_left(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->left());
}
DEFINE_PRIM(hx_Rectangle_left, 1);

// DECL: float right() const;
value hx_Rectangle_right(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->right());
}
DEFINE_PRIM(hx_Rectangle_right, 1);

// DECL: void set(const Rectangle& r);
void hx_Rectangle_set_Rct(value thisObj, value r)
{
    Rectangle *_thisObj, *_r;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(r, _r);
    _thisObj->set(*_r);
}
DEFINE_PRIM(hx_Rectangle_set_Rct, 2);

// DECL: void set(float x, float y, float width, float height);
void hx_Rectangle_set_FltX4(value thisObj, value x, value y, value width, value height)
{
    Rectangle *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(_x, _y, _width, _height);
}
DEFINE_PRIM(hx_Rectangle_set_FltX4, 5);

// DECL: void setPosition(float x, float y);
void hx_Rectangle_setPosition(value thisObj, value x, value y)
{
    Rectangle *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setPosition(_x, _y);
}
DEFINE_PRIM(hx_Rectangle_setPosition, 3);

// DECL: float top() const;
value hx_Rectangle_top(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->top());
}
DEFINE_PRIM(hx_Rectangle_top, 1);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Rectangle_property_x_get(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x);
}
DEFINE_PRIM(hx_Rectangle_property_x_get, 1);

value hx_Rectangle_property_x_set(value thisObj, value _value)
{
    Rectangle *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->x = _flt);
}
DEFINE_PRIM(hx_Rectangle_property_x_set, 2);

value hx_Rectangle_property_y_get(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y);
}
DEFINE_PRIM(hx_Rectangle_property_y_get, 1);

value hx_Rectangle_property_y_set(value thisObj, value _value)
{
    Rectangle *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->y = _flt);
}
DEFINE_PRIM(hx_Rectangle_property_y_set, 2);

value hx_Rectangle_property_width_get(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->width);
}
DEFINE_PRIM(hx_Rectangle_property_width_get, 1);

value hx_Rectangle_property_width_set(value thisObj, value _value)
{
    Rectangle *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->width = _flt);
}
DEFINE_PRIM(hx_Rectangle_property_width_set, 2);

value hx_Rectangle_property_height_get(value thisObj)
{
    Rectangle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->height);
}
DEFINE_PRIM(hx_Rectangle_property_height_get, 1);

value hx_Rectangle_property_height_set(value thisObj, value _value)
{
    Rectangle *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->height = _flt);
}
DEFINE_PRIM(hx_Rectangle_property_height_set, 2);

// END
//
