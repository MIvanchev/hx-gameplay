#include "HaxeAPI.h"

// DECL: MeshPart* addPart(PrimitiveType primitiveType, Mesh::IndexFormat indexFormat, unsigned int indexCount, bool dynamic = false);
value hx_Mesh_addPart(value thisObj, value primitiveType, value indexFormat, value indexCount, value dynamic)
{
    Mesh *_thisObj;
    Mesh::PrimitiveType _primitiveType;
    Mesh::IndexFormat _indexFormat;
    unsigned int _indexCount = ValueToUint(indexCount);
    bool _dynamic = val_get_bool(dynamic);
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(primitiveType, _primitiveType);
    ValueToEnum(indexFormat, _indexFormat);
    return ObjectToValue(_thisObj->addPart(_primitiveType, _indexFormat, _indexCount, _dynamic), false);
}
DEFINE_PRIM(hx_Mesh_addPart, 5);

// DECL: static Mesh* createBoundingBox(const BoundingBox& box);
value hx_Mesh_static_createBoundingBox(value box)
{
    BoundingBox *_box;
    ValueToObject(box, _box);
    return ReferenceToValue(Mesh::createBoundingBox(*_box));
}
DEFINE_PRIM(hx_Mesh_static_createBoundingBox, 1);

// DECL: static Mesh* createLines(Vector3* points, unsigned int pointCount);
value hx_Mesh_static_createLines(value points, value pointCount)
{
    Vector3 *_points, *point;
    unsigned int _pointCount = ValueToUint(pointCount);

    _points = new Vector3[_pointCount];
    for (int index = 0; index < _pointCount; index++)
    {
        ValueToObject(val_array_i(points, index), point);
        _points[index].set(*point);
    }

    const value& result = ReferenceToValue(Mesh::createLines(_points, _pointCount));

    SAFE_DELETE_ARRAY(_points);

    return result;
}
DEFINE_PRIM(hx_Mesh_static_createLines, 2);

// DECL: static Mesh* createMesh(const VertexFormat& vertexFormat, unsigned int vertexCount, bool dynamic = false);
value hx_Mesh_static_createMesh(value vertexFormat, value vertexCount, value dynamic)
{
    VertexFormat *_vertexFormat;
    unsigned int _vertexCount = ValueToUint(vertexCount);
    bool _dynamic = val_get_bool(dynamic);
    ValueToObject(vertexFormat, _vertexFormat);
    return ReferenceToValue(Mesh::createMesh(*_vertexFormat, _vertexCount, _dynamic));
}
DEFINE_PRIM(hx_Mesh_static_createMesh, 3);

// DECL: static Mesh* createQuad(const Vector3& p1, const Vector3& p2, const Vector3& p3, const Vector3& p4);
value hx_Mesh_static_createQuad_V3X4(value p1, value p2, value p3, value p4)
{
    Vector3 *_p1, *_p2, *_p3, *_p4;
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    ValueToObject(p3, _p3);
    ValueToObject(p4, _p4);
    return ReferenceToValue(Mesh::createQuad(*_p1, *_p2, *_p3, *_p4));
}
DEFINE_PRIM(hx_Mesh_static_createQuad_V3X4, 4);

// DECL: static Mesh* createQuad(float x, float y, float width, float height, float s1 = 0.0f, float t1 = 0.0f, float s2 = 1.0f, float t2 = 1.0f);
value hx_Mesh_static_createQuad_FltX8(value *args, int nargs)
{
    const value& x = *args++;
    const value& y = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& s1 = *args++;
    const value& t1 = *args++;
    const value& s2 = *args++;
    const value& t2 = *args;

    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _s1 = ValueToFloat(s1);
    float _t1 = ValueToFloat(t1);
    float _s2 = ValueToFloat(s2);
    float _t2 = ValueToFloat(t2);
    return ReferenceToValue(Mesh::createQuad(_x, _y, _width, _height, _s1, _t1, _s2, _t2));
}
DEFINE_PRIM_MULT(hx_Mesh_static_createQuad_FltX8);

// DECL: static Mesh* createQuadFullscreen();
value hx_Mesh_static_createQuadFullscreen()
{
    return ReferenceToValue(Mesh::createQuadFullscreen());
}
DEFINE_PRIM(hx_Mesh_static_createQuadFullscreen, 0);

// DECL: const BoundingBox& getBoundingBox() const;
value hx_Mesh_getBoundingBox(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBoundingBox(), false);
}
DEFINE_PRIM(hx_Mesh_getBoundingBox, 1);

// DECL: const BoundingSphere& getBoundingSphere() const;
value hx_Mesh_getBoundingSphere(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBoundingSphere(), false);
}
DEFINE_PRIM(hx_Mesh_getBoundingSphere, 1);

// DECL: MeshPart* getPart(unsigned int index);
value hx_Mesh_getPart(value thisObj, value index)
{
    Mesh *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getPart(_index), false);
}
DEFINE_PRIM(hx_Mesh_getPart, 2);

// DECL: unsigned int getPartCount() const;
value hx_Mesh_getPartCount(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getPartCount());
}
DEFINE_PRIM(hx_Mesh_getPartCount, 1);

// DECL: PrimitiveType getPrimitiveType() const;
value hx_Mesh_getPrimitiveType(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getPrimitiveType());
}
DEFINE_PRIM(hx_Mesh_getPrimitiveType, 1);

// DECL: const char* getUrl() const;
value hx_Mesh_getUrl(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getUrl());
}
DEFINE_PRIM(hx_Mesh_getUrl, 1);

// DECL: VertexBufferHandle getVertexBuffer() const;
value hx_Mesh_getVertexBuffer(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return HandleToValue(_thisObj->getVertexBuffer());
}
DEFINE_PRIM(hx_Mesh_getVertexBuffer, 1);

// DECL: unsigned int getVertexCount() const;
value hx_Mesh_getVertexCount(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getVertexCount());
}
DEFINE_PRIM(hx_Mesh_getVertexCount, 1);

// TODO:
// DECL: const VertexFormat& getVertexFormat() const;
value hx_Mesh_getVertexFormat(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);

    const VertexFormat& format = _thisObj->getVertexFormat();
    int count = format.getElementCount();
    VertexFormat::Element *elements = new VertexFormat::Element[count];
    for (int index = 0; index < count; index++)
    {
        const VertexFormat::Element& element = format.getElement(index);
        elements[index].usage = element.usage;
        elements[index].size = element.size;
    }

    const value& result = ObjectToValue(new VertexFormat(elements, count));

    SAFE_DELETE_ARRAY(elements);

    return result;
}
DEFINE_PRIM(hx_Mesh_getVertexFormat, 1);

// DECL: unsigned int getVertexSize() const;
value hx_Mesh_getVertexSize(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getVertexSize());
}
DEFINE_PRIM(hx_Mesh_getVertexSize, 1);

// DECL: bool isDynamic() const;
value hx_Mesh_isDynamic(value thisObj)
{
    Mesh *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isDynamic());
}
DEFINE_PRIM(hx_Mesh_isDynamic, 1);

// DECL: void setBoundingBox(const BoundingBox& box);
void hx_Mesh_setBoundingBox(value thisObj, value box)
{
    Mesh *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    _thisObj->setBoundingBox(*_box);
}
DEFINE_PRIM(hx_Mesh_setBoundingBox, 2);

// DECL: void setBoundingSphere(const BoundingSphere& sphere);
void hx_Mesh_setBoundingSphere(value thisObj, value sphere)
{
    Mesh *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    _thisObj->setBoundingSphere(*_sphere);
}
DEFINE_PRIM(hx_Mesh_setBoundingSphere, 2);

// DECL: void setPrimitiveType(Mesh::PrimitiveType type);
void hx_Mesh_setPrimitiveType(value thisObj, value type)
{
    Mesh *_thisObj;
    Mesh::PrimitiveType _type;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(type, _type);
    _thisObj->setPrimitiveType(_type);
}
DEFINE_PRIM(hx_Mesh_setPrimitiveType, 2);

// DECL: void setVertexData(const float* vertexData, unsigned int vertexStart = 0, unsigned int vertexCount = 0);
void hx_Mesh_setVertexData(value thisObj, value vertexData, value vertexStart, value vertexCount)
{
    Mesh *_thisObj;
    const float *_vertexData;
    unsigned int _vertexStart = ValueToUint(vertexStart);
    unsigned int _vertexCount = ValueToUint(vertexCount);
    ValueToObject(thisObj, _thisObj);
    ValueToArray(vertexData, _vertexData);
    _thisObj->setVertexData(_vertexData, _vertexStart, _vertexCount);
}
DEFINE_PRIM(hx_Mesh_setVertexData, 4);

// END
//
