package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
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

    static var hx_AnimationController_stopAllAnimations:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationController_stopAllAnimations", 1);
}

// END
