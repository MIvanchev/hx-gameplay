#include "HaxeAPI.h"

// DECL: void bind();
void hx_Texture_Sampler_bind(value thisObj)
{
    Texture::Sampler *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->bind();
}
DEFINE_PRIM(hx_Texture_Sampler_bind, 1);

// DECL: static Sampler* create(Texture* texture);
value hx_Texture_Sampler_static_create_Tex(value texture)
{
    Texture *_texture;
    ValueToObject(texture, _texture);
    return ReferenceToValue(Texture::Sampler::create(_texture));
}
DEFINE_PRIM(hx_Texture_Sampler_static_create_Tex, 1);

// DECL: static Sampler* create(const char* path, bool generateMipmaps = false);
value hx_Texture_Sampler_static_create_Str_Bool(value path, value generateMipmaps)
{
    const char *_path = ValueToString(path);
    bool _generateMipmaps = val_get_bool(generateMipmaps);
    return ReferenceToValue(Texture::Sampler::create(_path, _generateMipmaps));
}
DEFINE_PRIM(hx_Texture_Sampler_static_create_Str_Bool, 2);

// DECL: Texture* getTexture() const;
value hx_Texture_Sampler_getTexture(value thisObj)
{
    Texture::Sampler *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTexture(), true);
}
DEFINE_PRIM(hx_Texture_Sampler_getTexture, 1);

// DECL: void setFilterMode(Filter minificationFilter, Filter magnificationFilter);
void hx_Texture_Sampler_setFilterMode(value thisObj, value minificationFilter, value magnificationFilter)
{
    Texture::Sampler *_thisObj;
    Texture::Filter _minificationFilter, _magnificationFilter;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(minificationFilter, _minificationFilter);
    ValueToEnum(magnificationFilter, _magnificationFilter);
    _thisObj->setFilterMode(_minificationFilter, _magnificationFilter);
}
DEFINE_PRIM(hx_Texture_Sampler_setFilterMode, 3);

// DECL: void setWrapMode(Wrap wrapS, Wrap wrapT);
void hx_Texture_Sampler_setWrapMode(value thisObj, value wrapS, value wrapT)
{
    Texture::Sampler *_thisObj;
    Texture::Wrap _wrapS, _wrapT;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(wrapS, _wrapS);
    ValueToEnum(wrapT, _wrapT);
    _thisObj->setWrapMode(_wrapS, _wrapT);
}
DEFINE_PRIM(hx_Texture_Sampler_setWrapMode, 3);

// END
//
