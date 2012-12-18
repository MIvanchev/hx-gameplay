package org.gameplay3d;

import dk.bluewolf.gameplay.INativeBinding;

// DECL: class Listener : public GameplayObject
interface AIState_Listener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void stateEnter(AIAgent* agent, AIState* state);
    public function stateEnter(agent:AIAgent, state:AIState):Void;

    // DECL: virtual void stateExit(AIAgent* agent, AIState* state);
    public function stateExit(agent:AIAgent, state:AIState):Void;

    // DECL: virtual void stateUpdate(AIAgent* agent, AIState* state, float elapsedTime);
    public function stateUpdate(agent:AIAgent, state:AIState, elapsedTime:Float):Void;
}

// END
