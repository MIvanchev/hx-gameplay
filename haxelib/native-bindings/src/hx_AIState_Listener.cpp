#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeAIState_Listener : public AIState::Listener
{
private:

    AutoGCRoot clbkStateEnter;
    AutoGCRoot clbkStateExit;
    AutoGCRoot clbkStateUpdate;

public:

    HaxeAIState_Listener(
                const value& _clbkStateEnter,
                const value& _clbkStateExit,
                const value& _clbkStateUpdate
            )
        : clbkStateEnter(_clbkStateEnter), clbkStateExit(_clbkStateExit),
            clbkStateUpdate(_clbkStateUpdate)
    {
    }

    void stateEnter(AIAgent *agent, AIState *state)
    {
        val_call2(
                clbkStateEnter.get(),
                ReferenceToValue(agent, true),
                ReferenceToValue(state, true)
            );
    }

    void stateExit(AIAgent *agent, AIState *state)
    {
        val_call2(
                clbkStateExit.get(),
                ReferenceToValue(agent, true),
                ReferenceToValue(state, true)
            );
    }

    void stateUpdate(AIAgent *agent, AIState *state, float elapsedTime)
    {
        val_call3(
                clbkStateEnter.get(),
                ReferenceToValue(agent, true),
                ReferenceToValue(state, true),
                alloc_float(elapsedTime)
            );
    }
};

value hx_AIState_Listener_Construct(
                    value clbkStateEnter,
                    value clbkStateExit,
                    value clbkStateUpdate
                )
{
    HaxeAIState_Listener *instance =
        new HaxeAIState_Listener(
                            clbkStateEnter,
                            clbkStateExit,
                            clbkStateUpdate
                            );
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_AIState_Listener_Construct, 3);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void stateEnter(AIAgent* agent, AIState* state);
// void hx_AIState_Listener_stateEnter(value thisObj, value agent, value state)
// {
    // AIState::Listener *_thisObj;
    // AIAgent *_agent;
    // AIState *_state;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(agent, _agent);
    // ValueToObject(state, _state);
    // _thisObj->stateEnter(_agent, _state);
// }
// DEFINE_PRIM(hx_AIState_Listener_stateEnter, 3);

// DECL: virtual void stateExit(AIAgent* agent, AIState* state);
// void hx_AIState_Listener_stateExit(value thisObj, value agent, value state)
// {
    // AIState::Listener *_thisObj;
    // AIAgent *_agent;
    // AIState *_state;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(agent, _agent);
    // ValueToObject(state, _state);
    // _thisObj->stateExit(_agent, _state);
// }
// DEFINE_PRIM(hx_AIState_Listener_stateExit, 3);

// DECL: virtual void stateUpdate(AIAgent* agent, AIState* state, float elapsedTime);
// void hx_AIState_Listener_stateUpdate(value thisObj, value agent, value state, value elapsedTime)
// {
    // AIState::Listener *_thisObj;
    // AIAgent *_agent;
    // AIState *_state;
    // float _elapsedTime = ValueToFloat(elapsedTime);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(agent, _agent);
    // ValueToObject(state, _state);
    // _thisObj->stateUpdate(_agent, _state, _elapsedTime);
// }
// DEFINE_PRIM(hx_AIState_Listener_stateUpdate, 4);

// END
//
