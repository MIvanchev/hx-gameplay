#include "HaxeAPI.h"

// DECL: static Model* create(Mesh* mesh);
value hx_Model_static_create(value mesh)
{
    Mesh *_mesh;
    ValueToObject(mesh, _mesh);
    return ReferenceToValue(Model::create(_mesh));
}
DEFINE_PRIM(hx_Model_static_create, 1);

// DECL: void draw(bool wireframe = false);
void hx_Model_draw(value thisObj, value wireframe)
{
    Model *_thisObj;
    bool _wireframe = val_get_bool(wireframe);
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw(_wireframe);
}
DEFINE_PRIM(hx_Model_draw, 2);

// DECL: Material* getMaterial(int partIndex = -1);
value hx_Model_getMaterial(value thisObj, value partIndex)
{
    Model *_thisObj;
    int _partIndex = val_get_int(partIndex);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getMaterial(_partIndex), true);
}
DEFINE_PRIM(hx_Model_getMaterial, 2);

// DECL: Mesh* getMesh() const;
value hx_Model_getMesh(value thisObj)
{
    Model *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getMesh(), true);
}
DEFINE_PRIM(hx_Model_getMesh, 1);

// DECL: unsigned int getMeshPartCount() const;
value hx_Model_getMeshPartCount(value thisObj)
{
    Model *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getMeshPartCount());
}
DEFINE_PRIM(hx_Model_getMeshPartCount, 1);

// DECL: Node* getNode() const;
value hx_Model_getNode(value thisObj)
{
    Model *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_Model_getNode, 1);

// DECL: MeshSkin* getSkin() const;
value hx_Model_getSkin(value thisObj)
{
    Model *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getSkin(), false);
}
DEFINE_PRIM(hx_Model_getSkin, 1);

// DECL: bool hasMaterial(unsigned int partIndex) const;
value hx_Model_hasMaterial(value thisObj, value partIndex)
{
    Model *_thisObj;
    unsigned int _partIndex = ValueToUint(partIndex);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->hasMaterial(_partIndex));
}
DEFINE_PRIM(hx_Model_hasMaterial, 2);

// DECL: Material* setMaterial(const char* materialPath, int partIndex = -1);
value hx_Model_setMaterial_Str_Int(value thisObj, value materialPath, value partIndex)
{
    Model *_thisObj;
    const char *_materialPath = ValueToString(materialPath);
    int _partIndex = val_get_int(partIndex);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->setMaterial(_materialPath, _partIndex), true);
}
DEFINE_PRIM(hx_Model_setMaterial_Str_Int, 3);

// DECL: Material* setMaterial(const char* vshPath, const char* fshPath, const char* defines = NULL, int partIndex = -1);
value hx_Model_setMaterial_StrX3_Int(value thisObj, value vshPath, value fshPath, value defines, value partIndex)
{
    Model *_thisObj;
    const char *_vshPath = ValueToString(vshPath);
    const char *_fshPath = ValueToString(fshPath);
    const char *_defines = ValueToString(defines);
    int _partIndex = val_get_int(partIndex);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->setMaterial(_vshPath, _fshPath, _defines, _partIndex), true);
}
DEFINE_PRIM(hx_Model_setMaterial_StrX3_Int, 5);

// DECL: void setMaterial(Material* material, int partIndex = -1);
void hx_Model_setMaterial_Mtrl_Int(value thisObj, value material, value partIndex)
{
    Model *_thisObj;
    Material *_material;
    int _partIndex = val_get_int(partIndex);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(material, _material);
    _thisObj->setMaterial(_material, _partIndex);
}
DEFINE_PRIM(hx_Model_setMaterial_Mtrl_Int, 3);

// DECL: void setNode(Node* node);
void hx_Model_setNode(value thisObj, value node)
{
    Model *_thisObj;
    Node *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->setNode(_node);
}
DEFINE_PRIM(hx_Model_setNode, 2);

// END
//
