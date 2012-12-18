#include "HaxeAPI.h"

// DECL: Element();
value hx_VertexFormat_Element_Construct()
{
    return ObjectToValue(new VertexFormat::Element());
}
DEFINE_PRIM(hx_VertexFormat_Element_Construct, 0);

// DECL: Element(Usage usage, unsigned int size);
value hx_VertexFormat_Element_Construct_IntX2(value usage, value size)
{
    VertexFormat::Usage _usage;
    unsigned int _size = ValueToUint(size);
    ValueToEnum(usage, _usage);
    return ObjectToValue(new VertexFormat::Element(_usage, _size));
}
DEFINE_PRIM(hx_VertexFormat_Element_Construct_IntX2, 2);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_VertexFormat_Element_property_usage_get(value thisObj)
{
    VertexFormat::Element *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->usage);
}
DEFINE_PRIM(hx_VertexFormat_Element_property_usage_get, 1);

value hx_VertexFormat_Element_property_usage_set(value thisObj, value _value)
{
    VertexFormat::Element *_thisObj;
    VertexFormat::Usage _val;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(_value, _val);
    _thisObj->usage = _val;
    return _value;
}
DEFINE_PRIM(hx_VertexFormat_Element_property_usage_set, 2);

value hx_VertexFormat_Element_property_size_get(value thisObj)
{
    VertexFormat::Element *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->size);
}
DEFINE_PRIM(hx_VertexFormat_Element_property_size_get, 1);

value hx_VertexFormat_Element_property_size_set(value thisObj, value _value)
{
    VertexFormat::Element *_thisObj;
    unsigned int _val = ValueToUint(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->size = _val);
}
DEFINE_PRIM(hx_VertexFormat_Element_property_size_set, 2);

// END
//
