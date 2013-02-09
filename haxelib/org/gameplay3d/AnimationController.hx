package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AnimationController : public GameplayObject
class AnimationController extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void stopAllAnimations();
    public function stopAllAnimations():Void
    {
        hx_AnimationController_stopAllAnimations(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationController_stopAllAnimations = NativeInterface.loadMember(AnimationController, "stopAllAnimations", 1);
}

// END
