#include "HaxeAPI.h"

// DECL: const Vector4& getColor() const;
value hx_Theme_ThemeImage_getColor(value thisObj)
{
    Theme::ThemeImage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getColor());
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
    return ObjectToValue(new Rectangle(_thisObj->getRegion()));
}
DEFINE_PRIM(hx_Theme_ThemeImage_getRegion, 1);

// DECL: const UVs& getUVs() const;
value hx_Theme_ThemeImage_getUVs(value thisObj)
{
    Theme::ThemeImage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    Theme::UVs *result = new Theme::UVs();
    *result = _thisObj->getUVs();
    return ObjectToValue(result);
}
DEFINE_PRIM(hx_Theme_ThemeImage_getUVs, 1);

// END
//
