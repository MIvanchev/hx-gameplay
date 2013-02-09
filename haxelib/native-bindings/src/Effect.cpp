#include "HaxeAPI.h"

// DECL: void bind();
void hx_Effect_bind(value thisObj)
{
    Effect *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->bind();
}
DEFINE_PRIM(hx_Effect_bind, 1);

// DECL: static Effect* createFromFile(const char* vshPath, const char* fshPath, const char* defines = NULL);
value hx_Effect_static_createFromFile(value vshPath, value fshPath, value defines)
{
    const char *_vshPath = ValueToString(vshPath);
    const char *_fshPath = ValueToString(fshPath);
    const char *_defines = ValueToString(defines);
    return ReferenceToValue(Effect::createFromFile(_vshPath, _fshPath, _defines));
}
DEFINE_PRIM(hx_Effect_static_createFromFile, 3);

// DECL: static Effect* createFromSource(const char* vshSource, const char* fshSource, const char* defines = NULL);
value hx_Effect_static_createFromSource(value vshSource, value fshSource, value defines)
{
    const char *_vshSource = ValueToString(vshSource);
    const char *_fshSource = ValueToString(fshSource);
    const char *_defines = ValueToString(defines);
    return ReferenceToValue(Effect::createFromSource(_vshSource, _fshSource, _defines));
}
DEFINE_PRIM(hx_Effect_static_createFromSource, 3);

// DECL: static Effect* getCurrentEffect();
value hx_Effect_static_getCurrentEffect()
{
    return ReferenceToValue(Effect::getCurrentEffect(), true);
}
DEFINE_PRIM(hx_Effect_static_getCurrentEffect, 0);

// DECL: const char* getId() const;
value hx_Effect_getId(value thisObj)
{
    Effect *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Effect_getId, 1);

// DECL: Uniform* getUniform(const char* name) const;
value hx_Effect_getUniform_Str(value thisObj, value name)
{
    Effect *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getUniform(_name), false);
}
DEFINE_PRIM(hx_Effect_getUniform_Str, 2);

// DECL: Uniform* getUniform(unsigned int index) const;
value hx_Effect_getUniform_Int(value thisObj, value index)
{
    Effect *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getUniform(_index), false);
}
DEFINE_PRIM(hx_Effect_getUniform_Int, 2);

// DECL: unsigned int getUniformCount() const;
value hx_Effect_getUniformCount(value thisObj)
{
    Effect *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getUniformCount());
}
DEFINE_PRIM(hx_Effect_getUniformCount, 1);

// DECL: VertexAttribute getVertexAttribute(const char* name) const;
value hx_Effect_getVertexAttribute(value thisObj, value name)
{
    Effect *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return HandleToValue(_thisObj->getVertexAttribute(_name));
}
DEFINE_PRIM(hx_Effect_getVertexAttribute, 2);

// DECL: void setValue(Uniform* uniform, const Matrix& value);
void hx_Effect_setValue_Unif_Mat(value thisObj, value uniform, value value)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Matrix *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    ValueToObject(value, _value);
    _thisObj->setValue(_uniform, *_value);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_Mat, 3);

// DECL: void setValue(Uniform* uniform, const Matrix* values, unsigned int count = 1);
void hx_Effect_setValue_Unif_ArrMat_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Matrix *_values = NULL, *matrix;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new Matrix[_count];
    for (int index = 0; index < _count; index++)
    {
        ValueToObject(val_array_i(values, index), matrix);
        _values[index].set(*matrix);
    }

    _thisObj->setValue(_uniform, _values, _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrMat_Int, 4);

// DECL: void setValue(Uniform* uniform, const Texture::Sampler* sampler);
void hx_Effect_setValue_Unif_Smplr(value thisObj, value uniform, value sampler)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Texture::Sampler *_sampler;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    ValueToObject(sampler, _sampler);
    _thisObj->setValue(_uniform, _sampler);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_Smplr, 3);

// DECL: void setValue(Uniform* uniform, const Texture::Sampler** values, unsigned int count);
void hx_Effect_setValue_Unif_ArrSmplr_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Texture::Sampler **_values = NULL, *sampler;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new Texture::Sampler*[_count];
    for (int index = 0; index < _count; index++)
    {
        ValueToObject(val_array_i(values, index), sampler);
        _values[index] = sampler;
    }

    _thisObj->setValue(_uniform, const_cast<const Texture::Sampler**>(_values), _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrSmplr_Int, 4);

// DECL: void setValue(Uniform* uniform, const Vector2& value);
void hx_Effect_setValue_Unif_V2(value thisObj, value uniform, value value)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Vector2 *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    ValueToObject(value, _value);
    _thisObj->setValue(_uniform, *_value);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_V2, 3);

// DECL: void setValue(Uniform* uniform, const Vector2* values, unsigned int count = 1);
void hx_Effect_setValue_Unif_ArrV2_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Vector2 *_values = NULL, *vector;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new Vector2[_count];
    for (int index = 0; index < _count; index++)
    {
        ValueToObject(val_array_i(values, index), vector);
        _values[index].set(*vector);
    }

    _thisObj->setValue(_uniform, _values, _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrV2_Int, 4);

// DECL: void setValue(Uniform* uniform, const Vector3& value);
void hx_Effect_setValue_Unif_V3(value thisObj, value uniform, value value)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Vector3 *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    ValueToObject(value, _value);
    _thisObj->setValue(_uniform, *_value);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_V3, 3);

// DECL: void setValue(Uniform* uniform, const Vector3* values, unsigned int count = 1);
void hx_Effect_setValue_Unif_ArrV3_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Vector3 *_values = NULL, *vector;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new Vector3[_count];
    for (int index = 0; index < _count; index++)
    {
        ValueToObject(val_array_i(values, index), vector);
        _values[index].set(*vector);
    }

    _thisObj->setValue(_uniform, _values, _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrV3_Int, 4);

// DECL: void setValue(Uniform* uniform, const Vector4& value);
void hx_Effect_setValue_Unif_V4(value thisObj, value uniform, value value)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Vector4 *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    ValueToObject(value, _value);
    _thisObj->setValue(_uniform, *_value);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_V4, 3);

// DECL: void setValue(Uniform* uniform, const Vector4* values, unsigned int count = 1);
void hx_Effect_setValue_Unif_ArrV4_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    Vector4 *_values = NULL, *vector;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new Vector4[_count];
    for (int index = 0; index < _count; index++)
    {
        ValueToObject(val_array_i(values, index), vector);
        _values[index].set(*vector);
    }

    _thisObj->setValue(_uniform, _values, _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrV4_Int, 4);

// DECL: void setValue(Uniform* uniform, const float* values, unsigned int count = 1);
void hx_Effect_setValue_Unif_ArrFlt_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    float *_values = NULL;;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new float[_count];
    for (int index = 0; index < _count; index++)
        _values[index] = ValueToFloat(val_array_i(values, index));

    _thisObj->setValue(_uniform, _values, _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrFlt_Int, 4);

// DECL: void setValue(Uniform* uniform, const int* values, unsigned int count = 1);
void hx_Effect_setValue_Unif_ArrInt_Int(value thisObj, value uniform, value values, value count)
{
    Effect *_thisObj;
    Uniform *_uniform;
    int *_values = NULL;;
    unsigned int _count = ValueToUint(count);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);

    _values = new int[_count];
    for (int index = 0; index < _count; index++)
        _values[index] = val_get_int(val_array_i(values, index));

    _thisObj->setValue(_uniform, _values, _count);

    SAFE_DELETE_ARRAY(_values);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_ArrInt_Int, 4);

// DECL: void setValue(Uniform* uniform, float value);
void hx_Effect_setValue_Unif_Flt(value thisObj, value uniform, value value)
{
    Effect *_thisObj;
    Uniform *_uniform;
    float _value = ValueToFloat(value);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    _thisObj->setValue(_uniform, _value);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_Flt, 3);

// DECL: void setValue(Uniform* uniform, int value);
void hx_Effect_setValue_Unif_Int(value thisObj, value uniform, value value)
{
    Effect *_thisObj;
    Uniform *_uniform;
    int _value = val_get_int(value);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(uniform, _uniform);
    _thisObj->setValue(_uniform, _value);
}
DEFINE_PRIM(hx_Effect_setValue_Unif_Int, 3);

// END
//
