package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class NodeCloneContext : public GameplayObject
class NodeCloneContext extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: NodeCloneContext();
    public static function make():NodeCloneContext
    {
        return new NodeCloneContext(constructNativeObject());
    }

    // DECL: Animation* findClonedAnimation(const Animation* animation);
    public function findClonedAnimation(animation:Animation):Animation
    {
        return Animation.wrap(hx_NodeCloneContext_findClonedAnimation(nativeObject, animation.native()));
    }

    // DECL: Node* findClonedNode(const Node* node);
    public function findClonedNode(node:Node):Node
    {
        return Node.wrap(hx_NodeCloneContext_findClonedNode(nativeObject, node.native()));
    }

    // DECL: void registerClonedAnimation(const Animation* original, Animation* clone);
    public function registerClonedAnimation(original:Animation, clone:Animation):Void
    {
        hx_NodeCloneContext_registerClonedAnimation(nativeObject, original.native(), clone.native());
    }

    // DECL: void registerClonedNode(const Node* original, Node* clone);
    public function registerClonedNode(original:Node, clone:Node):Void
    {
        hx_NodeCloneContext_registerClonedNode(nativeObject, original.native(), clone.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: NodeCloneContext();
    static function constructNativeObject():Dynamic
    {
        return hx_NodeCloneContext_Construct();
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_NodeCloneContext_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_NodeCloneContext_Construct", 0);
    static var hx_NodeCloneContext_findClonedAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_NodeCloneContext_findClonedAnimation", 2);
    static var hx_NodeCloneContext_findClonedNode:Dynamic = cpp.Lib.load("gameplay", "hx_NodeCloneContext_findClonedNode", 2);
    static var hx_NodeCloneContext_registerClonedAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_NodeCloneContext_registerClonedAnimation", 3);
    static var hx_NodeCloneContext_registerClonedNode:Dynamic = cpp.Lib.load("gameplay", "hx_NodeCloneContext_registerClonedNode", 3);
}

// END
