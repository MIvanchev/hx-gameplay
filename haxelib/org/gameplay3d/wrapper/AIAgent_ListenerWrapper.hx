package org.gameplay3d.wrapper;

import org.gameplay3d.AIAgent_Listener;
import org.gameplay3d.AIMessage;
import org.gameplay3d.intern.ListenerWrapper;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AIAgent_ListenerWrapper extends ListenerWrapper<AIAgent_Listener>, implements AIAgent_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: (none)
    public static function make(target)
    {
        return new AIAgent_ListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual bool messageReceived(AIMessage* message) = 0;
    public function messageReceived(message:AIMessage):Bool
    {
        return target.messageReceived(message);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function messageReceivedWrapper(message)
    {
        messageReceived(AIMessage.wrap(message));
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:AIAgent_ListenerWrapper):Dynamic
    {
        return hx_AIAgent_Listener_Construct(thisObj.messageReceivedWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIAgent_Listener_Construct = NativeInterface.loadMember(AIAgent_Listener, "Construct", 1);
}

// END
