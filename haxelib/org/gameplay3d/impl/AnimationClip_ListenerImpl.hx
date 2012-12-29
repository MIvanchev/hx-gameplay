package org.gameplay3d.impl;

import org.gameplay3d.AnimationClip;
import org.gameplay3d.AnimationClip_Listener;
import org.gameplay3d.GameplayObject;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class AnimationClip_ListenerImpl extends GameplayObject, implements AnimationClip_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var listener:AnimationClip_Listener;

    function new(
            listener:AnimationClip_Listener,
            nativeObject:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.listener = listener;
    }

    public static function make(listener:AnimationClip_Listener):AnimationClip_ListenerImpl
    {
        return new AnimationClip_ListenerImpl(listener, constructNativeObject, [ null ]);
    }

    // DECL: virtual void animationEvent(AnimationClip* clip, EventType type) = 0;
    public function animationEvent(clip:AnimationClip, type:Int):Void
    {
        listener.animationEvent(clip, type);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function animationEventWrapper(clip:Dynamic, type:Int):Void
    {
        animationEvent(AnimationClip.wrap(clip), type);
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:AnimationClip_ListenerImpl):Dynamic
    {
        return hx_AnimationClip_Listener_Construct(thisObj.animationEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationClip_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_Listener_Construct", 1);
}

// END
