package org.gameplay3d;

// DECL: class Listener
interface AIAgent_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual bool messageReceived(AIMessage* message) = 0;
    public function messageReceived(message:AIMessage):Bool;
}

// END
