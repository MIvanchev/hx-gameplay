package org.gameplay3d;

import org.gameplay3d.immutable.IBoundingSphere;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.intern.NativeOutParameter;
import org.gameplay3d.shared.SharedVector3;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Node : public Transform, public Ref
class Node extends Transform, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _activeCameraTranslationView:Vector3;
    var _activeCameraTranslationWorld:Vector3;
    var _forwardVectorView:Vector3;
    var _forwardVectorWorld:Vector3;
    var _rightVectorWorld:Vector3;
    var _translationView:Vector3;
    var _translationWorld:Vector3;
    var _upVectorWorld:Vector3;
    var _inverseTransposeWorldMatrix:Matrix;
    var _inverseTransposeWorldViewMatrix:Matrix;
    var _inverseViewMatrix:Matrix;
    var _inverseViewProjectionMatrix:Matrix;
    var _projectionMatrix:Matrix;
    var _viewMatrix:Matrix;
    var _viewProjectionMatrix:Matrix;
    var _worldMatrix:Matrix;
    var _worldViewMatrix:Matrix;
    var _worldViewProjectionMatrix:Matrix;
    var _boundingSphere:BoundingSphere;

    // DECL: void addAdvertisedDescendant(Node* node);
    public function addAdvertisedDescendant(node:Node):Void
    {
        hx_Node_addAdvertisedDescendant(nativeObject, node.native());
    }

    // DECL: virtual void addChild(Node* child);
    public function addChild(child:Node):Void
    {
        hx_Node_addChild(nativeObject, child.native());
    }

    // DECL: Node* clone() const;
    public function clone():Node
    {
        return Node.wrap(hx_Node_clone(nativeObject));
    }

    // DECL: static Node* create(const char* id = NULL);
    public static function create(id:String = null):Node
    {
        return Node.wrap(hx_Node_static_create(id));
    }

    // DECL: Node* findNode(const char* id, bool recursive = true, bool exactMatch = true) const;
    public function findNode(id:String, recursive:Bool = true, exactMatch:Bool = true):Node
    {
        return Node.wrap(hx_Node_findNode(nativeObject, id, recursive, exactMatch));
    }

    // DECL: unsigned int findNodes(const char* id, std::vector<Node*>& nodes, bool recursive = true, bool exactMatch = true) const;
    public function findNodes(id:String, nodes:OutParameter<Array<Node>>, recursive:Bool = true, exactMatch:Bool = true):Int
    {
        var _nodes = new NativeOutParameter();
        var result = hx_Node_findNodes(nativeObject, id, _nodes.native(), recursive, exactMatch);
        nodes.value = ConversionTools.extractNodeArray(_nodes.value);
        return result;
    }

    // DECL: Vector3 getActiveCameraTranslationView() const;
    public function getActiveCameraTranslationView():SharedVector3
    {
        return Macros.impersonateResult(_activeCameraTranslationView, hx_Node_getActiveCameraTranslationView(nativeObject));
    }

    // DECL: Vector3 getActiveCameraTranslationWorld() const;
    public function getActiveCameraTranslationWorld():SharedVector3
    {
        return Macros.impersonateResult(_activeCameraTranslationWorld, hx_Node_getActiveCameraTranslationWorld(nativeObject));
    }

    // DECL: Node* getAdvertisedDescendant(unsigned int i) const;
    public function getAdvertisedDescendant(i:Int):Node
    {
        return Node.wrap(hx_Node_getAdvertisedDescendant(nativeObject, i));
    }

    // DECL: AIAgent* getAgent() const;
    public function getAgent():AIAgent
    {
        return AIAgent.wrap(hx_Node_getAgent(nativeObject));
    }

    // DECL: Animation* getAnimation(const char* id = NULL) const;
    override public function getAnimation(id:String = null):Animation
    {
        return Animation.wrap(hx_Node_getAnimation(nativeObject, id));
    }

    // DECL: AudioSource* getAudioSource() const;
    public function getAudioSource():AudioSource
    {
        return AudioSource.wrap(hx_Node_getAudioSource(nativeObject));
    }

    // DECL: const BoundingSphere& getBoundingSphere() const;
    public function getBoundingSphere():IBoundingSphere
    {
        return Macros.impersonateResult(_boundingSphere, hx_Node_getBoundingSphere(nativeObject));
    }

    // DECL: Camera* getCamera() const;
    public function getCamera():Camera
    {
        return Camera.wrap(hx_Node_getCamera(nativeObject));
    }

    // DECL: unsigned int getChildCount() const;
    public function getChildCount():Int
    {
        return hx_Node_getChildCount(nativeObject);
    }

    // DECL: PhysicsCollisionObject* getCollisionObject() const;
    public function getCollisionObject():PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_Node_getCollisionObject(nativeObject));
    }

    // DECL: Node* getFirstChild() const;
    public function getFirstChild():Node
    {
        return Node.wrap(hx_Node_getFirstChild(nativeObject));
    }

    // DECL: Form* getForm() const;
    public function getForm():Form
    {
        return Form.wrap(hx_Node_getForm(nativeObject));
    }

    // DECL: Vector3 getForwardVectorView() const;
    public function getForwardVectorView():SharedVector3
    {
        return Macros.impersonateResult(_forwardVectorView, hx_Node_getForwardVectorView(nativeObject));
    }

    // DECL: Vector3 getForwardVectorWorld() const;
    public function getForwardVectorWorld():SharedVector3
    {
        return Macros.impersonateResult(_forwardVectorWorld, hx_Node_getForwardVectorWorld(nativeObject));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Node_getId(nativeObject);
    }

    // DECL: const Matrix& getInverseTransposeWorldMatrix() const;
    public function getInverseTransposeWorldMatrix():IMatrix
    {
        return Macros.impersonateResult(_inverseTransposeWorldMatrix, hx_Node_getInverseTransposeWorldMatrix(nativeObject));
    }

    // DECL: const Matrix& getInverseTransposeWorldViewMatrix() const;
    public function getInverseTransposeWorldViewMatrix():IMatrix
    {
        return Macros.impersonateResult(_inverseTransposeWorldViewMatrix, hx_Node_getInverseTransposeWorldViewMatrix(nativeObject));
    }

    // DECL: const Matrix& getInverseViewMatrix() const;
    public function getInverseViewMatrix():IMatrix
    {
        return Macros.impersonateResult(_inverseViewMatrix, hx_Node_getInverseViewMatrix(nativeObject));
    }

    // DECL: const Matrix& getInverseViewProjectionMatrix() const;
    public function getInverseViewProjectionMatrix():IMatrix
    {
        return Macros.impersonateResult(_inverseViewProjectionMatrix, hx_Node_getInverseViewProjectionMatrix(nativeObject));
    }

    // DECL: Light* getLight() const;
    public function getLight():Light
    {
        return Light.wrap(hx_Node_getLight(nativeObject));
    }

    // DECL: Model* getModel() const;
    public function getModel():Model
    {
        return Model.wrap(hx_Node_getModel(nativeObject));
    }

    // DECL: Node* getNextSibling() const;
    public function getNextSibling():Node
    {
        return Node.wrap(hx_Node_getNextSibling(nativeObject));
    }

    // DECL: unsigned int getNumAdvertisedDescendants() const;
    public function getNumAdvertisedDescendants():Int
    {
        return hx_Node_getNumAdvertisedDescendants(nativeObject);
    }

    // DECL: Node* getParent() const;
    public function getParent():Node
    {
        return Node.wrap(hx_Node_getParent(nativeObject));
    }

    // DECL: ParticleEmitter* getParticleEmitter() const;
    public function getParticleEmitter():ParticleEmitter
    {
        return ParticleEmitter.wrap(hx_Node_getParticleEmitter(nativeObject));
    }

    // DECL: Node* getPreviousSibling() const;
    public function getPreviousSibling():Node
    {
        return Node.wrap(hx_Node_getPreviousSibling(nativeObject));
    }

    // DECL: const Matrix& getProjectionMatrix() const;
    public function getProjectionMatrix():IMatrix
    {
        return Macros.impersonateResult(_projectionMatrix, hx_Node_getProjectionMatrix(nativeObject));
    }

    // DECL: Vector3 getRightVectorWorld() const;
    public function getRightVectorWorld():SharedVector3
    {
        return Macros.impersonateResult(_rightVectorWorld, hx_Node_getRightVectorWorld(nativeObject));
    }

    // DECL: Node* getRootNode() const;
    public function getRootNode():Node
    {
        return Node.wrap(hx_Node_getRootNode(nativeObject));
    }

    // DECL: Scene* getScene() const;
    public function getScene():Scene
    {
        return Scene.wrap(hx_Node_getScene(nativeObject));
    }

    // DECL: const char* getTag(const char* name) const;
    public function getTag(name:String):String
    {
        return hx_Node_getTag(nativeObject, name);
    }


    // DECL: Terrain* getTerrain() const;
    public function getTerrain():Terrain
    {
        return Terrain.wrap(hx_Node_getTerrain(nativeObject));
    }

    // DECL: Vector3 getTranslationView() const;
    public function getTranslationView():SharedVector3
    {
        return Macros.impersonateResult(_translationView, hx_Node_getTranslationView(nativeObject));
    }

    // DECL: Vector3 getTranslationWorld() const;
    public function getTranslationWorld():SharedVector3
    {
        return Macros.impersonateResult(_translationWorld, hx_Node_getTranslationWorld(nativeObject));
    }

    // DECL: virtual Node::Type getType() const;
    public function getType():Int
    {
        return hx_Node_getType(nativeObject);
    }

    // DECL: Vector3 getUpVectorWorld() const;
    public function getUpVectorWorld():SharedVector3
    {
        return Macros.impersonateResult(_upVectorWorld, hx_Node_getUpVectorWorld(nativeObject));
    }

    // DECL: void* getUserPointer() const;
    public function getUserPointer():Handle
    {
        return Handle.wrap(hx_Node_getUserPointer(nativeObject));
    }

    // DECL: const Matrix& getViewMatrix() const;
    public function getViewMatrix():IMatrix
    {
        return Macros.impersonateResult(_viewMatrix, hx_Node_getViewMatrix(nativeObject));
    }

    // DECL: const Matrix& getViewProjectionMatrix() const;
    public function getViewProjectionMatrix():IMatrix
    {
         return Macros.impersonateResult(_viewProjectionMatrix, hx_Node_getViewProjectionMatrix(nativeObject));
    }

    // DECL: virtual const Matrix& getWorldMatrix() const;
    public function getWorldMatrix():IMatrix
    {
        return Macros.impersonateResult(_worldMatrix, hx_Node_getWorldMatrix(nativeObject));
    }

    // DECL: const Matrix& getWorldViewMatrix() const;
    public function getWorldViewMatrix():IMatrix
    {
        return Macros.impersonateResult(_worldViewMatrix, hx_Node_getWorldViewMatrix(nativeObject));
    }

    // DECL: const Matrix& getWorldViewProjectionMatrix() const;
    public function getWorldViewProjectionMatrix():IMatrix
    {
        return Macros.impersonateResult(_worldViewProjectionMatrix, hx_Node_getWorldViewProjectionMatrix(nativeObject));
    }

    // DECL: bool hasTag(const char* name) const;
    public function hasTag(name:String):Bool
    {
        return hx_Node_hasTag(nativeObject, name);
    }

    // DECL: virtual void removeAllChildren();
    public function removeAllChildren():Void
    {
        hx_Node_removeAllChildren(nativeObject);
    }

    // DECL: virtual void removeChild(Node* child);
    public function removeChild(child:Node):Void
    {
        hx_Node_removeChild(nativeObject, child.native());
    }

    // DECL: void setAgent(AIAgent* agent);
    public function setAgent(agent:AIAgent):Void
    {
        hx_Node_setAgent(nativeObject, agent.native());
    }

    // DECL: void setAudioSource(AudioSource* audio);
    public function setAudioSource(audio:AudioSource):Void
    {
        hx_Node_setAudioSource(nativeObject, audio.native());
    }

    // DECL: void setCamera(Camera* camera);
    public function setCamera(camera:Camera):Void
    {
        hx_Node_setCamera(nativeObject, camera.native());
    }

    // DECL: PhysicsCollisionObject* setCollisionObject(PhysicsCollisionObject::Type type, const PhysicsCollisionShape::Definition& shape = PhysicsCollisionShape::box(),
    public function setCollisionObject_Int_Def_Param(type:Int, shape:PhysicsCollisionShape_Definition, rigidBodyParameters:PhysicsRigidBody_Parameters):PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_Node_setCollisionObject_Int_Def_Param(nativeObject, type, shape.native(), rigidBodyParameters.native()));
    }

    // DECL: PhysicsCollisionObject* setCollisionObject(Properties* properties);
    public function setCollisionObject_Prop(properties:Properties):PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_Node_setCollisionObject_Prop(nativeObject, properties.native()));
    }

    // DECL: PhysicsCollisionObject* setCollisionObject(const char* url);
    public function setCollisionObject_Str(url:String):PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_Node_setCollisionObject_Str(nativeObject, url));
    }

    // DECL: void setForm(Form* form);
    public function setForm(form:Form):Void
    {
        hx_Node_setForm(nativeObject, form.native());
    }

    // DECL: void setId(const char* id);
    public function setId(id:String):Void
    {
        hx_Node_setId(nativeObject, id);
    }

    // DECL: void setLight(Light* light);
    public function setLight(light:Light):Void
    {
        hx_Node_setLight(nativeObject, light.native());
    }

    // DECL: void setModel(Model* model);
    public function setModel(model:Model):Void
    {
        hx_Node_setModel(nativeObject, model.native());
    }

    // DECL: void setParticleEmitter(ParticleEmitter* emitter);
    public function setParticleEmitter(emitter:ParticleEmitter):Void
    {
        hx_Node_setParticleEmitter(nativeObject, emitter.native());
    }

    // DECL: void setTag(const char* name, const char* value = "");
    public function setTag(name:String, value:String = ""):Void
    {
        hx_Node_setTag(nativeObject, name, value);
    }

    // DECL: void setTerrain(Terrain* terrain);
    public function setTerrain(terrain:Terrain):Void
    {
        hx_Node_setTerrain(nativeObject, terrain.native());
    }

    // DECL: void setUserPointer(void* pointer, void (*cleanupCallback)(void*) = NULL);
    public function setUserPointer(pointer:Handle, cleanCallback:Dynamic = null):Void
    {
        hx_Node_setUserPointer(nativeObject, pointer.native(), cleanCallback);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Node_addAdvertisedDescendant:Dynamic = cpp.Lib.load("gameplay", "hx_Node_addAdvertisedDescendant", 2);
    static var hx_Node_addChild:Dynamic = cpp.Lib.load("gameplay", "hx_Node_addChild", 2);
    static var hx_Node_clone:Dynamic = cpp.Lib.load("gameplay", "hx_Node_clone", 1);
    static var hx_Node_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Node_static_create", 1);
    static var hx_Node_findNode:Dynamic = cpp.Lib.load("gameplay", "hx_Node_findNode", 4);
    static var hx_Node_findNodes:Dynamic = cpp.Lib.load("gameplay", "hx_Node_findNodes", 5);
    static var hx_Node_getActiveCameraTranslationView:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getActiveCameraTranslationView", 1);
    static var hx_Node_getActiveCameraTranslationWorld:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getActiveCameraTranslationWorld", 1);
    static var hx_Node_getAdvertisedDescendant:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getAdvertisedDescendant", 2);
    static var hx_Node_getAgent:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getAgent", 1);
    static var hx_Node_getAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getAnimation", 2);
    static var hx_Node_getAudioSource:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getAudioSource", 1);
    static var hx_Node_getBoundingSphere:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getBoundingSphere", 1);
    static var hx_Node_getCamera:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getCamera", 1);
    static var hx_Node_getChildCount:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getChildCount", 1);
    static var hx_Node_getCollisionObject:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getCollisionObject", 1);
    static var hx_Node_getFirstChild:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getFirstChild", 1);
    static var hx_Node_getForm:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getForm", 1);
    static var hx_Node_getForwardVectorView:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getForwardVectorView", 1);
    static var hx_Node_getForwardVectorWorld:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getForwardVectorWorld", 1);
    static var hx_Node_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getId", 1);
    static var hx_Node_getInverseTransposeWorldMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getInverseTransposeWorldMatrix", 1);
    static var hx_Node_getInverseTransposeWorldViewMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getInverseTransposeWorldViewMatrix", 1);
    static var hx_Node_getInverseViewMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getInverseViewMatrix", 1);
    static var hx_Node_getInverseViewProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getInverseViewProjectionMatrix", 1);
    static var hx_Node_getLight:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getLight", 1);
    static var hx_Node_getModel:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getModel", 1);
    static var hx_Node_getNextSibling:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getNextSibling", 1);
    static var hx_Node_getNumAdvertisedDescendants:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getNumAdvertisedDescendants", 1);
    static var hx_Node_getParent:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getParent", 1);
    static var hx_Node_getParticleEmitter:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getParticleEmitter", 1);
    static var hx_Node_getPreviousSibling:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getPreviousSibling", 1);
    static var hx_Node_getProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getProjectionMatrix", 1);
    static var hx_Node_getRightVectorWorld:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getRightVectorWorld", 1);
    static var hx_Node_getRootNode:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getRootNode", 1);
    static var hx_Node_getScene:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getScene", 1);
    static var hx_Node_getTag:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getTag", 2);
    static var hx_Node_getTerrain:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getTerrain", 1);
    static var hx_Node_getTranslationView:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getTranslationView", 1);
    static var hx_Node_getTranslationWorld:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getTranslationWorld", 1);
    static var hx_Node_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getType", 1);
    static var hx_Node_getUpVectorWorld:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getUpVectorWorld", 1);
    static var hx_Node_getUserPointer:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getUserPointer", 1);
    static var hx_Node_getViewMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getViewMatrix", 1);
    static var hx_Node_getViewProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getViewProjectionMatrix", 1);
    static var hx_Node_getWorldMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getWorldMatrix", 1);
    static var hx_Node_getWorldViewMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getWorldViewMatrix", 1);
    static var hx_Node_getWorldViewProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Node_getWorldViewProjectionMatrix", 1);
    static var hx_Node_hasTag:Dynamic = cpp.Lib.load("gameplay", "hx_Node_hasTag", 2);
    static var hx_Node_removeAllChildren:Dynamic = cpp.Lib.load("gameplay", "hx_Node_removeAllChildren", 1);
    static var hx_Node_removeChild:Dynamic = cpp.Lib.load("gameplay", "hx_Node_removeChild", 2);
    static var hx_Node_setAgent:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setAgent", 2);
    static var hx_Node_setAudioSource:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setAudioSource", 2);
    static var hx_Node_setCamera:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setCamera", 2);
    static var hx_Node_setCollisionObject_Int_Def_Param:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setCollisionObject_Int_Def_Param", 4);
    static var hx_Node_setCollisionObject_Prop:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setCollisionObject_Prop", 2);
    static var hx_Node_setCollisionObject_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setCollisionObject_Str", 2);
    static var hx_Node_setForm:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setForm", 2);
    static var hx_Node_setId:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setId", 2);
    static var hx_Node_setLight:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setLight", 2);
    static var hx_Node_setModel:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setModel", 2);
    static var hx_Node_setParticleEmitter:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setParticleEmitter", 2);
    static var hx_Node_setTag:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setTag", 3);
    static var hx_Node_setTerrain:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setTerrain", 2);
    static var hx_Node_setUserPointer:Dynamic = cpp.Lib.load("gameplay", "hx_Node_setUserPointer", 3);
}

// END
