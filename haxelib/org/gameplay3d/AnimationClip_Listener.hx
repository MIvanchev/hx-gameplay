package org.gameplay3d;

import dk.bluewolf.gameplay.INativeBinding;

// DECL: class Listener : public GameplayObject
interface AnimationClip_Listener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void animationEvent(AnimationClip* clip, EventType type) = 0;
    public function animationEvent(clip:AnimationClip, type:Int):Void;
}

// END
