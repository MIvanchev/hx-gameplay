#include "HaxeAPI.h"

// DECL: void stopAllAnimations();
void hx_AnimationController_stopAllAnimations(value thisObj)
{
    AnimationController *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->stopAllAnimations();
}
DEFINE_PRIM(hx_AnimationController_stopAllAnimations, 1);

// END
//
