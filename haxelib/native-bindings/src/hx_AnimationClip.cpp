#include "HaxeAPI.h"

// DECL: void addBeginListener(AnimationClip::Listener* listener);
void hx_AnimationClip_addBeginListener_Lsnr(value thisObj, value listener)
{
    AnimationClip *_thisObj;
    AnimationClip::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addBeginListener(_listener);
}
DEFINE_PRIM(hx_AnimationClip_addBeginListener_Lsnr, 2);

// DECL: void addBeginListener(const char* function);
void hx_AnimationClip_addBeginListener_Str(value thisObj, value function)
{
    AnimationClip *_thisObj;
    const char *_function = ValueToString(function);
    ValueToObject(thisObj, _thisObj);
    _thisObj->addBeginListener(_function);
}
DEFINE_PRIM(hx_AnimationClip_addBeginListener_Str, 2);

// DECL: void addEndListener(AnimationClip::Listener* listener);
void hx_AnimationClip_addEndListener_Lsnr(value thisObj, value listener)
{
    AnimationClip *_thisObj;
    AnimationClip::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addEndListener(_listener);
}
DEFINE_PRIM(hx_AnimationClip_addEndListener_Lsnr, 2);

// DECL: void addEndListener(const char* function);
void hx_AnimationClip_addEndListener_Str(value thisObj, value function)
{
    AnimationClip *_thisObj;
    const char *_function = ValueToString(function);
    ValueToObject(thisObj, _thisObj);
    _thisObj->addEndListener(_function);
}
DEFINE_PRIM(hx_AnimationClip_addEndListener_Str, 2);

// DECL: void addListener(AnimationClip::Listener* listener, unsigned long eventTime);
void hx_AnimationClip_addListener_Lsnr_Int(value thisObj, value listener, value eventTime)
{
    AnimationClip *_thisObj;
    AnimationClip::Listener *_listener;
    unsigned long _eventTime = ValueToUlong(eventTime);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventTime);
}
DEFINE_PRIM(hx_AnimationClip_addListener_Lsnr_Int, 3);

// DECL: void addListener(const char* function, unsigned long eventTime);
void hx_AnimationClip_addListener_Str_Int(value thisObj, value function, value eventTime)
{
    AnimationClip *_thisObj;
    const char *_function = ValueToString(function);
    unsigned long _eventTime = ValueToUlong(eventTime);
    ValueToObject(thisObj, _thisObj);
    _thisObj->addListener(_function, _eventTime);
}
DEFINE_PRIM(hx_AnimationClip_addListener_Str_Int, 3);

// DECL: void crossFade(AnimationClip* clip, unsigned long duration);
void hx_AnimationClip_crossFade(value thisObj, value clip, value duration)
{
    AnimationClip *_thisObj, *_clip;
    unsigned long _duration = ValueToUlong(duration);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(clip, _clip);
    _thisObj->crossFade(_clip, _duration);
}
DEFINE_PRIM(hx_AnimationClip_crossFade, 3);

// DECL: unsigned long getActiveDuration() const;
value hx_AnimationClip_getActiveDuration(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getActiveDuration());
}
DEFINE_PRIM(hx_AnimationClip_getActiveDuration, 1);

// DECL: Animation* getAnimation() const;
value hx_AnimationClip_getAnimation(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAnimation(), true);
}
DEFINE_PRIM(hx_AnimationClip_getAnimation, 1);

// DECL: float getBlendWeight() const;
value hx_AnimationClip_getBlendWeight(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBlendWeight());
}
DEFINE_PRIM(hx_AnimationClip_getBlendWeight, 1);

// DECL: unsigned long getDuration() const;
value hx_AnimationClip_getDuration(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getDuration());
}
DEFINE_PRIM(hx_AnimationClip_getDuration, 1);

// DECL: float getElaspedTime() const;
value hx_AnimationClip_getElaspedTime(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getElaspedTime());
}
DEFINE_PRIM(hx_AnimationClip_getElaspedTime, 1);

// DECL: unsigned long getEndTime() const;
value hx_AnimationClip_getEndTime(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getEndTime());
}
DEFINE_PRIM(hx_AnimationClip_getEndTime, 1);

// DECL: const char* getId() const;
value hx_AnimationClip_getId(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_AnimationClip_getId, 1);

// DECL: float getRepeatCount() const;
value hx_AnimationClip_getRepeatCount(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRepeatCount());
}
DEFINE_PRIM(hx_AnimationClip_getRepeatCount, 1);

// DECL: float getSpeed() const;
value hx_AnimationClip_getSpeed(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSpeed());
}
DEFINE_PRIM(hx_AnimationClip_getSpeed, 1);

// DECL: unsigned long getStartTime() const;
value hx_AnimationClip_getStartTime(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getStartTime());
}
DEFINE_PRIM(hx_AnimationClip_getStartTime, 1);

// DECL: bool isPlaying() const;
value hx_AnimationClip_isPlaying(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isPlaying());
}
DEFINE_PRIM(hx_AnimationClip_isPlaying, 1);

// DECL: void pause();
void hx_AnimationClip_pause(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->pause();
}
DEFINE_PRIM(hx_AnimationClip_pause, 1);

// DECL: void play();
void hx_AnimationClip_play(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->play();
}
DEFINE_PRIM(hx_AnimationClip_play, 1);

// DECL: void setActiveDuration(unsigned long duration);
void hx_AnimationClip_setActiveDuration(value thisObj, value duration)
{
    AnimationClip *_thisObj;
    unsigned long _duration = ValueToUlong(duration);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setActiveDuration(_duration);
}
DEFINE_PRIM(hx_AnimationClip_setActiveDuration, 2);

// DECL: void setBlendWeight(float blendWeight);
void hx_AnimationClip_setBlendWeight(value thisObj, value blendWeight)
{
    AnimationClip *_thisObj;
    float _blendWeight = ValueToFloat(blendWeight);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBlendWeight(_blendWeight);
}
DEFINE_PRIM(hx_AnimationClip_setBlendWeight, 2);

// DECL: void setRepeatCount(float repeatCount);
void hx_AnimationClip_setRepeatCount(value thisObj, value repeatCount)
{
    AnimationClip *_thisObj;
    float _repeatCount = ValueToFloat(repeatCount);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRepeatCount(_repeatCount);
}
DEFINE_PRIM(hx_AnimationClip_setRepeatCount, 2);

// DECL: void setSpeed(float speed);
void hx_AnimationClip_setSpeed(value thisObj, value speed)
{
    AnimationClip *_thisObj;
    float _speed = ValueToFloat(speed);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSpeed(_speed);
}
DEFINE_PRIM(hx_AnimationClip_setSpeed, 2);

// DECL: void stop();
void hx_AnimationClip_stop(value thisObj)
{
    AnimationClip *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->stop();
}
DEFINE_PRIM(hx_AnimationClip_stop, 1);

// END
//
