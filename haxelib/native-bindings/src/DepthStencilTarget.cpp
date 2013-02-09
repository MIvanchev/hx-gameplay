#include "HaxeAPI.h"

// DECL: static DepthStencilTarget* create(const char* id, Format format, unsigned int width, unsigned int height);
value hx_DepthStencilTarget_static_create(value id, value format, value width, value height)
{
    const char *_id = ValueToString(id);
    DepthStencilTarget::Format _format;
    unsigned int _width = ValueToUint(width);
    unsigned int _height = ValueToUint(height);
    ValueToEnum(format, _format);
    return ReferenceToValue(DepthStencilTarget::create(_id, _format, _width, _height));
}
DEFINE_PRIM(hx_DepthStencilTarget_static_create, 4);

// DECL: static DepthStencilTarget* getDepthStencilTarget(const char* id);
value hx_DepthStencilTarget_static_getDepthStencilTarget(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(DepthStencilTarget::getDepthStencilTarget(_id), true);
}
DEFINE_PRIM(hx_DepthStencilTarget_static_getDepthStencilTarget, 1);

// DECL: Format getFormat() const;
value hx_DepthStencilTarget_getFormat(value thisObj)
{
    DepthStencilTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getFormat());
}
DEFINE_PRIM(hx_DepthStencilTarget_getFormat, 1);

// DECL: unsigned int getHeight() const;
value hx_DepthStencilTarget_getHeight(value thisObj)
{
    DepthStencilTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getHeight());
}
DEFINE_PRIM(hx_DepthStencilTarget_getHeight, 1);

// DECL: const char* getId() const;
value hx_DepthStencilTarget_getId(value thisObj)
{
    DepthStencilTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_DepthStencilTarget_getId, 1);

// DECL: unsigned int getWidth() const;
value hx_DepthStencilTarget_getWidth(value thisObj)
{
    DepthStencilTarget *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getWidth());
}
DEFINE_PRIM(hx_DepthStencilTarget_getWidth, 1);

// END
//
