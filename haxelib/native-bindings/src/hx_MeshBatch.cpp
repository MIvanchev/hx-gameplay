#include "HaxeAPI.h"

// DECL: void add(T* vertices, unsigned int vertexCount, unsigned short* indices = NULL, unsigned int indexCount = 0);
void hx_MeshBatch_add(value thisObj, value vertices, value vertexCount, value indices, value indexCount)
{
    MeshBatch *_thisObj;
    void *_vertices;
    unsigned int _vertexCount = ValueToUint(vertexCount);
    unsigned short *_indices;
    unsigned int _indexCount = ValueToUint(indexCount);
    ValueToObject(thisObj, _thisObj);
    ValueToBuffer(vertices, _vertices);
    ValueToArray(indices, _indices);
    _thisObj->add(_vertices, _vertexCount, _indices, _indexCount);
}
DEFINE_PRIM(hx_MeshBatch_add, 5);

// DECL: static MeshBatch* create(const VertexFormat& vertexFormat, Mesh::PrimitiveType primitiveType, Material* material, bool indexed, unsigned int initialCapacity = 1024, unsigned int growSize = 1024);
value hx_MeshBatch_static_create_Frmt_Int_Mtrl_Bool_IntX2(value *args, int nargs)
{
    const value& vertexFormat = *args++;
    const value& primitiveType = *args++;
    const value& material = *args++;
    const value& indexed = *args++;
    const value& initialCapacity = *args++;
    const value& growSize = *args;

    VertexFormat *_vertexFormat;
    Mesh::PrimitiveType _primitiveType;
    Material *_material;
    bool _indexed = val_get_bool(indexed);
    unsigned int _initialCapacity = ValueToUint(initialCapacity);
    unsigned int _growSize = ValueToUint(growSize);
    ValueToObject(vertexFormat, _vertexFormat);
    ValueToEnum(primitiveType, _primitiveType);
    ValueToObject(material, _material);
    return ObjectToValue(MeshBatch::create(*_vertexFormat, _primitiveType, _material, _indexed, _initialCapacity, _growSize));
}
DEFINE_PRIM_MULT(hx_MeshBatch_static_create_Frmt_Int_Mtrl_Bool_IntX2);

// DECL: static MeshBatch* create(const VertexFormat& vertexFormat, Mesh::PrimitiveType primitiveType, const char* materialPath, bool indexed, unsigned int initialCapacity = 1024, unsigned int growSize = 1024);
value hx_MeshBatch_static_create_Frmt_Int_Str_Bool_IntX2(value *args, int nargs)
{
    const value& vertexFormat = *args++;
    const value& primitiveType = *args++;
    const value& materialPath = *args++;
    const value& indexed = *args++;
    const value& initialCapacity = *args++;
    const value& growSize = *args;

    VertexFormat *_vertexFormat;
    Mesh::PrimitiveType _primitiveType;
    const char *_materialPath = ValueToString(materialPath);
    bool _indexed = val_get_bool(indexed);
    unsigned int _initialCapacity = ValueToUint(initialCapacity);
    unsigned int _growSize = ValueToUint(growSize);
    ValueToObject(vertexFormat, _vertexFormat);
    ValueToEnum(primitiveType, _primitiveType);
    return ObjectToValue(MeshBatch::create(*_vertexFormat, _primitiveType, _materialPath, _indexed, _initialCapacity, _growSize));
}
DEFINE_PRIM_MULT(hx_MeshBatch_static_create_Frmt_Int_Str_Bool_IntX2);

// DECL: void draw();
void hx_MeshBatch_draw(value thisObj)
{
    MeshBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw();
}
DEFINE_PRIM(hx_MeshBatch_draw, 1);

// DECL: void finish();
void hx_MeshBatch_finish(value thisObj)
{
    MeshBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->finish();
}
DEFINE_PRIM(hx_MeshBatch_finish, 1);

// DECL: unsigned int getCapacity() const;
value hx_MeshBatch_getCapacity(value thisObj)
{
    MeshBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getCapacity());
}
DEFINE_PRIM(hx_MeshBatch_getCapacity, 1);

// DECL: inline Material* getMaterial() const;
value hx_MeshBatch_getMaterial(value thisObj)
{
    MeshBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getMaterial(), true);
}
DEFINE_PRIM(hx_MeshBatch_getMaterial, 1);

// DECL: void setCapacity(unsigned int capacity);
void hx_MeshBatch_setCapacity(value thisObj, value capacity)
{
    MeshBatch *_thisObj;
    unsigned int _capacity = ValueToUint(capacity);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setCapacity(_capacity);
}
DEFINE_PRIM(hx_MeshBatch_setCapacity, 2);

// DECL: void start();
void hx_MeshBatch_start(value thisObj)
{
    MeshBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->start();
}
DEFINE_PRIM(hx_MeshBatch_start, 1);

// END
//
