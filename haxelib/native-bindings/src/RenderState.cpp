#include "HaxeAPI.h"

// DECL: MaterialParameter* getParameter(const char* name) const;
value hx_RenderState_getParameter(value thisObj, value name)
{
    RenderState *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getParameter(_name), true);
}
DEFINE_PRIM(hx_RenderState_getParameter, 2);

// DECL: StateBlock* getStateBlock() const;
value hx_RenderState_getStateBlock(value thisObj)
{
    RenderState *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getStateBlock(), true);
}
DEFINE_PRIM(hx_RenderState_getStateBlock, 1);

// DECL: void setParameterAutoBinding(const char* name, AutoBinding autoBinding);
void hx_RenderState_setParameterAutoBinding_Str_Int(value thisObj, value name, value autoBinding)
{
    RenderState *_thisObj;
    const char *_name = ValueToString(name);
    RenderState::AutoBinding _autoBinding;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(autoBinding, _autoBinding);
    _thisObj->setParameterAutoBinding(_name, _autoBinding);
}
DEFINE_PRIM(hx_RenderState_setParameterAutoBinding_Str_Int, 3);

// DECL: void setParameterAutoBinding(const char* name, const char* autoBinding);
void hx_RenderState_setParameterAutoBinding_StrX2(value thisObj, value name, value autoBinding)
{
    RenderState *_thisObj;
    const char *_name = ValueToString(name);
    const char *_autoBinding = ValueToString(autoBinding);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setParameterAutoBinding(_name, _autoBinding);
}
DEFINE_PRIM(hx_RenderState_setParameterAutoBinding_StrX2, 3);

// DECL: void setStateBlock(StateBlock* state);
void hx_RenderState_setStateBlock(value thisObj, value state)
{
    RenderState *_thisObj;
    RenderState::StateBlock *_state;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(state, _state);
    _thisObj->setStateBlock(_state);
}
DEFINE_PRIM(hx_RenderState_setStateBlock, 2);

// END
//
