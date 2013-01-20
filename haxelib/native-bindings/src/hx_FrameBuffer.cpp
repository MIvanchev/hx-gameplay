#include "HaxeAPI.h"

// DECL: void bind();
void hx_FrameBuffer_bind(value thisObj)
{
    FrameBuffer *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->bind();
}
DEFINE_PRIM(hx_FrameBuffer_bind, 1);

// DECL: static void bindDefault();
void hx_FrameBuffer_static_bindDefault()
{
    FrameBuffer::bindDefault();
}
DEFINE_PRIM(hx_FrameBuffer_static_bindDefault, 0);

// DECL: static FrameBuffer* create(const char* id);
value hx_FrameBuffer_static_create_Str(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(FrameBuffer::create(_id));
}
DEFINE_PRIM(hx_FrameBuffer_static_create_Str, 1);

// DECL: static FrameBuffer* create(const char* id, unsigned int width, unsigned int height);
value hx_FrameBuffer_static_create_Str_IntX2(value id, value width, value height)
{
    const char *_id = ValueToString(id);
    unsigned int _width = ValueToUint(width);
    unsigned int _height = ValueToUint(height);
    return ReferenceToValue(FrameBuffer::create(_id, _width, _height));
}
DEFINE_PRIM(hx_FrameBuffer_static_create_Str_IntX2, 3);

// DECL: DepthStencilTarget* getDepthStencilTarget() const;
value hx_FrameBuffer_getDepthStencilTarget(value thisObj)
{
    FrameBuffer *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getDepthStencilTarget(), true);
}
DEFINE_PRIM(hx_FrameBuffer_getDepthStencilTarget, 1);

// DECL: static FrameBuffer* getFrameBuffer(const char* id);
value hx_FrameBuffer_static_getFrameBuffer(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(FrameBuffer::getFrameBuffer(_id), true);
}
DEFINE_PRIM(hx_FrameBuffer_static_getFrameBuffer, 1);

// DECL: unsigned int getHeight() const;
value hx_FrameBuffer_getHeight(value thisObj)
{
    FrameBuffer *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getHeight());
}
DEFINE_PRIM(hx_FrameBuffer_getHeight, 1);

// DECL: const char* getId() const;
value hx_FrameBuffer_getId(value thisObj)
{
    FrameBuffer *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_FrameBuffer_getId, 1);

// DECL: static unsigned int getMaxRenderTargets();
value hx_FrameBuffer_static_getMaxRenderTargets()
{
    return alloc_int(FrameBuffer::getMaxRenderTargets());
}
DEFINE_PRIM(hx_FrameBuffer_static_getMaxRenderTargets, 0);

// DECL: RenderTarget* getRenderTarget(unsigned int index = 0) const;
value hx_FrameBuffer_getRenderTarget(value thisObj, value index)
{
    FrameBuffer *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getRenderTarget(_index), true);
}
DEFINE_PRIM(hx_FrameBuffer_getRenderTarget, 2);

// DECL: unsigned int getWidth() const;
value hx_FrameBuffer_getWidth(value thisObj)
{
    FrameBuffer *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getWidth());
}
DEFINE_PRIM(hx_FrameBuffer_getWidth, 1);

// DECL: void setDepthStencilTarget(DepthStencilTarget* target);
void hx_FrameBuffer_setDepthStencilTarget(value thisObj, value target)
{
    FrameBuffer *_thisObj;
    DepthStencilTarget *_target;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(target, _target);
    _thisObj->setDepthStencilTarget(_target);
}
DEFINE_PRIM(hx_FrameBuffer_setDepthStencilTarget, 2);

// DECL: void setRenderTarget(RenderTarget* target, unsigned int index = 0);
void hx_FrameBuffer_setRenderTarget(value thisObj, value target, value index)
{
    FrameBuffer *_thisObj;
    RenderTarget *_target;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(target, _target);
    _thisObj->setRenderTarget(_target, _index);
}
DEFINE_PRIM(hx_FrameBuffer_setRenderTarget, 3);

// END
//
