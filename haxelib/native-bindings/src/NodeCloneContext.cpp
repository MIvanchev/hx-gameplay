#include "HaxeAPI.h"

// DECL: NodeCloneContext();
value hx_NodeCloneContext_Construct()
{
    return ObjectToValue(new NodeCloneContext());
}
DEFINE_PRIM(hx_NodeCloneContext_Construct, 0);

// DECL: Animation* findClonedAnimation(const Animation* animation);
value hx_NodeCloneContext_findClonedAnimation(value thisObj, value animation)
{
    NodeCloneContext *_thisObj;
    Animation *_animation;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(animation, _animation);
    return ReferenceToValue(_thisObj->findClonedAnimation(_animation), true);
}
DEFINE_PRIM(hx_NodeCloneContext_findClonedAnimation, 2);

// DECL: Node* findClonedNode(const Node* node);
value hx_NodeCloneContext_findClonedNode(value thisObj, value node)
{
    NodeCloneContext *_thisObj;
    Node *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    return ReferenceToValue(_thisObj->findClonedNode(_node), true);
}
DEFINE_PRIM(hx_NodeCloneContext_findClonedNode, 2);

// DECL: void registerClonedAnimation(const Animation* original, Animation* clone);
void hx_NodeCloneContext_registerClonedAnimation(value thisObj, value original, value clone)
{
    NodeCloneContext *_thisObj;
    Animation *_original, *_clone;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(original, _original);
    ValueToObject(clone, _clone);
    _thisObj->registerClonedAnimation(_original, _clone);
}
DEFINE_PRIM(hx_NodeCloneContext_registerClonedAnimation, 3);

// DECL: void registerClonedNode(const Node* original, Node* clone);
void hx_NodeCloneContext_registerClonedNode(value thisObj, value original, value clone)
{
    NodeCloneContext *_thisObj;
    Node *_original, *_clone;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(original, _original);
    ValueToObject(clone, _clone);
    _thisObj->registerClonedNode(_original, _clone);
}
DEFINE_PRIM(hx_NodeCloneContext_registerClonedNode, 3);

// END
//
