#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class MethodWrapper
{
private:

    AutoGCRoot clbkVisitMethod;

public:

    MethodWrapper()
        : clbkVisitMethod(alloc_null())
    {
    }

    void visit(Scene *scene, const value &visitMethod)
    {
        clbkVisitMethod.set(visitMethod);
        scene->visit(this, &MethodWrapper::visitWrapper);
    }

    void visit(Scene *scene, const value &visitMethod, long cookie)
    {
        clbkVisitMethod.set(visitMethod);
        scene->visit(this, &MethodWrapper::visitWrapper, cookie);
    }

    bool visitWrapper(Node *node)
    {
        bool result =
                val_get_bool(val_call1(
                        clbkVisitMethod.get(),
                        ReferenceToValue(node, true)
                    ));
        return result;
    }

    bool visitWrapper(Node *node, long cookie)
    {
        bool result =
                val_get_bool(val_call2(
                        clbkVisitMethod.get(),
                        ReferenceToValue(node, true),
                        alloc_int(cookie)
                    ));
        return result;
    }
};

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: Node* addNode(const char* id = NULL);
value hx_Scene_addNode_Str(value thisObj, value id)
{
    Scene *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->addNode(_id), true);
}
DEFINE_PRIM(hx_Scene_addNode_Str, 2);

// DECL: void addNode(Node* node);
void hx_Scene_addNode_Node(value thisObj, value node)
{
    Scene *_thisObj;
    Node *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->addNode(_node);
}
DEFINE_PRIM(hx_Scene_addNode_Node, 2);

// DECL: void bindAudioListenerToCamera(bool bind);
void hx_Scene_bindAudioListenerToCamera(value thisObj, value bind)
{
    Scene *_thisObj;
    bool _bind = val_get_bool(bind);
    ValueToObject(thisObj, _thisObj);
    _thisObj->bindAudioListenerToCamera(_bind);
}
DEFINE_PRIM(hx_Scene_bindAudioListenerToCamera, 2);

// DECL: static Scene* create();
value hx_Scene_static_create()
{
    return ReferenceToValue(Scene::create());
}
DEFINE_PRIM(hx_Scene_static_create, 0);

// DECL: void drawDebug(unsigned int debugFlags);
void hx_Scene_drawDebug(value thisObj, value debugFlags)
{
    Scene *_thisObj;
    unsigned int _debugFlags = ValueToUint(debugFlags);
    ValueToObject(thisObj, _thisObj);
    _thisObj->drawDebug(_debugFlags);
}
DEFINE_PRIM(hx_Scene_drawDebug, 2);

// DECL: Node* findNode(const char* id, bool recursive = true, bool exactMatch = true) const;
value hx_Scene_findNode(value thisObj, value id, value recursive, value exactMatch)
{
    Scene *_thisObj;
    const char *_id = ValueToString(id);
    bool _recursive = val_get_bool(recursive);
    bool _exactMatch = val_get_bool(exactMatch);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->findNode(_id, _recursive, _exactMatch), true);
}
DEFINE_PRIM(hx_Scene_findNode, 4);

// DECL: unsigned int findNodes(const char* id, std::vector<Node*>& nodes, bool recursive = true, bool exactMatch = true) const;
value hx_Scene_findNodes(value thisObj, value id, value nodes, value recursive, value exactMatch)
{
    Scene *_thisObj;
    const char *_id = ValueToString(id);
    std::vector<Node*> _nodes;
    bool _recursive = val_get_bool(recursive);
    bool _exactMatch = val_get_bool(exactMatch);
    ValueToObject(thisObj, _thisObj);

    _thisObj->findNodes(_id, _nodes, _recursive, _exactMatch);

    const value& result = alloc_array(_nodes.size());
    for (int index = 0; index < _nodes.size(); index++)
        val_array_set_i(result, index, ReferenceToValue(_nodes[index], true));

    SetOutParameterValue(nodes, result);

    return alloc_int(_nodes.size());
}
DEFINE_PRIM(hx_Scene_findNodes, 5);

// DECL: Camera* getActiveCamera() const;
value hx_Scene_getActiveCamera(value thisObj)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getActiveCamera(), true);
}
DEFINE_PRIM(hx_Scene_getActiveCamera, 1);

// DECL: const Vector3& getAmbientColor() const;
value hx_Scene_getAmbientColor(value thisObj)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getAmbientColor(), false);
}
DEFINE_PRIM(hx_Scene_getAmbientColor, 1);

// DECL: Node* getFirstNode() const;
value hx_Scene_getFirstNode(value thisObj)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getFirstNode(), true);
}
DEFINE_PRIM(hx_Scene_getFirstNode, 1);

// DECL: const char* getId() const;
value hx_Scene_getId(value thisObj)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Scene_getId, 1);

// DECL: unsigned int getNodeCount() const;
value hx_Scene_getNodeCount(value thisObj)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getNodeCount());
}
DEFINE_PRIM(hx_Scene_getNodeCount, 1);

// DECL: static Scene* load(const char* filePath);
value hx_Scene_static_load(value filePath)
{
    const char *_filePath = ValueToString(filePath);
    return ReferenceToValue(Scene::load(_filePath));
}
DEFINE_PRIM(hx_Scene_static_load, 1);

// DECL: void removeAllNodes();
void hx_Scene_removeAllNodes(value thisObj)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->removeAllNodes();
}
DEFINE_PRIM(hx_Scene_removeAllNodes, 1);

// DECL: void removeNode(Node* node);
void hx_Scene_removeNode(value thisObj, value node)
{
    Scene *_thisObj;
    Node *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->removeNode(_node);
}
DEFINE_PRIM(hx_Scene_removeNode, 2);

// DECL: void setActiveCamera(Camera* camera);
void hx_Scene_setActiveCamera(value thisObj, value camera)
{
    Scene *_thisObj;
    Camera *_camera;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(camera, _camera);
    _thisObj->setActiveCamera(_camera);
}
DEFINE_PRIM(hx_Scene_setActiveCamera, 2);

// DECL: void setAmbientColor(float red, float green, float blue);
void hx_Scene_setAmbientColor(value thisObj, value red, value green, value blue)
{
    Scene *_thisObj;
    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAmbientColor(_red, _green, _blue);
}
DEFINE_PRIM(hx_Scene_setAmbientColor, 4);

// DECL: void setId(const char* id);
void hx_Scene_setId(value thisObj, value id)
{
    Scene *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setId(_id);
}
DEFINE_PRIM(hx_Scene_setId, 2);

// DECL: inline void visit(const char* visitMethod);
void hx_Scene_visit_Str(value thisObj, value visitMethod)
{
    Scene *_thisObj;
    const char *_visitMethod = ValueToString(visitMethod);
    ValueToObject(thisObj, _thisObj);
    _thisObj->visit(_visitMethod);
}
DEFINE_PRIM(hx_Scene_visit_Str, 2);

// DECL: void visit(T* instance, bool (T::*visitMethod)(Node*));
void hx_Scene_visit_Func(value thisObj, value visitMethod)
{
    Scene *_thisObj;
    ValueToObject(thisObj, _thisObj);

    MethodWrapper wrapper;
    wrapper.visit(_thisObj, visitMethod);
}
DEFINE_PRIM(hx_Scene_visit_Func, 2);

// DECL: void visit(T* instance, bool (T::*visitMethod)(Node*,C), C cookie);
void hx_Scene_visit_Func_Int(value thisObj, value visitMethod, value cookie)
{
    Scene *_thisObj;
    long _cookie = ValueToLong(cookie);
    ValueToObject(thisObj, _thisObj);

    MethodWrapper wrapper;
    wrapper.visit(_thisObj, visitMethod, _cookie);
}
DEFINE_PRIM(hx_Scene_visit_Func_Int, 3);

// END
//
