#include "HaxeAPI.h"

// DECL: Layout::Type getType();
value hx_FlowLayout_getType(value thisObj)
{
    FlowLayout *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_FlowLayout_getType, 1);

// END
//
