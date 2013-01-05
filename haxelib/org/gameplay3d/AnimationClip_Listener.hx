package org.gameplay3d;

// DECL: class Listener
interface AnimationClip_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void animationEvent(AnimationClip* clip, EventType type) = 0;
    public function animationEvent(clip:AnimationClip, type:Int):Void;
}

// END
