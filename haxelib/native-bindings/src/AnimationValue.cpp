#include "HaxeAPI.h"

// DECL: float getFloat(unsigned int index) const;
value hx_AnimationValue_getFloat(value thisObj, value index)
{
    AnimationValue *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFloat(_index));
}
DEFINE_PRIM(hx_AnimationValue_getFloat, 2);

// DECL: void getFloats(unsigned int index, float* values, unsigned int count) const;
void hx_AnimationValue_getFloats(value thisObj, value index, value values, value count)
{
    AnimationValue *_thisObj;
    unsigned int _index = ValueToUint(index);
    float *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->getFloats(_index, _values, _count);
}
DEFINE_PRIM(hx_AnimationValue_getFloats, 4);

// DECL: void setFloat(unsigned int index, float value);
void hx_AnimationValue_setFloat(value thisObj, value index, value value)
{
    AnimationValue *_thisObj;
    unsigned int _index = ValueToUint(index);
    float _value = ValueToFloat(value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFloat(_index, _value);
}
DEFINE_PRIM(hx_AnimationValue_setFloat, 3);

// DECL: void setFloats(unsigned int index, float* values, unsigned int count);
void hx_AnimationValue_setFloats(value thisObj, value index, value values, value count)
{
    AnimationValue *_thisObj;
    unsigned int _index = ValueToUint(index);
    float *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setFloats(_index, _values, _count);
}
DEFINE_PRIM(hx_AnimationValue_setFloats, 4);

// END
//
