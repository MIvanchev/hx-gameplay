#include "HaxeAPI.h"

// DECL: Animation* createAnimation(const char* id, Properties* animationProperties);
value hx_AnimationTarget_createAnimation_Str_Prop(value thisObj, value id, value animationProperties)
{
    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    Properties *_animationProperties;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(animationProperties, _animationProperties);
    return ReferenceToValue(_thisObj->createAnimation(_id, _animationProperties));
}
DEFINE_PRIM(hx_AnimationTarget_createAnimation_Str_Prop, 3);

// DECL: Animation* createAnimation(const char* id, const char* url);
value hx_AnimationTarget_createAnimation_StrX2(value thisObj, value id, value url)
{
    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    const char *_url = ValueToString(url);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->createAnimation(_id, _url));
}
DEFINE_PRIM(hx_AnimationTarget_createAnimation_StrX2, 3);

// DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, Curve::InterpolationType type);
value hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFlt_Int(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& id = *args++;
    const value& propertyId = *args++;
    const value& keyCount = *args++;
    const value& keyTimes = *args++;
    const value& keyValues = *args++;
    const value& type = *args;

    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    int _propertyId = val_get_int(propertyId);
    unsigned int _keyCount = ValueToUint(keyCount);
    unsigned int *_keyTimes;;
    float *_keyValues;
    Curve::InterpolationType _type;
    ValueToObject(thisObj, _thisObj);
    ValueToArray(keyTimes, _keyTimes);
    ValueToArray(keyValues, _keyValues);
    ValueToEnum(type, _type);
    return ReferenceToValue(_thisObj->createAnimation(_id, _propertyId, _keyCount, _keyTimes, _keyValues, _type));
}
DEFINE_PRIM_MULT(hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFlt_Int);

// DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, float* keyInValue, float* keyOutValue, Curve::InterpolationType type);
value hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& id = *args++;
    const value& propertyId = *args++;
    const value& keyCount = *args++;
    const value& keyTimes = *args++;
    const value& keyValues = *args++;
    const value& keyInValue = *args++;
    const value& keyOutValue = *args++;
    const value& type = *args;

    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    int _propertyId = val_get_int(propertyId);
    unsigned int _keyCount = ValueToUint(keyCount);
    unsigned int *_keyTimes;
    float *_keyValues;
    float *_keyInValue;
    float *_keyOutValue;
    Curve::InterpolationType _type;
    ValueToObject(thisObj, _thisObj);
    ValueToArray(keyTimes, _keyTimes);
    ValueToArray(keyValues, _keyValues);
    ValueToArray(keyInValue, _keyInValue);
    ValueToArray(keyOutValue, _keyOutValue);
    ValueToEnum(type, _type);
    return ReferenceToValue(_thisObj->createAnimation(_id, _propertyId, _keyCount, _keyTimes, _keyValues, _keyInValue, _keyOutValue, _type));
}
DEFINE_PRIM_MULT(hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int);

// DECL: Animation* createAnimationFromBy(const char* id, int propertyId, float* from, float* by, Curve::InterpolationType type, unsigned long duration);
value hx_AnimationTarget_createAnimationFromBy(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& id = *args++;
    const value& propertyId = *args++;
    const value& from = *args++;
    const value& by = *args++;
    const value& type = *args++;
    const value& duration = *args;

    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    int _propertyId = val_get_int(propertyId);
    float *_from;
    float *_by;
    Curve::InterpolationType _type;
    unsigned long _duration = ValueToUlong(duration);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(from, _from);
    ValueToArray(by, _by);
    ValueToEnum(type, _type);
    return ReferenceToValue(_thisObj->createAnimationFromBy(_id, _propertyId, _from, _by, _type, _duration));
}
DEFINE_PRIM_MULT(hx_AnimationTarget_createAnimationFromBy);

// DECL: Animation* createAnimationFromTo(const char* id, int propertyId, float* from, float* to, Curve::InterpolationType type, unsigned long duration);
value hx_AnimationTarget_createAnimationFromTo(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& id = *args++;
    const value& propertyId = *args++;
    const value& from = *args++;
    const value& to = *args++;
    const value& type = *args++;
    const value& duration = *args;

    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    int _propertyId = val_get_int(propertyId);
    float *_from;
    float *_to;
    Curve::InterpolationType _type;
    unsigned long _duration = ValueToUlong(duration);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(from, _from);
    ValueToArray(to, _to);
    ValueToEnum(type, _type);
    return ReferenceToValue(_thisObj->createAnimationFromTo(_id, _propertyId, _from, _to, _type, _duration));
}
DEFINE_PRIM_MULT(hx_AnimationTarget_createAnimationFromTo);

// DECL: void destroyAnimation(const char* id = NULL);
void hx_AnimationTarget_destroyAnimation(value thisObj, value id)
{
    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    _thisObj->destroyAnimation(_id);
}
DEFINE_PRIM(hx_AnimationTarget_destroyAnimation, 2);

// DECL: Animation* getAnimation(const char* id = NULL) const;
value hx_AnimationTarget_getAnimation(value thisObj, value id)
{
    AnimationTarget *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAnimation(_id), true);
}
DEFINE_PRIM(hx_AnimationTarget_getAnimation, 2);

// DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const = 0;
value hx_AnimationTarget_getAnimationPropertyComponentCount(value thisObj, value propertyId)
{
    AnimationTarget *_thisObj;
    int _propertyId = val_get_int(propertyId);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getAnimationPropertyComponentCount(_propertyId));
}
DEFINE_PRIM(hx_AnimationTarget_getAnimationPropertyComponentCount, 2);

// DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value) = 0;
void hx_AnimationTarget_getAnimationPropertyValue(value thisObj, value propertyId, value value)
{
    AnimationTarget *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->getAnimationPropertyValue(_propertyId, _value);
}
DEFINE_PRIM(hx_AnimationTarget_getAnimationPropertyValue, 3);

// DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f) = 0;
void hx_AnimationTarget_setAnimationPropertyValue(value thisObj, value propertyId, value _value, value blendWeight)
{
    AnimationTarget *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_val;
    float _blendWeight = ValueToFloat(blendWeight);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(_value, _val);
    _thisObj->setAnimationPropertyValue(_propertyId, _val, _blendWeight);
}
DEFINE_PRIM(hx_AnimationTarget_setAnimationPropertyValue, 4);

// END
//
