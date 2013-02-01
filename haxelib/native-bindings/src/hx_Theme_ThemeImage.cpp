#include "HaxeAPI.h"

// DECL: const Vector4& getColor() const;
value hx_Theme_ThemeImage_getColor(value thisObj)
{
    Theme::ThemeImage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getColor(), false);
}
DEFINE_PRIM(hx_Theme_ThemeImage_getColor, 1);

// DECL: const char* getId() const;
value hx_Theme_ThemeImage_getId(value thisObj)
{
    Theme::ThemeImage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Theme_ThemeImage_getId, 1);

// DECL: const Rectangle& getRegion() const;
value hx_Theme_ThemeImage_getRegion(value thisObj)
{
    Theme::ThemeImage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRegion(), false);
}
DEFINE_PRIM(hx_Theme_ThemeImage_getRegion, 1);

// DECL: const UVs& getUVs() const;
value hx_Theme_ThemeImage_getUVs(value thisObj)
{
    Theme::ThemeImage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getUVs(), false);
}
DEFINE_PRIM(hx_Theme_ThemeImage_getUVs, 1);

// END
//
