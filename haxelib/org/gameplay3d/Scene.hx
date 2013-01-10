package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.NativeOutParameter;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Scene : public Ref
class Scene extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _ambientColor:Vector3;

    function new(
            nativeObjectInitializer:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObjectInitializer, nativeObjectInitializerParams);
        _ambientColor = Vector3.make();
    }


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
        var _nodes = new NativeOutParameter();
        var result = hx_Scene_findNodes(nativeObject, id, _nodes.native(), recursive, exactMatch);
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
        return _ambientColor.impersonate(hx_Scene_getAmbientColor(nativeObject));
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

    static var hx_Scene_addNode_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_addNode_Str", 2);
    static var hx_Scene_addNode_Node:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_addNode_Node", 2);
    static var hx_Scene_bindAudioListenerToCamera:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_bindAudioListenerToCamera", 2);
    static var hx_Scene_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_static_create", 0);
    static var hx_Scene_drawDebug:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_drawDebug", 2);
    static var hx_Scene_findNode:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_findNode", 4);
    static var hx_Scene_findNodes:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_findNodes", 5);
    static var hx_Scene_getActiveCamera:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_getActiveCamera", 1);
    static var hx_Scene_getAmbientColor:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_getAmbientColor", 1);
    static var hx_Scene_getFirstNode:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_getFirstNode", 1);
    static var hx_Scene_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_getId", 1);
    static var hx_Scene_getNodeCount:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_getNodeCount", 1);
    static var hx_Scene_static_load:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_static_load", 1);
    static var hx_Scene_removeAllNodes:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_removeAllNodes", 1);
    static var hx_Scene_removeNode:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_removeNode", 2);
    static var hx_Scene_setActiveCamera:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_setActiveCamera", 2);
    static var hx_Scene_setAmbientColor:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_setAmbientColor", 4);
    static var hx_Scene_setId:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_setId", 2);
    static var hx_Scene_visit_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_visit_Str", 2);
    static var hx_Scene_visit_Func:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_visit_Func", 2);
    static var hx_Scene_visit_Func_Int:Dynamic = cpp.Lib.load("gameplay", "hx_Scene_visit_Func_Int", 3);
}

// END
