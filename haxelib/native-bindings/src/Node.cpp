#include "HaxeAPI.h"

// DECL: void addAdvertisedDescendant(Node* node);
void hx_Node_addAdvertisedDescendant(value thisObj, value node)
{
    Node *_thisObj, *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->addAdvertisedDescendant(_node);
}
DEFINE_PRIM(hx_Node_addAdvertisedDescendant, 2);

// DECL: virtual void addChild(Node* child);
void hx_Node_addChild(value thisObj, value child)
{
    Node *_thisObj, *_child;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(child, _child);
    _thisObj->addChild(_child);
}
DEFINE_PRIM(hx_Node_addChild, 2);

// DECL: Node* clone() const;
value hx_Node_clone(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->clone());
}
DEFINE_PRIM(hx_Node_clone, 1);

// DECL: static Node* create(const char* id = NULL);
value hx_Node_static_create(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(Node::create(_id));
}
DEFINE_PRIM(hx_Node_static_create, 1);

// DECL: Node* findNode(const char* id, bool recursive = true, bool exactMatch = true) const;
value hx_Node_findNode(value thisObj, value id, value recursive, value exactMatch)
{
    Node *_thisObj;
    const char *_id = ValueToString(id);
    bool _recursive = val_get_bool(recursive);
    bool _exactMatch = val_get_bool(exactMatch);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->findNode(_id, _recursive, _exactMatch), true);
}
DEFINE_PRIM(hx_Node_findNode, 4);

// DECL: unsigned int findNodes(const char* id, std::vector<Node*>& nodes, bool recursive = true, bool exactMatch = true) const;
value hx_Node_findNodes(value thisObj, value id, value nodes, value recursive, value exactMatch)
{
    Node *_thisObj;
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
DEFINE_PRIM(hx_Node_findNodes, 5);

// DECL: Vector3 getActiveCameraTranslationView() const;
value hx_Node_getActiveCameraTranslationView(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getActiveCameraTranslationView());
}
DEFINE_PRIM(hx_Node_getActiveCameraTranslationView, 1);

// DECL: Vector3 getActiveCameraTranslationWorld() const;
value hx_Node_getActiveCameraTranslationWorld(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getActiveCameraTranslationWorld());
}
DEFINE_PRIM(hx_Node_getActiveCameraTranslationWorld, 1);

// DECL: Node* getAdvertisedDescendant(unsigned int i) const;
value hx_Node_getAdvertisedDescendant(value thisObj, value i)
{
    Node *_thisObj;
    unsigned int _i = ValueToUint(i);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAdvertisedDescendant(_i), true);
}
DEFINE_PRIM(hx_Node_getAdvertisedDescendant, 2);

// DECL: AIAgent* getAgent() const;
value hx_Node_getAgent(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAgent(), true);
}
DEFINE_PRIM(hx_Node_getAgent, 1);

// DECL: Animation* getAnimation(const char* id = NULL) const;
value hx_Node_getAnimation(value thisObj, value id)
{
    Node *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAnimation(_id), true);
}
DEFINE_PRIM(hx_Node_getAnimation, 2);

// DECL: AudioSource* getAudioSource() const;
value hx_Node_getAudioSource(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAudioSource(), true);
}
DEFINE_PRIM(hx_Node_getAudioSource, 1);

// DECL: const BoundingSphere& getBoundingSphere() const;
value hx_Node_getBoundingSphere(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBoundingSphere(), false);
}
DEFINE_PRIM(hx_Node_getBoundingSphere, 1);

// DECL: Camera* getCamera() const;
value hx_Node_getCamera(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getCamera(), true);
}
DEFINE_PRIM(hx_Node_getCamera, 1);

// DECL: unsigned int getChildCount() const;
value hx_Node_getChildCount(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getChildCount());
}
DEFINE_PRIM(hx_Node_getChildCount, 1);

// DECL: PhysicsCollisionObject* getCollisionObject() const;
value hx_Node_getCollisionObject(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getCollisionObject(), false);
}
DEFINE_PRIM(hx_Node_getCollisionObject, 1);

// DECL: Node* getFirstChild() const;
value hx_Node_getFirstChild(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getFirstChild(), true);
}
DEFINE_PRIM(hx_Node_getFirstChild, 1);

// DECL: Form* getForm() const;
value hx_Node_getForm(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getForm(), true);
}
DEFINE_PRIM(hx_Node_getForm, 1);

// DECL: Vector3 getForwardVectorView() const;
value hx_Node_getForwardVectorView(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getForwardVectorView());
}
DEFINE_PRIM(hx_Node_getForwardVectorView, 1);

// DECL: Vector3 getForwardVectorWorld() const;
value hx_Node_getForwardVectorWorld(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getForwardVectorWorld());
}
DEFINE_PRIM(hx_Node_getForwardVectorWorld, 1);

// DECL: const char* getId() const;
value hx_Node_getId(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Node_getId, 1);

// DECL: const Matrix& getInverseTransposeWorldMatrix() const;
value hx_Node_getInverseTransposeWorldMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseTransposeWorldMatrix(), false);
}
DEFINE_PRIM(hx_Node_getInverseTransposeWorldMatrix, 1);

// DECL: const Matrix& getInverseTransposeWorldViewMatrix() const;
value hx_Node_getInverseTransposeWorldViewMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseTransposeWorldViewMatrix(), false);
}
DEFINE_PRIM(hx_Node_getInverseTransposeWorldViewMatrix, 1);

// DECL: const Matrix& getInverseViewMatrix() const;
value hx_Node_getInverseViewMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseViewMatrix(), false);
}
DEFINE_PRIM(hx_Node_getInverseViewMatrix, 1);

// DECL: const Matrix& getInverseViewProjectionMatrix() const;
value hx_Node_getInverseViewProjectionMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseViewProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Node_getInverseViewProjectionMatrix, 1);

// DECL: Light* getLight() const;
value hx_Node_getLight(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getLight(), true);
}
DEFINE_PRIM(hx_Node_getLight, 1);

// DECL: Model* getModel() const;
value hx_Node_getModel(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getModel(), true);
}
DEFINE_PRIM(hx_Node_getModel, 1);

// DECL: Node* getNextSibling() const;
value hx_Node_getNextSibling(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNextSibling(), true);
}
DEFINE_PRIM(hx_Node_getNextSibling, 1);

// DECL: unsigned int getNumAdvertisedDescendants() const;
value hx_Node_getNumAdvertisedDescendants(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getNumAdvertisedDescendants());
}
DEFINE_PRIM(hx_Node_getNumAdvertisedDescendants, 1);

// DECL: Node* getParent() const;
value hx_Node_getParent(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getParent(), true);
}
DEFINE_PRIM(hx_Node_getParent, 1);

// DECL: ParticleEmitter* getParticleEmitter() const;
value hx_Node_getParticleEmitter(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getParticleEmitter(), true);
}
DEFINE_PRIM(hx_Node_getParticleEmitter, 1);

// DECL: Node* getPreviousSibling() const;
value hx_Node_getPreviousSibling(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getPreviousSibling(), true);
}
DEFINE_PRIM(hx_Node_getPreviousSibling, 1);

// DECL: const Matrix& getProjectionMatrix() const;
value hx_Node_getProjectionMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Node_getProjectionMatrix, 1);

// DECL: Vector3 getRightVectorWorld() const;
value hx_Node_getRightVectorWorld(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getRightVectorWorld());
}
DEFINE_PRIM(hx_Node_getRightVectorWorld, 1);

// DECL: Node* getRootNode() const;
value hx_Node_getRootNode(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getRootNode(), true);
}
DEFINE_PRIM(hx_Node_getRootNode, 1);

// DECL: Scene* getScene() const;
value hx_Node_getScene(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getScene(), true);
}
DEFINE_PRIM(hx_Node_getScene, 1);

// DECL: const char* getTag(const char* name) const;
value hx_Node_getTag(value thisObj, value name)
{
    Node *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getTag(_name));
}
DEFINE_PRIM(hx_Node_getTag, 2);

// DECL: Terrain* getTerrain() const;
value hx_Node_getTerrain(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTerrain(), true);
}
DEFINE_PRIM(hx_Node_getTerrain, 1);

// DECL: Vector3 getTranslationView() const;
value hx_Node_getTranslationView(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getTranslationView());
}
DEFINE_PRIM(hx_Node_getTranslationView, 1);

// DECL: Vector3 getTranslationWorld() const;
value hx_Node_getTranslationWorld(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getTranslationWorld());
}
DEFINE_PRIM(hx_Node_getTranslationWorld, 1);

// DECL: virtual Node::Type getType() const;
value hx_Node_getType(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Node_getType, 1);

// DECL: Vector3 getUpVectorWorld() const;
value hx_Node_getUpVectorWorld(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return CopyOutsideScope(_thisObj->getUpVectorWorld());
}
DEFINE_PRIM(hx_Node_getUpVectorWorld, 1);

// DECL: void* getUserPointer() const;
value hx_Node_getUserPointer(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return HandleToValueOrNull(_thisObj->getUserPointer(), NULL);
}
DEFINE_PRIM(hx_Node_getUserPointer, 1);

// DECL: const Matrix& getViewMatrix() const;
value hx_Node_getViewMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getViewMatrix(), false);
}
DEFINE_PRIM(hx_Node_getViewMatrix, 1);

// DECL: const Matrix& getViewProjectionMatrix() const;
value hx_Node_getViewProjectionMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getViewProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Node_getViewProjectionMatrix, 1);

// DECL: virtual const Matrix& getWorldMatrix() const;
value hx_Node_getWorldMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getWorldMatrix(), false);
}
DEFINE_PRIM(hx_Node_getWorldMatrix, 1);

// DECL: const Matrix& getWorldViewMatrix() const;
value hx_Node_getWorldViewMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getWorldViewMatrix(), false);
}
DEFINE_PRIM(hx_Node_getWorldViewMatrix, 1);

// DECL: const Matrix& getWorldViewProjectionMatrix() const;
value hx_Node_getWorldViewProjectionMatrix(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getWorldViewProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Node_getWorldViewProjectionMatrix, 1);

// DECL: bool hasTag(const char* name) const;
value hx_Node_hasTag(value thisObj, value name)
{
    Node *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->hasTag(_name));
}
DEFINE_PRIM(hx_Node_hasTag, 2);

// DECL: virtual void removeAllChildren();
void hx_Node_removeAllChildren(value thisObj)
{
    Node *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->removeAllChildren();
}
DEFINE_PRIM(hx_Node_removeAllChildren, 1);

// DECL: virtual void removeChild(Node* child);
void hx_Node_removeChild(value thisObj, value child)
{
    Node *_thisObj, *_child;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(child, _child);
    _thisObj->removeChild(_child);
}
DEFINE_PRIM(hx_Node_removeChild, 2);

// DECL: void setAgent(AIAgent* agent);
void hx_Node_setAgent(value thisObj, value agent)
{
    Node *_thisObj;
    AIAgent *_agent;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(agent, _agent);
    _thisObj->setAgent(_agent);
}
DEFINE_PRIM(hx_Node_setAgent, 2);

// DECL: void setAudioSource(AudioSource* audio);
void hx_Node_setAudioSource(value thisObj, value audio)
{
    Node *_thisObj;
    AudioSource *_audio;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(audio, _audio);
    _thisObj->setAudioSource(_audio);
}
DEFINE_PRIM(hx_Node_setAudioSource, 2);

// DECL: void setCamera(Camera* camera);
void hx_Node_setCamera(value thisObj, value camera)
{
    Node *_thisObj;
    Camera *_camera;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(camera, _camera);
    _thisObj->setCamera(_camera);
}
DEFINE_PRIM(hx_Node_setCamera, 2);

// DECL: PhysicsCollisionObject* setCollisionObject(PhysicsCollisionObject::Type type, const PhysicsCollisionShape::Definition& shape = PhysicsCollisionShape::box(),
value hx_Node_setCollisionObject_Int_Def_Param(value thisObj, value type, value shape, value rigidBodyParameters)
{
    Node *_thisObj;
    PhysicsCollisionObject::Type _type;
    PhysicsCollisionShape::Definition *_shape;
    PhysicsRigidBody::Parameters *_rigidBodyParameters;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(type, _type);
    ValueToObject(shape, _shape);
    ValueToObject(rigidBodyParameters, _rigidBodyParameters);
    return ObjectToValue(_thisObj->setCollisionObject(_type, *_shape, _rigidBodyParameters), false);
}
DEFINE_PRIM(hx_Node_setCollisionObject_Int_Def_Param, 4);

// DECL: PhysicsCollisionObject* setCollisionObject(Properties* properties);
value hx_Node_setCollisionObject_Prop(value thisObj, value properties)
{
    Node *_thisObj;
    Properties *_properties;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(properties, _properties);
    return ObjectToValue(_thisObj->setCollisionObject(_properties), false);
}
DEFINE_PRIM(hx_Node_setCollisionObject_Prop, 2);

// DECL: PhysicsCollisionObject* setCollisionObject(const char* url);
value hx_Node_setCollisionObject_Str(value thisObj, value url)
{
    Node *_thisObj;
    const char *_url = ValueToString(url);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->setCollisionObject(_url), false);
}
DEFINE_PRIM(hx_Node_setCollisionObject_Str, 2);

// DECL: void setForm(Form* form);
void hx_Node_setForm(value thisObj, value form)
{
    Node *_thisObj;
    Form *_form;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(form, _form);
    _thisObj->setForm(_form);
}
DEFINE_PRIM(hx_Node_setForm, 2);

// DECL: void setId(const char* id);
void hx_Node_setId(value thisObj, value id)
{
    Node *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setId(_id);
}
DEFINE_PRIM(hx_Node_setId, 2);

// DECL: void setLight(Light* light);
void hx_Node_setLight(value thisObj, value light)
{
    Node *_thisObj;
    Light *_light;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(light, _light);
    _thisObj->setLight(_light);
}
DEFINE_PRIM(hx_Node_setLight, 2);

// DECL: void setModel(Model* model);
void hx_Node_setModel(value thisObj, value model)
{
    Node *_thisObj;
    Model *_model;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(model, _model);
    _thisObj->setModel(_model);
}
DEFINE_PRIM(hx_Node_setModel, 2);

// DECL: void setParticleEmitter(ParticleEmitter* emitter);
void hx_Node_setParticleEmitter(value thisObj, value emitter)
{
    Node *_thisObj;
    ParticleEmitter *_emitter;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(emitter, _emitter);
    _thisObj->setParticleEmitter(_emitter);
}
DEFINE_PRIM(hx_Node_setParticleEmitter, 2);

// DECL: void setTag(const char* name, const char* value = "");
void hx_Node_setTag(value thisObj, value name, value value)
{
    Node *_thisObj;
    const char *_name = ValueToString(name);
    const char *_value = ValueToString(value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTag(_name, _value);
}
DEFINE_PRIM(hx_Node_setTag, 3);

// DECL: void setTerrain(Terrain* terrain);
void hx_Node_setTerrain(value thisObj, value terrain)
{
    Node *_thisObj;
    Terrain *_terrain;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(terrain, _terrain);
    _thisObj->setTerrain(_terrain);
}
DEFINE_PRIM(hx_Node_setTerrain, 2);

// DECL: void setUserPointer(void* pointer, void (*cleanupCallback)(void*) = NULL);
void hx_Node_setUserPointer(value thisObj, value pointer, value cleanupCallback)
{
    Node *_thisObj;
    void *_pointer = NULL;
    ValueToObject(thisObj, _thisObj);
    ValueToHandle(pointer, _pointer);
    _thisObj->setUserPointer(_pointer);
}
DEFINE_PRIM(hx_Node_setUserPointer, 3);

// END
//
