#include "HaxeAPI.h"

// DECL: Theme* getTheme() const;
value hx_Theme_Style_getTheme(value thisObj)
{
    Theme::Style *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTheme(), true);
}
DEFINE_PRIM(hx_Theme_Style_getTheme, 1);

// END
//
