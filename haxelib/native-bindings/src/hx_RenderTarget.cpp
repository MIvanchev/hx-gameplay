#include "HaxeAPI.h"

// DECL: static RenderTarget* create(const char* id, Texture* texture);
value hx_RenderTarget_static_create_Str_Tex(value id, value texture)
{
    const char *_id = ValueToString(id);
    Texture *_texture;
    ValueToObject(texture, _texture);
    return ReferenceToValue(RenderTarget::create(_id, _texture));
}
DEFINE_PRIM(hx_RenderTarget_static_create_Str_Tex, 2);

// DECL: static RenderTarget* create(const char* id, unsigned int width, unsigned int height);
value hx_RenderTarget_static_create_Str_IntX2(value id, value width, value height)
{
    const char *_id = ValueToString(id);
    unsigned int _width = ValueToUint(width);
    unsigned int _height = ValueToUint(height);
    return ReferenceToValue(RenderTarget::create(_id, _width, _height));
}
DEFINE_PRIM(hx_RenderTarget_static_create_Str_IntX2, 3);

// DECL: unsigned int getHeight() const;
value hx_RenderTarget_getHeight(value thisObj)
{
    RenderTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getHeight());
}
DEFINE_PRIM(hx_RenderTarget_getHeight, 1);

// DECL: const char* getId() const;
value hx_RenderTarget_getId(value thisObj)
{
    RenderTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_RenderTarget_getId, 1);

// DECL: static RenderTarget* getRenderTarget(const char* id);
value hx_RenderTarget_static_getRenderTarget(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(RenderTarget::getRenderTarget(_id), true);
}
DEFINE_PRIM(hx_RenderTarget_static_getRenderTarget, 1);

// DECL: Texture* getTexture() const;
value hx_RenderTarget_getTexture(value thisObj)
{
    RenderTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTexture(), true);
}
DEFINE_PRIM(hx_RenderTarget_getTexture, 1);

// DECL: unsigned int getWidth() const;
value hx_RenderTarget_getWidth(value thisObj)
{
    RenderTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getWidth());
}
DEFINE_PRIM(hx_RenderTarget_getWidth, 1);

// END
//
