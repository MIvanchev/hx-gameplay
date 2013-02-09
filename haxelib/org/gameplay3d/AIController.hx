package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AIController : public GameplayObject
class AIController extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: AIAgent* findAgent(const char* id) const;
    public function findAgent(id:String):AIAgent
    {
        return AIAgent.wrap(hx_AIController_findAgent(nativeObject, id));
    }

    // DECL: void sendMessage(AIMessage* message, float delay = 0);
    public function sendMessage(message:AIMessage, delay:Float):Void
    {
        hx_AIController_sendMessage(nativeObject, message.native(), delay);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIController_findAgent = NativeInterface.loadMember(AIController, "findAgent", 2);
    static var hx_AIController_sendMessage = NativeInterface.loadMember(AIController, "sendMessage", 3);
}

// END
