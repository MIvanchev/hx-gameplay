package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AIStateMachine : public GameplayObject
class AIStateMachine extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: AIState* addState(const char* id);
    public function addState_Str(id:String):AIState
    {
        return AIState.wrap(hx_AIStateMachine_addState_Str(nativeObject, id));
    }

    // DECL: void addState(AIState* state);
    public function addState_AIState(state:AIState):Void
    {
        hx_AIStateMachine_addState_AIState(nativeObject, state.native());
    }

    // DECL: AIState* getActiveState() const;
    public function getActiveState():AIState
    {
        return AIState.wrap(hx_AIStateMachine_getActiveState(nativeObject));
    }

    // DECL: AIAgent* getAgent() const;
    public function getAgent():AIAgent
    {
        return AIAgent.wrap(hx_AIStateMachine_getAgent(nativeObject));
    }

    // DECL: AIState* getState(const char* id) const;
    public function getState(id:String):AIState
    {
        return AIState.wrap(hx_AIStateMachine_getState(nativeObject, id));
    }

    // DECL: void removeState(AIState* state);
    public function removeState(state:AIState):Void
    {
        hx_AIStateMachine_removeState(nativeObject, state.native());
    }

    // DECL: AIState* setState(const char* id);
    public function setState_Str(id:String):AIState
    {
        return hx_AIStateMachine_setState_Str(nativeObject, id);
    }

    // DECL: bool setState(AIState* state);
    public function setState_AIState(state:AIState):Bool
    {
        return hx_AIStateMachine_setState_AIState(nativeObject, state.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIStateMachine_addState_Str = NativeInterface.loadMember(AIStateMachine, "addState_Str", 2);
    static var hx_AIStateMachine_addState_AIState = NativeInterface.loadMember(AIStateMachine, "addState_AIState", 2);
    static var hx_AIStateMachine_getActiveState = NativeInterface.loadMember(AIStateMachine, "getActiveState", 1);
    static var hx_AIStateMachine_getAgent = NativeInterface.loadMember(AIStateMachine, "getAgent", 1);
    static var hx_AIStateMachine_getState = NativeInterface.loadMember(AIStateMachine, "getState", 2);
    static var hx_AIStateMachine_removeState = NativeInterface.loadMember(AIStateMachine, "removeState", 2);
    static var hx_AIStateMachine_setState_Str = NativeInterface.loadMember(AIStateMachine, "setState_Str", 2);
    static var hx_AIStateMachine_setState_AIState = NativeInterface.loadMember(AIStateMachine, "setState_AIState", 2);
}

// END
