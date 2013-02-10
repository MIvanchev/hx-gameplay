package org.gameplay3d;

import org.gameplay3d.intern.impl.ScriptTargetImpl;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.AIState_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AIState : public Ref, public ScriptTarget
class AIState extends ScriptTargetImpl implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static AIState* create(const char* id);
    public static function create(id:String):AIState
    {
        return AIState.wrap(hx_AIState_static_create(id));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_AIState_getId(nativeObject);
    }

    // DECL: void setListener(Listener* listener);
    public function setListener(listener:AIState_ListenerWrapper):Void
    {
        hx_AIState_setListener(nativeObject, listener.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIState_static_create = NativeInterface.loadMember(AIState, "static_create", 1);
    static var hx_AIState_getId = NativeInterface.loadMember(AIState, "getId", 1);
    static var hx_AIState_setListener = NativeInterface.loadMember(AIState, "setListener", 2);
    static var hx_AIState_Listener_Construct = NativeInterface.loadMember(AIState_Listener, "Construct", 3);
}

// END
