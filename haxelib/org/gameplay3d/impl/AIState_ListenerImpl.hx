package org.gameplay3d.impl;

import org.gameplay3d.AIAgent;
import org.gameplay3d.AIState;
import org.gameplay3d.AIState_Listener;
import org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AIState_ListenerImpl extends GameplayObject, implements AIState_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void stateEnter(AIAgent* agent, AIState* state);
    public function stateEnter(agent:AIAgent, state:AIState):Void
    {
    }

    // DECL: virtual void stateExit(AIAgent* agent, AIState* state);
    public function stateExit(agent:AIAgent, state:AIState):Void
    {
    }

    // DECL: virtual void stateUpdate(AIAgent* agent, AIState* state, float elapsedTime);
    public function stateUpdate(agent:AIAgent, state:AIState, elapsedTime:Float):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:AIState_ListenerImpl):Dynamic
    {
        return hx_AIState_Listener_Construct(
                                        thisObj.stateEnter,
                                        thisObj.stateExit,
                                        thisObj.stateUpdate
                                    );
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIState_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_AIState_Listener_Construct", 3);
}

// END
