package org.gameplay3d.impl;

import org.gameplay3d.AnimationClip;
import org.gameplay3d.AnimationClip_Listener;
import org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AnimationClip_ListenerImpl extends GameplayObject, implements AnimationClip_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void animationEvent(AnimationClip* clip, EventType type) = 0;
    public function animationEvent(clip:AnimationClip, type:Int):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:AnimationClip_ListenerImpl):Dynamic
    {
        return hx_AnimationClip_Listener_Construct(thisObj.animationEvent);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationClip_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_Listener_Construct", 1);
}

// END
