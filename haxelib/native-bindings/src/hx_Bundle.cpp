#include "HaxeAPI.h"

// DECL: bool contains(const char* id) const;
value hx_Bundle_contains(value thisObj, value id)
{
    Bundle *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->contains(_id));
}
DEFINE_PRIM(hx_Bundle_contains, 2);

// DECL: static Bundle* create(const char* path);
value hx_Bundle_static_create(value path)
{
    const char *_path = ValueToString(path);
    return ReferenceToValue(Bundle::create(_path));
}
DEFINE_PRIM(hx_Bundle_static_create, 1);

// DECL: unsigned int getObjectCount() const;
value hx_Bundle_getObjectCount(value thisObj)
{
    Bundle *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getObjectCount());
}
DEFINE_PRIM(hx_Bundle_getObjectCount, 1);

// DECL: const char* getObjectId(unsigned int index) const;
value hx_Bundle_getObjectId(value thisObj, value index)
{
    Bundle *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getObjectId(_index));
}
DEFINE_PRIM(hx_Bundle_getObjectId, 2);

// DECL: Font* loadFont(const char* id);
value hx_Bundle_loadFont(value thisObj, value id)
{
    Bundle *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->loadFont(_id));
}
DEFINE_PRIM(hx_Bundle_loadFont, 2);

// DECL: Mesh* loadMesh(const char* id);
value hx_Bundle_loadMesh(value thisObj, value id)
{
    Bundle *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->loadMesh(_id));
}
DEFINE_PRIM(hx_Bundle_loadMesh, 2);

// DECL: Node* loadNode(const char* id);
value hx_Bundle_loadNode(value thisObj, value id)
{
    Bundle *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->loadNode(_id));
}
DEFINE_PRIM(hx_Bundle_loadNode, 2);

// DECL: Scene* loadScene(const char* id = NULL);
value hx_Bundle_loadScene(value thisObj, value id)
{
    Bundle *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->loadScene(_id));
}
DEFINE_PRIM(hx_Bundle_loadScene, 2);

// END
//
