#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeAnimationClip_Listener : public AnimationClip::Listener
{
private:

    AutoGCRoot clbkAnimationEvent;

public:

    HaxeAnimationClip_Listener(const value& _clbkAnimationEvent)
        : clbkAnimationEvent(_clbkAnimationEvent)
    {
    }

    void animationEvent(AnimationClip *clip, EventType type)
    {
        val_call2(
                clbkAnimationEvent.get(),
                ReferenceToValue(clip, true),
                EnumToValue(type)
            );
    }
};

value hx_AnimationClip_Listener_Construct(value clbkAnimationEvent)
{
    HaxeAnimationClip_Listener *instance =
        new HaxeAnimationClip_Listener(clbkAnimationEvent);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_AnimationClip_Listener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void animationEvent(AnimationClip* clip, EventType type) = 0;
// void hx_AnimationClip_Listener_animationEvent(value thisObj, value clip, value type)
// {
    // AnimationClip::Listener *_thisObj;
    // AnimationClip *_clip;
    // AnimationClip::Listener::EventType _type;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(clip, _clip);
    // ValueToEnum(type, _type);
    // _thisObj->animationEvent(_clip, _type);
// }
// DEFINE_PRIM(hx_AnimationClip_Listener_animationEvent, 3);

// END
//
