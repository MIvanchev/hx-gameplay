#include "HaxeAPI.h"

// DECL: static AIState* create(const char* id);
value hx_AIState_static_create(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(AIState::create(_id));
}
DEFINE_PRIM(hx_AIState_static_create, 1);

// DECL: const char* getId() const;
value hx_AIState_getId(value thisObj)
{
    AIState *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_AIState_getId, 1);

// DECL: void setListener(Listener* listener);
void hx_AIState_setListener(value thisObj, value listener)
{
    AIState *_thisObj;
    AIState::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->setListener(_listener);
}
DEFINE_PRIM(hx_AIState_setListener, 2);

// END
//
