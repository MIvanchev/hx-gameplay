#include "HaxeAPI.h"

// DECL: Effect* getEffect() const;
value hx_Uniform_getEffect(value thisObj)
{
    Uniform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getEffect(), true);
}
DEFINE_PRIM(hx_Uniform_getEffect, 1);

// DECL: const char* getName() const;
value hx_Uniform_getName(value thisObj)
{
    Uniform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getName());
}
DEFINE_PRIM(hx_Uniform_getName, 1);

// FIXME: assume GLenum is always integral
// DECL: const GLenum getType() const;
value hx_Uniform_getType(value thisObj)
{
    Uniform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getType());
}
DEFINE_PRIM(hx_Uniform_getType, 1);

// END
//
