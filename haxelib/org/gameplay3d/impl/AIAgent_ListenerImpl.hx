package org.gameplay3d.impl;

import org.gameplay3d.AIAgent_Listener;
import org.gameplay3d.AIMessage;
import org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AIAgent_ListenerImpl extends GameplayObject, implements AIAgent_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var listener:AIAgent_Listener;

    function new(
            listener:AIAgent_Listener,
            nativeObject:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.listener = listener;
    }

    public static function make(listener:AIAgent_Listener):Void
    {
        return new AIAgent_ListenerImpl(listener, constructNativeObject, [ null ]);
    }

    // DECL: virtual bool messageReceived(AIMessage* message) = 0;
    public function messageReceived(message:AIMessage):Bool
    {
        return listener.messageReceived(message);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:AIAgent_ListenerImpl):Dynamic
    {
        return hx_AIAgent_Listener_Construct(thisObj.messageReceived);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIAgent_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_AIAgent_Listener_Construct", 1);
}

// END
