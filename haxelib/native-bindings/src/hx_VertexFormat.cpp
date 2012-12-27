#include "HaxeAPI.h"

// DECL: VertexFormat(const Element* elements, unsigned int elementCount);
value hx_VertexFormat_Construct(value elements, value elementCount)
{
    VertexFormat::Element *_elements;
    unsigned int _elementCount = ValueToUint(elementCount);

    _elements = new VertexFormat::Element[_elementCount];
    for (int index = 0; index < _elementCount; index++)
    {
        VertexFormat::Element *element;
        ValueToObject(val_array_i(elements, index), element);

        _elements[index].usage = element->usage;
        _elements[index].size = element->size;
    }

    const value& result = ObjectToValue(new VertexFormat(_elements, _elementCount));

    SAFE_DELETE_ARRAY(_elements);

    return result;
}
DEFINE_PRIM(hx_VertexFormat_Construct, 2);

// DECL: const Element& getElement(unsigned int index) const;
value hx_VertexFormat_getElement(value thisObj, value index)
{
    VertexFormat *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);

    const VertexFormat::Element& element = _thisObj->getElement(_index);

    return ObjectToValue(new VertexFormat::Element(element.usage, element.size));
}
DEFINE_PRIM(hx_VertexFormat_getElement, 2);

// DECL: unsigned int getElementCount() const;
value hx_VertexFormat_getElementCount(value thisObj)
{
    VertexFormat *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getElementCount());
}
DEFINE_PRIM(hx_VertexFormat_getElementCount, 1);

// DECL: unsigned int getVertexSize() const;
value hx_VertexFormat_getVertexSize(value thisObj)
{
    VertexFormat *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getVertexSize());
}
DEFINE_PRIM(hx_VertexFormat_getVertexSize, 1);

// DECL: static const char* toString(Usage usage);
value hx_VertexFormat_static_toString(value usage)
{
    VertexFormat::Usage _usage;
    ValueToEnum(usage, _usage);
    return StringToValue(VertexFormat::toString(_usage));
}
DEFINE_PRIM(hx_VertexFormat_static_toString, 1);

// END
//
