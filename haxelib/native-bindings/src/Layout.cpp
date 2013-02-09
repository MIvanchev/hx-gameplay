#include "HaxeAPI.h"

// DECL: virtual Type getType() = 0;
value hx_Layout_getType(value thisObj)
{
    Layout *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Layout_getType, 1);

// END
//
