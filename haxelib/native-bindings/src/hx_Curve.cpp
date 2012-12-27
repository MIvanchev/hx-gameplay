#include "HaxeAPI.h"

// DECL: static Curve* create(unsigned int pointCount, unsigned int componentCount);
value hx_Curve_static_create(value pointCount, value componentCount)
{
    unsigned int _pointCount = ValueToUint(pointCount);
    unsigned int _componentCount = ValueToUint(componentCount);
    return ReferenceToValue(Curve::create(_pointCount, _componentCount));
}
DEFINE_PRIM(hx_Curve_static_create, 2);

// DECL: void evaluate(float time, float* dst) const;
void hx_Curve_evaluate(value thisObj, value time, value dst)
{
    Curve *_thisObj;
    float _time = ValueToFloat(time);
    float *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToArray(dst, _dst);
    _thisObj->evaluate(_time, _dst);
}
DEFINE_PRIM(hx_Curve_evaluate, 3);

// DECL: unsigned int getComponentCount() const;
value hx_Curve_getComponentCount(value thisObj)
{
    Curve *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getComponentCount());
}
DEFINE_PRIM(hx_Curve_getComponentCount, 1);

// DECL: float getEndTime() const;
value hx_Curve_getEndTime(value thisObj)
{
    Curve *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getEndTime());
}
DEFINE_PRIM(hx_Curve_getEndTime, 1);

// DECL: unsigned int getPointCount() const;
value hx_Curve_getPointCount(value thisObj)
{
    Curve *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getPointCount());
}
DEFINE_PRIM(hx_Curve_getPointCount, 1);

// DECL: float getStartTime() const;
value hx_Curve_getStartTime(value thisObj)
{
    Curve *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStartTime());
}
DEFINE_PRIM(hx_Curve_getStartTime, 1);

// DECL: static float lerp(float t, float from, float to);
value hx_Curve_static_lerp(value t, value from, value to)
{
    float _t = ValueToFloat(t);
    float _from = ValueToFloat(from);
    float _to = ValueToFloat(to);
    return alloc_float(Curve::lerp(_t, _from, _to));
}
DEFINE_PRIM(hx_Curve_static_lerp, 3);

// DECL: void setPoint(unsigned int index, float time, float* value, InterpolationType type);
void hx_Curve_setPoint_Int_Flt_ArrFlt_Int(value thisObj, value index, value time, value val, value type)
{
    Curve *_thisObj;
    unsigned int _index = ValueToUint(index);
    float _time = ValueToFloat(time);
    float *_value;
    Curve::InterpolationType _type;
    ValueToObject(thisObj, _thisObj);
    ValueToArray(val, _value);
    ValueToEnum(type, _type);
    _thisObj->setPoint(_index, _time, _value, _type);
}
DEFINE_PRIM(hx_Curve_setPoint_Int_Flt_ArrFlt_Int, 5);

// DECL: void setPoint(unsigned int index, float time, float* value, InterpolationType type, float* inValue, float* outValue);
void hx_Curve_setPoint_Int_Flt_ArrFlt_Int_ArrFltX2(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& index = *args++;
    const value& time = *args++;
    const value& val = *args++;
    const value& type = *args++;
    const value& inValue = *args++;
    const value& outValue = *args;

    Curve *_thisObj;
    unsigned int _index = ValueToUint(index);
    float _time = ValueToFloat(time);
    float *_value;
    Curve::InterpolationType _type;
    float *_inValue;
    float *_outValue;
    ValueToObject(thisObj, _thisObj);
    ValueToArray(val, _value);
    ValueToEnum(type, _type);
    ValueToArray(inValue, _inValue);
    ValueToArray(outValue, _outValue);
    _thisObj->setPoint(_index, _time, _value, _type, _inValue, _outValue);
}
DEFINE_PRIM_MULT(hx_Curve_setPoint_Int_Flt_ArrFlt_Int_ArrFltX2);

// DECL: void setTangent(unsigned int index, InterpolationType type, float* inValue, float* outValue);
void hx_Curve_setTangent(value thisObj, value index, value type, value inValue, value outValue)
{
    Curve *_thisObj;
    unsigned int _index = ValueToUint(index);
    Curve::InterpolationType _type;
    float *_inValue;
    float *_outValue;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(type, _type);
    ValueToArray(inValue, _inValue);
    ValueToArray(outValue, _outValue);
    _thisObj->setTangent(_index, _type, _inValue, _outValue);
}
DEFINE_PRIM(hx_Curve_setTangent, 5);

// END
//
