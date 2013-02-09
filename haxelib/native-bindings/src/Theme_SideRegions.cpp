#include "HaxeAPI.h"

// DECL: SideRegions() : top(0), bottom(0), left(0), right(0) {}
value hx_Theme_SideRegions_Construct()
{
    return ObjectToValue(new Theme::SideRegions());
}
DEFINE_PRIM(hx_Theme_SideRegions_Construct, 0);

// DECL: static const SideRegions& empty();
value hx_Theme_SideRegions_static_empty()
{
    return ObjectToValue(&Theme::SideRegions::empty(), false);
}
DEFINE_PRIM(hx_Theme_SideRegions_static_empty, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Theme_SideRegions_property_top_get(value thisObj)
{
    Theme::SideRegions *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->top);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_top_get, 1);

value hx_Theme_SideRegions_property_top_set(value thisObj, value _value)
{
    Theme::SideRegions *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->top = _flt);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_top_set, 2);

value hx_Theme_SideRegions_property_left_get(value thisObj)
{
    Theme::SideRegions *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->left);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_left_get, 1);

value hx_Theme_SideRegions_property_left_set(value thisObj, value _value)
{
    Theme::SideRegions *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->left = _flt);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_left_set, 2);

value hx_Theme_SideRegions_property_bottom_get(value thisObj)
{
    Theme::SideRegions *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->bottom);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_bottom_get, 1);

value hx_Theme_SideRegions_property_bottom_set(value thisObj, value _value)
{
    Theme::SideRegions *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->bottom = _flt);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_bottom_set, 2);

value hx_Theme_SideRegions_property_right_get(value thisObj)
{
    Theme::SideRegions *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->right);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_right_get, 1);

value hx_Theme_SideRegions_property_right_set(value thisObj, value _value)
{
    Theme::SideRegions *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->right = _flt);
}
DEFINE_PRIM(hx_Theme_SideRegions_property_right_set, 2);

// END
//
