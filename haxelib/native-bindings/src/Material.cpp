#include "HaxeAPI.h"

// DECL: static Material* create(Effect* effect);
value hx_Material_static_create_Eff(value effect)
{
    Effect *_effect;
    ValueToObject(effect, _effect);
    return ReferenceToValue(Material::create(_effect));
}
DEFINE_PRIM(hx_Material_static_create_Eff, 1);

// DECL: static Material* create(Properties* materialProperties);
value hx_Material_static_create_Prop(value materialProperties)
{
    Properties *_materialProperties;
    ValueToObject(materialProperties, _materialProperties);
    return ReferenceToValue(Material::create(_materialProperties));
}
DEFINE_PRIM(hx_Material_static_create_Prop, 1);

// DECL: static Material* create(const char* url);
value hx_Material_static_create_Str(value url)
{
    const char *_url = ValueToString(url);
    return ReferenceToValue(Material::create(_url));
}
DEFINE_PRIM(hx_Material_static_create_Str, 1);

// DECL: static Material* create(const char* vshPath, const char* fshPath, const char* defines = NULL);
value hx_Material_static_create_StrX3(value vshPath, value fshPath, value defines)
{
    const char *_vshPath = ValueToString(vshPath);
    const char *_fshPath = ValueToString(fshPath);
    const char *_defines = ValueToString(defines);
    return ReferenceToValue(Material::create(_vshPath, _fshPath, _defines));
}
DEFINE_PRIM(hx_Material_static_create_StrX3, 3);

// DECL: Technique* getTechnique() const;
value hx_Material_getTechnique(value thisObj)
{
    Material *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTechnique(), true);
}
DEFINE_PRIM(hx_Material_getTechnique, 1);

// DECL: Technique* getTechnique(const char* id) const;
value hx_Material_getTechnique_Str(value thisObj, value id)
{
    Material *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTechnique(_id), true);
}
DEFINE_PRIM(hx_Material_getTechnique_Str, 2);

// DECL: Technique* getTechniqueByIndex(unsigned int index) const;
value hx_Material_getTechniqueByIndex(value thisObj, value index)
{
    Material *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTechniqueByIndex(_index), true);
}
DEFINE_PRIM(hx_Material_getTechniqueByIndex, 2);

// DECL: unsigned int getTechniqueCount() const;
value hx_Material_getTechniqueCount(value thisObj)
{
    Material *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getTechniqueCount());
}
DEFINE_PRIM(hx_Material_getTechniqueCount, 1);

// DECL: void setTechnique(const char* id);
void hx_Material_setTechnique(value thisObj, value id)
{
    Material *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTechnique(_id);
}
DEFINE_PRIM(hx_Material_setTechnique, 2);

// END
//
