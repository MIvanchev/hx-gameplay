#include "HaxeAPI.h"

// DECL: static Theme* create(const char* url);
value hx_Theme_static_create(value url)
{
    const char *_url = ValueToString(url);
    return ReferenceToValue(Theme::create(_url));
}
DEFINE_PRIM(hx_Theme_static_create, 1);

// DECL: Theme::Style* getEmptyStyle();
value hx_Theme_getEmptyStyle(value thisObj)
{
    Theme *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getEmptyStyle(), false);
}
DEFINE_PRIM(hx_Theme_getEmptyStyle, 1);

// DECL: Theme::Style* getStyle(const char* id) const;
value hx_Theme_getStyle(value thisObj, value id)
{
    Theme *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getStyle(_id), false);
}
DEFINE_PRIM(hx_Theme_getStyle, 2);

// END
//
