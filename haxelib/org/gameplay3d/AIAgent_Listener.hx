package org.gameplay3d;

import dk.bluewolf.gameplay.INativeBinding;

// DECL: class Listener : public GameplayObject
interface AIAgent_Listener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual bool messageReceived(AIMessage* message) = 0;
    public function messageReceived(message:AIMessage):Bool;
}

// END
