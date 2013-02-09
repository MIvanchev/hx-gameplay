#include "HaxeAPI.h"

// DECL: void bind();
void hx_VertexAttributeBinding_bind(value thisObj)
{
    VertexAttributeBinding *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->bind();
}
DEFINE_PRIM(hx_VertexAttributeBinding_bind, 1);

// DECL: static VertexAttributeBinding* create(Mesh* mesh, Effect* effect);
value hx_VertexAttributeBinding_static_create_Mesh_Eff(value mesh, value effect)
{
    Mesh *_mesh;
    Effect *_effect;
    ValueToObject(mesh, _mesh);
    ValueToObject(effect, _effect);
    return ReferenceToValue(VertexAttributeBinding::create(_mesh, _effect));
}
DEFINE_PRIM(hx_VertexAttributeBinding_static_create_Mesh_Eff, 2);

// DECL: static VertexAttributeBinding* create(const VertexFormat& vertexFormat, void* vertexPointer, Effect* effect);
value hx_VertexAttributeBinding_static_create_Frmt_Dat_Eff(value vertexFormat, value vertexPointer, value effect)
{
    VertexFormat *_vertexFormat;
    void *_vertexPointer;
    Effect *_effect;
    ValueToObject(vertexFormat, _vertexFormat);
    ValueToBuffer(vertexPointer, _vertexPointer);
    ValueToObject(effect, _effect);
    return ReferenceToValue(VertexAttributeBinding::create(*_vertexFormat, _vertexPointer, _effect));
}
DEFINE_PRIM(hx_VertexAttributeBinding_static_create_Frmt_Dat_Eff, 3);

// DECL: void unbind();
void hx_VertexAttributeBinding_unbind(value thisObj)
{
    VertexAttributeBinding *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->unbind();
}
DEFINE_PRIM(hx_VertexAttributeBinding_unbind, 1);

// END
//
