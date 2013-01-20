#include "HaxeAPI.h"

// DECL: AIState* addState(const char* id);
value hx_AIStateMachine_addState_Str(value thisObj, value id)
{
    AIStateMachine *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->addState(_id), true);
}
DEFINE_PRIM(hx_AIStateMachine_addState_Str, 2);

// DECL: void addState(AIState* state);
void hx_AIStateMachine_addState_AIState(value thisObj, value state)
{
    AIStateMachine *_thisObj;
    AIState *_state;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(state, _state);
    _thisObj->addState(_state);
}
DEFINE_PRIM(hx_AIStateMachine_addState_AIState, 2);

// DECL: AIState* getActiveState() const;
value hx_AIStateMachine_getActiveState(value thisObj)
{
    AIStateMachine *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getActiveState(), true);
}
DEFINE_PRIM(hx_AIStateMachine_getActiveState, 1);

// DECL: AIAgent* getAgent() const;
value hx_AIStateMachine_getAgent(value thisObj)
{
    AIStateMachine *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAgent(), true);
}
DEFINE_PRIM(hx_AIStateMachine_getAgent, 1);

// DECL: AIState* getState(const char* id) const;
value hx_AIStateMachine_getState(value thisObj, value id)
{
    AIStateMachine *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getState(_id), true);
}
DEFINE_PRIM(hx_AIStateMachine_getState, 2);

// DECL: void removeState(AIState* state);
void hx_AIStateMachine_removeState(value thisObj, value state)
{
    AIStateMachine *_thisObj;
    AIState *_state;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(state, _state);
    _thisObj->removeState(_state);
}
DEFINE_PRIM(hx_AIStateMachine_removeState, 2);

// DECL: AIState* setState(const char* id);
value hx_AIStateMachine_setState_Str(value thisObj, value id)
{
    AIStateMachine *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->setState(_id), true);
}
DEFINE_PRIM(hx_AIStateMachine_setState_Str, 2);

// DECL: bool setState(AIState* state);
value hx_AIStateMachine_setState_AIState(value thisObj, value state)
{
    AIStateMachine *_thisObj;
    AIState *_state;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(state, _state);
    return alloc_bool(_thisObj->setState(_state));
}
DEFINE_PRIM(hx_AIStateMachine_setState_AIState, 2);

// END
//
