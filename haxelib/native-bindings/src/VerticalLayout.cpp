#include "HaxeAPI.h"

// DECL: bool getBottomToTop();
value hx_VerticalLayout_getBottomToTop(value thisObj)
{
    VerticalLayout *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->getBottomToTop());
}
DEFINE_PRIM(hx_VerticalLayout_getBottomToTop, 1);

// DECL: Layout::Type getType();
value hx_VerticalLayout_getType(value thisObj)
{
    VerticalLayout *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_VerticalLayout_getType, 1);

// DECL: void setBottomToTop(bool bottomToTop);
void hx_VerticalLayout_setBottomToTop(value thisObj, value bottomToTop)
{
    VerticalLayout *_thisObj;
    bool _bottomToTop = val_get_bool(bottomToTop);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBottomToTop(_bottomToTop);
}
DEFINE_PRIM(hx_VerticalLayout_setBottomToTop, 2);

// END
//
