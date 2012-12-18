#include "HaxeAPI.h"

// DECL: IndexBufferHandle getIndexBuffer() const;
value hx_MeshPart_getIndexBuffer(value thisObj)
{
    MeshPart *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return HandleToValue(_thisObj->getIndexBuffer());
}
DEFINE_PRIM(hx_MeshPart_getIndexBuffer, 1);

// DECL: unsigned int getIndexCount() const;
value hx_MeshPart_getIndexCount(value thisObj)
{
    MeshPart *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getIndexCount());
}
DEFINE_PRIM(hx_MeshPart_getIndexCount, 1);

// DECL: Mesh::IndexFormat getIndexFormat() const;
value hx_MeshPart_getIndexFormat(value thisObj)
{
    MeshPart *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getIndexFormat());
}
DEFINE_PRIM(hx_MeshPart_getIndexFormat, 1);

// DECL: unsigned int getMeshIndex() const;
value hx_MeshPart_getMeshIndex(value thisObj)
{
    MeshPart *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getMeshIndex());
}
DEFINE_PRIM(hx_MeshPart_getMeshIndex, 1);

// DECL: Mesh::PrimitiveType getPrimitiveType() const;
value hx_MeshPart_getPrimitiveType(value thisObj)
{
    MeshPart *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getPrimitiveType());
}
DEFINE_PRIM(hx_MeshPart_getPrimitiveType, 1);

// DECL: bool isDynamic() const;
value hx_MeshPart_isDynamic(value thisObj)
{
    MeshPart *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isDynamic());
}
DEFINE_PRIM(hx_MeshPart_isDynamic, 1);

// DECL: void setIndexData(const void* indexData, unsigned int indexStart, unsigned int indexCount);
void hx_MeshPart_setIndexData(value thisObj, value indexData, value indexStart, value indexCount)
{
    MeshPart *_thisObj;
    void *_indexData;
    unsigned int _indexStart = ValueToUint(indexStart);
    unsigned int _indexCount = ValueToUint(indexCount);
    ValueToObject(thisObj, _thisObj);
    ValueToBuffer(indexData, _indexData);
    _thisObj->setIndexData(_indexData, _indexStart, _indexCount);
}
DEFINE_PRIM(hx_MeshPart_setIndexData, 4);

// END
//
