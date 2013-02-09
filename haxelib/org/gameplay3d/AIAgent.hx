package org.gameplay3d;

import org.gameplay3d.intern.impl.ScriptTargetImpl;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.AIAgent_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AIAgent : public Ref, public ScriptTarget
class AIAgent extends ScriptTargetImpl, implements Ref
{

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static AIAgent* create();
    public static function create():AIAgent
    {
        return AIAgent.wrap(hx_AIAgent_static_create());
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_AIAgent_getId(nativeObject);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return hx_AIAgent_getNode(nativeObject);
    }

    // DECL: AIStateMachine* getStateMachine();
    public function getStateMachine():AIStateMachine
    {
        return AIStateMachine.wrap(hx_AIAgent_getStateMachine(nativeObject));
    }

    // DECL: bool isEnabled() const;
    public function isEnabled():Bool
    {
        return hx_AIAgent_isEnabled(nativeObject);
    }

    // DECL: void setEnabled(bool enabled);
    public function setEnabled(enabled:Bool):Void
    {
        hx_AIAgent_setEnabled(nativeObject, enabled);
    }

    // DECL: void setListener(Listener* listener);
    public function setListener(listener:AIAgent_ListenerWrapper):Void
    {
        hx_AIAgent_setListener(nativeObject, listener.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIAgent_static_create = NativeInterface.loadMember(AIAgent, "static_create", 0);
    static var hx_AIAgent_getId = NativeInterface.loadMember(AIAgent, "getId", 1);
    static var hx_AIAgent_getNode = NativeInterface.loadMember(AIAgent, "getNode", 1);
    static var hx_AIAgent_getStateMachine = NativeInterface.loadMember(AIAgent, "getStateMachine", 1);
    static var hx_AIAgent_isEnabled = NativeInterface.loadMember(AIAgent, "isEnabled", 1);
    static var hx_AIAgent_setEnabled = NativeInterface.loadMember(AIAgent, "setEnabled", 2);
    static var hx_AIAgent_setListener = NativeInterface.loadMember(AIAgent, "setListener", 2);
}

// END
