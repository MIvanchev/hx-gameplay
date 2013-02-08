package org.gameplay3d.wrapper;

import org.gameplay3d.AIAgent;
import org.gameplay3d.AIState;
import org.gameplay3d.AIState_Listener;
import org.gameplay3d.intern.ListenerWrapper;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AIState_ListenerWrapper extends ListenerWrapper<AIState_Listener>, implements AIState_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: (none)
    public static function make(target)
    {
        return new AIState_ListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void stateEnter(AIAgent* agent, AIState* state);
    public function stateEnter(agent:AIAgent, state:AIState):Void
    {
        target.stateEnter(agent, state);
    }

    // DECL: virtual void stateExit(AIAgent* agent, AIState* state);
    public function stateExit(agent:AIAgent, state:AIState):Void
    {
        target.stateExit(agent, state);
    }

    // DECL: virtual void stateUpdate(AIAgent* agent, AIState* state, float elapsedTime);
    public function stateUpdate(agent:AIAgent, state:AIState, elapsedTime:Float):Void
    {
        target.stateUpdate(agent, state, elapsedTime);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function stateEnterWrapper(agent, state)
    {
        stateEnter(AIAgent.wrap(agent), AIState.wrap(state));
    }

    function stateExitWrapper(agent, state)
    {
        stateExit(AIAgent.wrap(agent), AIState.wrap(state));
    }

    function stateUpdateWrapper(agent, state, elapsedTime)
    {
        stateUpdate(AIAgent.wrap(agent), AIState.wrap(state), elapsedTime);
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:AIState_ListenerWrapper):Dynamic
    {
        return hx_AIState_Listener_Construct(
                                        thisObj.stateEnterWrapper,
                                        thisObj.stateExitWrapper,
                                        thisObj.stateUpdateWrapper
                                    );
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIState_Listener_Construct = cpp.Lib.load("gameplay", "hx_AIState_Listener_Construct", 3);
}

// END
