#include "HaxeAPI.h"

// DECL: void bind();
void hx_RenderState_StateBlock_bind(value thisObj)
{
    RenderState::StateBlock *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->bind();
}
DEFINE_PRIM(hx_RenderState_StateBlock_bind, 1);

// DECL: static StateBlock* create();
value hx_RenderState_StateBlock_static_create()
{
    return ReferenceToValue(RenderState::StateBlock::create());
}
DEFINE_PRIM(hx_RenderState_StateBlock_static_create, 0);

// DECL: void setBlend(bool enabled);
void hx_RenderState_StateBlock_setBlend(value thisObj, value enabled)
{
    RenderState::StateBlock *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBlend(_enabled);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setBlend, 2);

// DECL: void setBlendDst(Blend blend);
void hx_RenderState_StateBlock_setBlendDst(value thisObj, value blend)
{
    RenderState::StateBlock *_thisObj;
    RenderState::Blend _blend;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(blend, _blend);
    _thisObj->setBlendDst(_blend);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setBlendDst, 2);

// DECL: void setBlendSrc(Blend blend);
void hx_RenderState_StateBlock_setBlendSrc(value thisObj, value blend)
{
    RenderState::StateBlock *_thisObj;
    RenderState::Blend _blend;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(blend, _blend);
    _thisObj->setBlendSrc(_blend);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setBlendSrc, 2);

// DECL: void setCullFace(bool enabled);
void hx_RenderState_StateBlock_setCullFace(value thisObj, value enabled)
{
    RenderState::StateBlock *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setCullFace(_enabled);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setCullFace, 2);

// DECL: void setDepthTest(bool enabled);
void hx_RenderState_StateBlock_setDepthTest(value thisObj, value enabled)
{
    RenderState::StateBlock *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDepthTest(_enabled);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setDepthTest, 2);

// void setDepthFunction(DepthFunction func);
void hx_RenderState_StateBlock_setDepthFunction(value thisObj, value func)
{
    RenderState::StateBlock *_thisObj;
    RenderState::DepthFunction _func;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(func, _func);
    _thisObj->setDepthFunction(_func);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setDepthFunction, 2);

// DECL: void setDepthWrite(bool enabled);
void hx_RenderState_StateBlock_setDepthWrite(value thisObj, value enabled)
{
    RenderState::StateBlock *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDepthWrite(_enabled);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setDepthWrite, 2);

// DECL: void setState(const char* name, const char* value);
void hx_RenderState_StateBlock_setState(value thisObj, value name, value value)
{
    RenderState::StateBlock *_thisObj;
    const char *_name = ValueToString(name);
    const char *_value = ValueToString(value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setState(_name, _value);
}
DEFINE_PRIM(hx_RenderState_StateBlock_setState, 3);

// END
//
