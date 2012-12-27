package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;

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
