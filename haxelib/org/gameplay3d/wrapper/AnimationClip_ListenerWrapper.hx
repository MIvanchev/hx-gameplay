package org.gameplay3d.wrapper;

import org.gameplay3d.AnimationClip;
import org.gameplay3d.AnimationClip_Listener;
import org.gameplay3d.intern.ListenerWrapper;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AnimationClip_ListenerWrapper extends ListenerWrapper<AnimationClip_Listener> implements AnimationClip_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: (none)
    public static function make(target)
    {
        return new AnimationClip_ListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void animationEvent(AnimationClip* clip, EventType type) = 0;
    public function animationEvent(clip:AnimationClip, type:Int):Void
    {
        target.animationEvent(clip, type);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function animationEventWrapper(clip, type)
    {
        animationEvent(AnimationClip.wrap(clip), type);
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:AnimationClip_ListenerWrapper):Dynamic
    {
        return hx_AnimationClip_Listener_Construct(thisObj.animationEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationClip_Listener_Construct = NativeInterface.loadMember(AnimationClip_Listener, "Construct", 1);
}

// END
