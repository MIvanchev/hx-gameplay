#include "HaxeAPI.h"




// TODO:
// DECL: void bindValue(ClassType* classInstance, ParameterType (ClassType::*valueMethod)() const);
void hx_MaterialParameter_bindValue_Func_Str(value thisObj, value valueMethod, value type)
{
    MaterialParameter *_thisObj;
    const char *_type = ValueToString(type);
    Binder *binder = ValueToBinder(valueMethod);
    ValueToObject(thisObj, _thisObj);
    const char *ptr;

#ifdef __GNUC__
    #define CONVERSION(x) (void*) (x)
#else
    #define CONVERSION(x) x
#endif
#define APPLY_BINDER(typestr, dest, extractor)                          \
    ptr = strstr(_type, typestr);                                       \
    if (ptr != NULL && strlen(ptr) == strlen(typestr))                  \
    {                                                                   \
        if (false) extractor(alloc_null());                             \
        binder->converter = CONVERSION(&extractor);                     \
        _thisObj->bindValue<Binder, dest>(binder, &Binder::callBinder); \
        return;                                                         \
    }

    APPLY_BINDER("Float", float, val_get_double)
    APPLY_BINDER("Int", int, val_get_int)
    APPLY_BINDER("Vector2", Vector2*, ExtractObject<Vector2>)
    APPLY_BINDER("Vector3", Vector3*, ExtractObject<Vector3>)
    APPLY_BINDER("Vector4", Vector4*, ExtractObject<Vector4>)
    APPLY_BINDER("Matrix", Matrix*, ExtractObject<Matrix>)
    APPLY_BINDER("Texture_Sampler", Texture::Sampler*, ExtractObject<Texture::Sampler>)
}
DEFINE_PRIM(hx_MaterialParameter_bindValue_Func_Str, 3);

// TODO:
// DECL: void bindValue(ClassType* classInstance, ParameterType (ClassType::*valueMethod)() const, unsigned int (ClassType::*countMethod)() const);
// void hx_MaterialParameter_bindValue(value thisObj, value classInstance, value const, value const)
// {
    // MaterialParameter *_thisObj;
    // ClassType *_classInstance;
    // ParameterType (ClassType::*valueMethod)() *_const;
    // unsigned int (ClassType::*countMethod)() *_const;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(classInstance, _classInstance);
    // ValueToObject(const, _const);
    // ValueToObject(const, _const);
    // _thisObj->bindValue(_classInstance, _const, _const);
// }
// DEFINE_PRIM(hx_MaterialParameter_bindValue, 4);

// DECL: void bindValue(Node* node, const char* binding);
void hx_MaterialParameter_bindValue_Node_Str(value thisObj, value node, value binding)
{
    MaterialParameter *_thisObj;
    Node *_node;
    const char *_binding = ValueToString(binding);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->bindValue(_node, _binding);
}
DEFINE_PRIM(hx_MaterialParameter_bindValue_Node_Str, 3);

// DECL: unsigned int getAnimationPropertyComponentCount(int propertyId) const;
value hx_MaterialParameter_getAnimationPropertyComponentCount(value thisObj, value propertyId)
{
    MaterialParameter *_thisObj;
    int _propertyId = val_get_int(propertyId);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getAnimationPropertyComponentCount(_propertyId));
}
DEFINE_PRIM(hx_MaterialParameter_getAnimationPropertyComponentCount, 2);

// DECL: void getAnimationPropertyValue(int propertyId, AnimationValue* value);
void hx_MaterialParameter_getAnimationPropertyValue(value thisObj, value propertyId, value value)
{
    MaterialParameter *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->getAnimationPropertyValue(_propertyId, _value);
}
DEFINE_PRIM(hx_MaterialParameter_getAnimationPropertyValue, 3);

// DECL: const char* getName() const;
value hx_MaterialParameter_getName(value thisObj)
{
    MaterialParameter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getName());
}
DEFINE_PRIM(hx_MaterialParameter_getName, 1);

// DECL: Texture::Sampler* getSampler(unsigned int index = 0) const;
value hx_MaterialParameter_getSampler(value thisObj, value index)
{
    MaterialParameter *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getSampler(_index), true);
}
DEFINE_PRIM(hx_MaterialParameter_getSampler, 2);

// DECL: void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
void hx_MaterialParameter_setAnimationPropertyValue(value thisObj, value propertyId, value val, value blendWeight)
{
    MaterialParameter *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    float _blendWeight = ValueToFloat(blendWeight);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(val, _value);
    _thisObj->setAnimationPropertyValue(_propertyId, _value, _blendWeight);
}
DEFINE_PRIM(hx_MaterialParameter_setAnimationPropertyValue, 4);

// DECL: Texture::Sampler* setValue(const char* texturePath, bool generateMipmaps);
value hx_MaterialParameter_setValue_Str_Bool(value thisObj, value texturePath, value generateMipmaps)
{
    MaterialParameter *_thisObj;
    const char *_texturePath = ValueToString(texturePath);
    bool _generateMipmaps = val_get_bool(generateMipmaps);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->setValue(_texturePath, _generateMipmaps), true);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_Str_Bool, 3);

// DECL: void setValue(const Matrix& value);
void hx_MaterialParameter_setValue_Mat(value thisObj, value val)
{
    MaterialParameter *_thisObj;
    Matrix *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(val, _value);
    _thisObj->setValue(*_value);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_Mat, 2);

// DECL: void setValue(const Matrix* values, unsigned int count = 1);
void hx_MaterialParameter_setValue_ArrMat_Int(value thisObj, value values, value count)
{
    MaterialParameter *_thisObj;
    Matrix *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setValue(_values, _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrMat_Int, 3);

// DECL: void setValue(const Texture::Sampler* sampler);
void hx_MaterialParameter_setValue_Smplr(value thisObj, value sampler)
{
    MaterialParameter *_thisObj;
    Texture::Sampler *_sampler;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sampler, _sampler);
    _thisObj->setValue(_sampler);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_Smplr, 2);

// DECL: void setValue(const Texture::Sampler** samplers, unsigned int count);
void hx_MaterialParameter_setValue_ArrSmplr_Int(value thisObj, value samplers, value count)
{
    MaterialParameter *_thisObj;
    Texture::Sampler **_samplers = NULL, *sampler;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);

    _samplers = new Texture::Sampler*[_count];
    for (int index = 0; index < _count; index++)
    {
        ValueToObject(val_array_i(samplers, index), sampler);
        _samplers[index] = sampler;
    }

    _thisObj->setValue(const_cast<const Texture::Sampler**>(_samplers), _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrSmplr_Int, 3);

// DECL: void setValue(const Vector2& value);
void hx_MaterialParameter_setValue_V2(value thisObj, value value)
{
    MaterialParameter *_thisObj;
    Vector2 *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->setValue(*_value);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_V2, 2);

// DECL: void setValue(const Vector2* values, unsigned int count = 1);
void hx_MaterialParameter_setValue_ArrV2_Int(value thisObj, value values, value count)
{
    MaterialParameter *_thisObj;
    Vector2 *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setValue(_values, _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrV2_Int, 3);

// DECL: void setValue(const Vector3& value);
void hx_MaterialParameter_setValue_V3(value thisObj, value value)
{
    MaterialParameter *_thisObj;
    Vector3 *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->setValue(*_value);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_V3, 2);

// DECL: void setValue(const Vector3* values, unsigned int count = 1);
void hx_MaterialParameter_setValue_ArrV3_Int(value thisObj, value values, value count)
{
    MaterialParameter *_thisObj;
    Vector3 *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setValue(_values, _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrV3_Int, 3);

// DECL: void setValue(const Vector4& value);
void hx_MaterialParameter_setValue_V4(value thisObj, value value)
{
    MaterialParameter *_thisObj;
    Vector4 *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->setValue(*_value);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_V4, 2);

// DECL: void setValue(const Vector4* values, unsigned int count = 1);
void hx_MaterialParameter_setValue_ArrV4_Int(value thisObj, value values, value count)
{
    MaterialParameter *_thisObj;
    Vector4 *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setValue(_values, _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrV4_Int, 3);

// DECL: void setValue(const float* values, unsigned int count = 1);
void hx_MaterialParameter_setValue_ArrFlt_Int(value thisObj, value values, value count)
{
    MaterialParameter *_thisObj;
    float *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setValue(_values, _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrFlt_Int, 3);

// DECL: void setValue(const int* values, unsigned int count = 1);
void hx_MaterialParameter_setValue_ArrInt_Int(value thisObj, value values, value count)
{
    MaterialParameter *_thisObj;
    int *_values;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(values, _values);
    _thisObj->setValue(_values, _count);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_ArrInt_Int, 3);

// DECL: void setValue(float value);
void hx_MaterialParameter_setValue_Flt(value thisObj, value value)
{
    MaterialParameter *_thisObj;
    float _value = ValueToFloat(value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setValue(_value);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_Flt, 2);

// DECL: void setValue(int value);
void hx_MaterialParameter_setValue_Int(value thisObj, value val)
{
    MaterialParameter *_thisObj;
    int _value = val_get_int(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setValue(_value);
}
DEFINE_PRIM(hx_MaterialParameter_setValue_Int, 2);

// END
//
