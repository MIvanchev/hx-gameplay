package org.gameplay3d;

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

    static var hx_AIController_findAgent = cpp.Lib.load("gameplay", "hx_AIController_findAgent", 2);
    static var hx_AIController_sendMessage = cpp.Lib.load("gameplay", "hx_AIController_sendMessage", 3);
}

// END
