package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Scene : public Ref
class Scene extends GameplayObject implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _ambientColor:Vector3;

    // DECL: Node* addNode(const char* id = NULL);
    public function addNode_Str(id:String = null):Node
    {
        return Node.wrap(hx_Scene_addNode_Str(nativeObject, id));
    }

    // DECL: void addNode(Node* node);
    public function addNode_Node(node:Node):Void
    {
        hx_Scene_addNode_Node(nativeObject, node.native());
    }

    // DECL: void bindAudioListenerToCamera(bool bind);
    public function bindAudioListenerToCamera(bind:Bool):Void
    {
        hx_Scene_bindAudioListenerToCamera(nativeObject, bind);
    }

    // DECL: static Scene* create();
    public static function create():Scene
    {
        return Scene.wrap(hx_Scene_static_create());
    }

    // DECL: void drawDebug(unsigned int debugFlags);
    public function drawDebug(debugFlags:Int):Void
    {
        hx_Scene_drawDebug(nativeObject, debugFlags);
    }

    // DECL: Node* findNode(const char* id, bool recursive = true, bool exactMatch = true) const;
    public function findNode(id:String, recursive:Bool = true, exactMatch:Bool = true):Node
    {
        return Node.wrap(hx_Scene_findNode(nativeObject, id, recursive, exactMatch));
    }

    // DECL: unsigned int findNodes(const char* id, std::vector<Node*>& nodes, bool recursive = true, bool exactMatch = true) const;
    public function findNodes(id:String, nodes:OutParameter<Array<Node>>, recursive:Bool = true, exactMatch:Bool = true):Int
    {
        var _nodes = { value: null };
        var result = hx_Scene_findNodes(nativeObject, id, _nodes, recursive, exactMatch);
        nodes.value = ConversionTools.extractNodeArray(_nodes.value);
        return result;
    }

    // DECL: Camera* getActiveCamera() const;
    public function getActiveCamera():Camera
    {
        return Camera.wrap(hx_Scene_getActiveCamera(nativeObject));
    }

    // DECL: const Vector3& getAmbientColor() const;
    public function getAmbientColor():IVector3
    {
        return Macros.impersonateResult(_ambientColor, hx_Scene_getAmbientColor(nativeObject));
    }

    // DECL: Node* getFirstNode() const;
    public function getFirstNode():Node
    {
        return Node.wrap(hx_Scene_getFirstNode(nativeObject));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Scene_getId(nativeObject);
    }

    // DECL: unsigned int getNodeCount() const;
    public function getNodeCount():Int
    {
        return hx_Scene_getNodeCount(nativeObject);
    }

    // DECL: static Scene* load(const char* filePath);
    public static function load(filePath:String):Scene
    {
        return Scene.wrap(hx_Scene_static_load(filePath));
    }

    // DECL: void removeAllNodes();
    public function removeAllNodes():Void
    {
        hx_Scene_removeAllNodes(nativeObject);
    }

    // DECL: void removeNode(Node* node);
    public function removeNode(node:Node):Void
    {
        hx_Scene_removeNode(nativeObject, node.native());
    }

    // DECL: void setActiveCamera(Camera* camera);
    public function setActiveCamera(camera:Camera):Void
    {
        hx_Scene_setActiveCamera(nativeObject, camera.native());
    }

    // DECL: void setAmbientColor(float red, float green, float blue);
    public function setAmbientColor(red:Float, green:Float, blue:Float):Void
    {
        hx_Scene_setAmbientColor(nativeObject, red, green, blue);
    }

    // DECL: void setId(const char* id);
    public function setId(id:String):Void
    {
        hx_Scene_setId(nativeObject, id);
    }
    // TODO:
    // DECL: inline void visit(const char* visitMethod);
    public function visit_Str(visitMethod:String):Void
    {
        hx_Scene_visit_Str(nativeObject, visitMethod);
    }

    // DECL: void visit(T* instance, bool (T::*visitMethod)(Node*));
    public function visit_Func(visitMethod:Node->Bool):Void
    {
        clbkVisitMethod_Node = visitMethod;
        hx_Scene_visit_Func(nativeObject, visitMethod_Node);
    }

    // DECL: void visit(T* instance, bool (T::*visitMethod)(Node*,C), C cookie);
    public function visit_Func_Int(visitMethod:Node->Int->Bool, cookie:Int):Void
    {
        clbkVisitMethod_Node_Int = visitMethod;
        hx_Scene_visit_Func_Int(nativeObject, visitMethod_Node_Int, cookie);
    }

    /***************************************************************************
     * HELPERS                                                                 *
     **************************************************************************/

    var clbkVisitMethod_Node:Node->Bool;
    var clbkVisitMethod_Node_Int:Node-> Int->Bool;

    function visitMethod_Node(node:Dynamic):Bool
    {
        return clbkVisitMethod_Node(Node.wrap(node));
    }

    function visitMethod_Node_Int(node:Dynamic, cookie:Int):Bool
    {
        return clbkVisitMethod_Node_Int(Node.wrap(node), cookie);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Scene_addNode_Str = NativeInterface.loadMember(Scene, "addNode_Str", 2);
    static var hx_Scene_addNode_Node = NativeInterface.loadMember(Scene, "addNode_Node", 2);
    static var hx_Scene_bindAudioListenerToCamera = NativeInterface.loadMember(Scene, "bindAudioListenerToCamera", 2);
    static var hx_Scene_static_create = NativeInterface.loadMember(Scene, "static_create", 0);
    static var hx_Scene_drawDebug = NativeInterface.loadMember(Scene, "drawDebug", 2);
    static var hx_Scene_findNode = NativeInterface.loadMember(Scene, "findNode", 4);
    static var hx_Scene_findNodes = NativeInterface.loadMember(Scene, "findNodes", 5);
    static var hx_Scene_getActiveCamera = NativeInterface.loadMember(Scene, "getActiveCamera", 1);
    static var hx_Scene_getAmbientColor = NativeInterface.loadMember(Scene, "getAmbientColor", 1);
    static var hx_Scene_getFirstNode = NativeInterface.loadMember(Scene, "getFirstNode", 1);
    static var hx_Scene_getId = NativeInterface.loadMember(Scene, "getId", 1);
    static var hx_Scene_getNodeCount = NativeInterface.loadMember(Scene, "getNodeCount", 1);
    static var hx_Scene_static_load = NativeInterface.loadMember(Scene, "static_load", 1);
    static var hx_Scene_removeAllNodes = NativeInterface.loadMember(Scene, "removeAllNodes", 1);
    static var hx_Scene_removeNode = NativeInterface.loadMember(Scene, "removeNode", 2);
    static var hx_Scene_setActiveCamera = NativeInterface.loadMember(Scene, "setActiveCamera", 2);
    static var hx_Scene_setAmbientColor = NativeInterface.loadMember(Scene, "setAmbientColor", 4);
    static var hx_Scene_setId = NativeInterface.loadMember(Scene, "setId", 2);
    static var hx_Scene_visit_Str = NativeInterface.loadMember(Scene, "visit_Str", 2);
    static var hx_Scene_visit_Func = NativeInterface.loadMember(Scene, "visit_Func", 2);
    static var hx_Scene_visit_Func_Int = NativeInterface.loadMember(Scene, "visit_Func_Int", 3);
}

// END
