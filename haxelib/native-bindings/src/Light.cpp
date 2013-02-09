#include "HaxeAPI.h"

// DECL: static Light* createDirectional(const Vector3& color);
value hx_Light_static_createDirectional_V3(value color)
{
    Vector3 *_color;
    ValueToObject(color, _color);
    return ReferenceToValue(Light::createDirectional(*_color));
}
DEFINE_PRIM(hx_Light_static_createDirectional_V3, 1);

// DECL: static Light* createDirectional(float red, float green, float blue);
value hx_Light_static_createDirectional_FltX3(value red, value green, value blue)
{
    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    return ReferenceToValue(Light::createDirectional(_red, _green, _blue));
}
DEFINE_PRIM(hx_Light_static_createDirectional_FltX3, 3);

// DECL: static Light* createPoint(const Vector3& color, float range);
value hx_Light_static_createPoint_V3_Flt(value color, value range)
{
    Vector3 *_color;
    float _range = ValueToFloat(range);
    ValueToObject(color, _color);
    return ReferenceToValue(Light::createPoint(*_color, _range));
}
DEFINE_PRIM(hx_Light_static_createPoint_V3_Flt, 2);

// DECL: static Light* createPoint(float red, float green, float blue, float range);
value hx_Light_static_createPoint_FltX4(value red, value green, value blue, value range)
{
    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    float _range = ValueToFloat(range);
    return ReferenceToValue(Light::createPoint(_red, _green, _blue, _range));
}
DEFINE_PRIM(hx_Light_static_createPoint_FltX4, 4);

// DECL: static Light* createSpot(const Vector3& color, float range, float innerAngle, float outerAngle);
value hx_Light_static_createSpot_V3_FltX3(value color, value range, value innerAngle, value outerAngle)
{
    Vector3 *_color;
    float _range = ValueToFloat(range);
    float _innerAngle = ValueToFloat(innerAngle);
    float _outerAngle = ValueToFloat(outerAngle);
    ValueToObject(color, _color);
    return ReferenceToValue(Light::createSpot(*_color, _range, _innerAngle, _outerAngle));
}
DEFINE_PRIM(hx_Light_static_createSpot_V3_FltX3, 4);

// DECL: static Light* createSpot(float red, float green, float blue, float range, float innerAngle, float outerAngle);
value hx_Light_static_createSpot_FltX6(value *args, int nargs)
{
    const value& red = *args++;
    const value& green = *args++;
    const value& blue = *args++;
    const value& range = *args++;
    const value& innerAngle = *args++;
    const value& outerAngle = *args;

    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    float _range = ValueToFloat(range);
    float _innerAngle = ValueToFloat(innerAngle);
    float _outerAngle = ValueToFloat(outerAngle);
    return ReferenceToValue(Light::createSpot(_red, _green, _blue, _range, _innerAngle, _outerAngle));
}
DEFINE_PRIM_MULT(hx_Light_static_createSpot_FltX6);

// DECL: const Vector3& getColor() const;
value hx_Light_getColor(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getColor(), false);
}
DEFINE_PRIM(hx_Light_getColor, 1);

// DECL: float getInnerAngle() const;
value hx_Light_getInnerAngle(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getInnerAngle());
}
DEFINE_PRIM(hx_Light_getInnerAngle, 1);

// DECL: float getInnerAngleCos() const;
value hx_Light_getInnerAngleCos(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getInnerAngleCos());
}
DEFINE_PRIM(hx_Light_getInnerAngleCos, 1);

// DECL: Type getLightType() const;
value hx_Light_getLightType(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getLightType());
}
DEFINE_PRIM(hx_Light_getLightType, 1);

// DECL: Node* getNode() const;
value hx_Light_getNode(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_Light_getNode, 1);

// DECL: float getOuterAngle() const;
value hx_Light_getOuterAngle(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getOuterAngle());
}
DEFINE_PRIM(hx_Light_getOuterAngle, 1);

// DECL: float getOuterAngleCos() const;
value hx_Light_getOuterAngleCos(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getOuterAngleCos());
}
DEFINE_PRIM(hx_Light_getOuterAngleCos, 1);

// DECL: float getRange() const;
value hx_Light_getRange(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRange());
}
DEFINE_PRIM(hx_Light_getRange, 1);

// DECL: float getRangeInverse() const;
value hx_Light_getRangeInverse(value thisObj)
{
    Light *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRangeInverse());
}
DEFINE_PRIM(hx_Light_getRangeInverse, 1);

// DECL: void setColor(const Vector3& color);
void hx_Light_setColor_V3(value thisObj, value color)
{
    Light *_thisObj;
    Vector3 *_color;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->setColor(*_color);
}
DEFINE_PRIM(hx_Light_setColor_V3, 2);

// DECL: void setColor(float red, float green, float blue);
void hx_Light_setColor_FltX3(value thisObj, value red, value green, value blue)
{
    Light *_thisObj;
    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setColor(_red, _green, _blue);
}
DEFINE_PRIM(hx_Light_setColor_FltX3, 4);

// DECL: void setInnerAngle(float innerAngle);
void hx_Light_setInnerAngle(value thisObj, value innerAngle)
{
    Light *_thisObj;
    float _innerAngle = ValueToFloat(innerAngle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setInnerAngle(_innerAngle);
}
DEFINE_PRIM(hx_Light_setInnerAngle, 2);

// DECL: void setOuterAngle(float outerAngle);
void hx_Light_setOuterAngle(value thisObj, value outerAngle)
{
    Light *_thisObj;
    float _outerAngle = ValueToFloat(outerAngle);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setOuterAngle(_outerAngle);
}
DEFINE_PRIM(hx_Light_setOuterAngle, 2);

// DECL: void setRange(float range);
void hx_Light_setRange(value thisObj, value range)
{
    Light *_thisObj;
    float _range = ValueToFloat(range);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRange(_range);
}
DEFINE_PRIM(hx_Light_setRange, 2);

// END
//
