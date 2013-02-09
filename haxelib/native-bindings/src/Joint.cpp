#include "HaxeAPI.h"

// DECL: const Matrix& getInverseBindPose() const;
value hx_Joint_getInverseBindPose(value thisObj)
{
    Joint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseBindPose(), false);
}
DEFINE_PRIM(hx_Joint_getInverseBindPose, 1);

// DECL: Node::Type getType() const;
value hx_Joint_getType(value thisObj)
{
    Joint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Joint_getType, 1);

// END
//
