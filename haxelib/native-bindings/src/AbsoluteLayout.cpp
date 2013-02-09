#include "HaxeAPI.h"

// DECL: Layout::Type getType();
value hx_AbsoluteLayout_getType(value thisObj)
{
    AbsoluteLayout *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_AbsoluteLayout_getType, 1);

// END
//
