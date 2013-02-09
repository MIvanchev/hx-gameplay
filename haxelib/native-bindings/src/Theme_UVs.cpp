#include "HaxeAPI.h"

// DECL: UVs();
value hx_Theme_UVs_Construct()
{
    return ObjectToValue(new Theme::UVs());
}
DEFINE_PRIM(hx_Theme_UVs_Construct, 0);

// DECL: UVs(float u1, float v1, float u2, float v2);
value hx_Theme_UVs_Construct_FltX4(value u1, value v1, value u2, value v2)
{
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    return ObjectToValue(new Theme::UVs(_u1, _v1, _u2, _v2));
}
DEFINE_PRIM(hx_Theme_UVs_Construct_FltX4, 4);

// DECL: static const UVs& empty();
value hx_Theme_UVs_static_empty()
{
    return ObjectToValue(&Theme::UVs::empty(), false);
}
DEFINE_PRIM(hx_Theme_UVs_static_empty, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_Theme_UVs_property_u1_get(value thisObj)
{
    Theme::UVs *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->u1);
}
DEFINE_PRIM(hx_Theme_UVs_property_u1_get, 1);

value hx_Theme_UVs_property_u1_set(value thisObj, value _value)
{
    Theme::UVs *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->u1 = _flt);
}
DEFINE_PRIM(hx_Theme_UVs_property_u1_set, 2);

value hx_Theme_UVs_property_v1_get(value thisObj)
{
    Theme::UVs *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->v1);
}
DEFINE_PRIM(hx_Theme_UVs_property_v1_get, 1);

value hx_Theme_UVs_property_v1_set(value thisObj, value _value)
{
    Theme::UVs *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->v1 = _flt);
}
DEFINE_PRIM(hx_Theme_UVs_property_v1_set, 2);

value hx_Theme_UVs_property_u2_get(value thisObj)
{
    Theme::UVs *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->u2);
}
DEFINE_PRIM(hx_Theme_UVs_property_u2_get, 1);

value hx_Theme_UVs_property_u2_set(value thisObj, value _value)
{
    Theme::UVs *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->u2 = _flt);
}
DEFINE_PRIM(hx_Theme_UVs_property_u2_set, 2);

value hx_Theme_UVs_property_v2_get(value thisObj)
{
    Theme::UVs *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->v2);
}
DEFINE_PRIM(hx_Theme_UVs_property_v2_get, 1);

value hx_Theme_UVs_property_v2_set(value thisObj, value _value)
{
    Theme::UVs *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->v2 = _flt);
}
DEFINE_PRIM(hx_Theme_UVs_property_v2_set, 2);

// END
//
