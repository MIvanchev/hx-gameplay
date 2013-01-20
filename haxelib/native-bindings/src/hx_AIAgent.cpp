#include "HaxeAPI.h"

// DECL: static AIAgent* create();
value hx_AIAgent_static_create()
{
    return ReferenceToValue(AIAgent::create());
}
DEFINE_PRIM(hx_AIAgent_static_create, 0);

// DECL: const char* getId() const;
value hx_AIAgent_getId(value thisObj)
{
    AIAgent *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_AIAgent_getId, 1);

// DECL: Node* getNode() const;
value hx_AIAgent_getNode(value thisObj)
{
    AIAgent *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_AIAgent_getNode, 1);

// DECL: AIStateMachine* getStateMachine();
value hx_AIAgent_getStateMachine(value thisObj)
{
    AIAgent *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getStateMachine(), false);
}
DEFINE_PRIM(hx_AIAgent_getStateMachine, 1);

// DECL: bool isEnabled() const;
value hx_AIAgent_isEnabled(value thisObj)
{
    AIAgent *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEnabled());
}
DEFINE_PRIM(hx_AIAgent_isEnabled, 1);

// DECL: void setEnabled(bool enabled);
void hx_AIAgent_setEnabled(value thisObj, value enabled)
{
    AIAgent *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enabled);
}
DEFINE_PRIM(hx_AIAgent_setEnabled, 2);

// DECL: void setListener(Listener* listener);
void hx_AIAgent_setListener(value thisObj, value listener)
{
    AIAgent *_thisObj;
    AIAgent::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->setListener(_listener);
}
DEFINE_PRIM(hx_AIAgent_setListener, 2);

// END
//
