#include "HaxeAPI.h"

// DECL: static Vector3 centerOfMassMidpoint(const Node* a, const Node* b);
value hx_PhysicsConstraint_static_centerOfMassMidpoint(value a, value b)
{
    Node *_a, *_b;
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    return ObjectToValue(new Vector3(PhysicsConstraint::centerOfMassMidpoint(_a, _b)));
}
DEFINE_PRIM(hx_PhysicsConstraint_static_centerOfMassMidpoint, 2);

// DECL: inline float getBreakingImpulse() const;
value hx_PhysicsConstraint_getBreakingImpulse(value thisObj)
{
    PhysicsConstraint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getBreakingImpulse());
}
DEFINE_PRIM(hx_PhysicsConstraint_getBreakingImpulse, 1);

// DECL: static Quaternion getRotationOffset(const Node* node, const Vector3& point);
value hx_PhysicsConstraint_static_getRotationOffset(value node, value point)
{
    Node *_node;
    Vector3 *_point;
    ValueToObject(node, _node);
    ValueToObject(point, _point);
    return CopyOutsideScope(PhysicsConstraint::getRotationOffset(_node, *_point));
}
DEFINE_PRIM(hx_PhysicsConstraint_static_getRotationOffset, 2);

// DECL: static Vector3 getTranslationOffset(const Node* node, const Vector3& point);
value hx_PhysicsConstraint_static_getTranslationOffset(value node, value point)
{
    Node *_node;
    Vector3 *_point;
    ValueToObject(node, _node);
    ValueToObject(point, _point);
    return ObjectToValue(new Vector3(PhysicsConstraint::getTranslationOffset(_node, *_point)));
}
DEFINE_PRIM(hx_PhysicsConstraint_static_getTranslationOffset, 2);

// DECL: inline bool isEnabled() const;
value hx_PhysicsConstraint_isEnabled(value thisObj)
{
    PhysicsConstraint *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEnabled());
}
DEFINE_PRIM(hx_PhysicsConstraint_isEnabled, 1);

// DECL: inline void setBreakingImpulse(float impulse);
void hx_PhysicsConstraint_setBreakingImpulse(value thisObj, value impulse)
{
    PhysicsConstraint *_thisObj;
    float _impulse = ValueToFloat(impulse);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBreakingImpulse(_impulse);
}
DEFINE_PRIM(hx_PhysicsConstraint_setBreakingImpulse, 2);

// DECL: inline void setEnabled(bool enabled);
void hx_PhysicsConstraint_setEnabled(value thisObj, value enabled)
{
    PhysicsConstraint *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enabled);
}
DEFINE_PRIM(hx_PhysicsConstraint_setEnabled, 2);

// END
//
