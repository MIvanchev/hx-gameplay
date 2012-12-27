package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AnimationClip : public Ref
class AnimationClip extends GameplayObject, implements Ref
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var REPEAT_INDEFINITE:Int = 0;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void addBeginListener(AnimationClip::Listener* listener);
    public function addBeginListener(listener:AnimationClip_Listener):Void
    {
        hx_AnimationClip_addBeginListener_Lsnr(nativeObject, listener.native());
    }

    // DECL: void addBeginListener(const char* function);
    public function addBeginListener_Str(func:String):Void
    {
        hx_AnimationClip_addBeginListener_Str(nativeObject, func);
    }

    // DECL: void addEndListener(AnimationClip::Listener* listener);
    public function addEndListener_Lsnr(listener:AnimationClip_Listener):Void
    {
        hx_AnimationClip_addEndListener_Lsnr(nativeObject, listener.native());
    }

    // DECL: void addEndListener(const char* function);
    public function addEndListener_Str(func:String):Void
    {
        hx_AnimationClip_addEndListener_Str(nativeObject, func);
    }

    // DECL: void addListener(AnimationClip::Listener* listener, unsigned long eventTime);
    public function addListener_Lsnr_Int(listener:AnimationClip_Listener, eventTime:Int):Void
    {
        hx_AnimationClip_addListener_Lsnr_Int(nativeObject, listener.native(), eventTime);
    }

    // DECL: void addListener(const char* function, unsigned long eventTime);
    public function addListener_Str_Int(func:String, eventTime:Int):Void
    {
        hx_AnimationClip_addListener_Str_Int(nativeObject, func, eventTime);
    }

    // DECL: void crossFade(AnimationClip* clip, unsigned long duration);
    public function crossFade(clip:AnimationClip, duration:Int):Void
    {
        hx_AnimationClip_crossFade(nativeObject, clip.native(), duration);
    }

    // DECL: unsigned long getActiveDuration() const;
    public function getActiveDuration():Int
    {
        return hx_AnimationClip_getActiveDuration(nativeObject);
    }

    // DECL: Animation* getAnimation() const;
    public function getAnimation():Animation
    {
        return Animation.wrap(hx_AnimationClip_getAnimation(nativeObject));
    }

    // DECL: float getBlendWeight() const;
    public function getBlendWeight():Float
    {
        return hx_AnimationClip_getBlendWeight(nativeObject);
    }

    // DECL: unsigned long getDuration() const;
    public function getDuration():Int
    {
        return hx_AnimationClip_getDuration(nativeObject);
    }

    // DECL: float getElaspedTime() const;
    public function getElaspedTime():Float
    {
        return hx_AnimationClip_getElaspedTime(nativeObject);
    }

    // DECL: unsigned long getEndTime() const;
    public function getEndTime():Int
    {
        return hx_AnimationClip_getEndTime(nativeObject);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_AnimationClip_getId(nativeObject);
    }

    // DECL: float getRepeatCount() const;
    public function getRepeatCount():Float
    {
        return hx_AnimationClip_getRepeatCount(nativeObject);
    }

    // DECL: float getSpeed() const;
    public function getSpeed():Float
    {
        return hx_AnimationClip_getSpeed(nativeObject);
    }

    // DECL: unsigned long getStartTime() const;
    public function getStartTime():Int
    {
        return hx_AnimationClip_getStartTime(nativeObject);
    }

    // DECL: bool isPlaying() const;
    public function isPlaying():Bool
    {
        return hx_AnimationClip_isPlaying(nativeObject);
    }

    // DECL: void pause();
    public function pause():Void
    {
        hx_AnimationClip_pause(nativeObject);
    }

    // DECL: void play();
    public function play():Void
    {
        hx_AnimationClip_play(nativeObject);
    }

    // DECL: void setActiveDuration(unsigned long duration);
    public function setActiveDuration(duration:Int):Void
    {
        hx_AnimationClip_setActiveDuration(nativeObject, duration);
    }

    // DECL: void setBlendWeight(float blendWeight);
    public function setBlendWeight(blendWeight:Float):Void
    {
        hx_AnimationClip_setBlendWeight(nativeObject, blendWeight);
    }

    // DECL: void setRepeatCount(float repeatCount);
    public function setRepeatCount(repeatCount:Float):Void
    {
        hx_AnimationClip_setRepeatCount(nativeObject, repeatCount);
    }

    // DECL: void setSpeed(float speed);
    public function setSpeed(speed:Float):Void
    {
        hx_AnimationClip_setSpeed(nativeObject, speed);
    }

    // DECL: void stop();
    public function stop():Void
    {
        hx_AnimationClip_stop(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationClip_addBeginListener_Lsnr:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_addBeginListener_Lsnr", 2);
    static var hx_AnimationClip_addBeginListener_Str:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_addBeginListener_Str", 2);
    static var hx_AnimationClip_addEndListener_Lsnr:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_addEndListener_Lsnr", 2);
    static var hx_AnimationClip_addEndListener_Str:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_addEndListener_Str", 2);
    static var hx_AnimationClip_addListener_Lsnr_Int:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_addListener_Lsnr_Int", 3);
    static var hx_AnimationClip_addListener_Str_Int:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_addListener_Str_Int", 3);
    static var hx_AnimationClip_crossFade:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_crossFade", 3);
    static var hx_AnimationClip_getActiveDuration:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getActiveDuration", 1);
    static var hx_AnimationClip_getAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getAnimation", 1);
    static var hx_AnimationClip_getBlendWeight:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getBlendWeight", 1);
    static var hx_AnimationClip_getDuration:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getDuration", 1);
    static var hx_AnimationClip_getElaspedTime:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getElaspedTime", 1);
    static var hx_AnimationClip_getEndTime:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getEndTime", 1);
    static var hx_AnimationClip_getId:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getId", 1);
    static var hx_AnimationClip_getRepeatCount:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getRepeatCount", 1);
    static var hx_AnimationClip_getSpeed:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getSpeed", 1);
    static var hx_AnimationClip_getStartTime:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_getStartTime", 1);
    static var hx_AnimationClip_isPlaying:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_isPlaying", 1);
    static var hx_AnimationClip_pause:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_pause", 1);
    static var hx_AnimationClip_play:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_play", 1);
    static var hx_AnimationClip_setActiveDuration:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_setActiveDuration", 2);
    static var hx_AnimationClip_setBlendWeight:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_setBlendWeight", 2);
    static var hx_AnimationClip_setRepeatCount:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_setRepeatCount", 2);
    static var hx_AnimationClip_setSpeed:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_setSpeed", 2);
    static var hx_AnimationClip_stop:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationClip_stop", 1);
}

// END
