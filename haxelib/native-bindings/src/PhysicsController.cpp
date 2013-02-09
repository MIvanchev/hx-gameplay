#include "HaxeAPI.h"

// DECL: void addStatusListener(PhysicsController::Listener* listener);
void hx_PhysicsController_addStatusListener(value thisObj, value listener)
{
    PhysicsController *_thisObj;
    PhysicsController::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addStatusListener(_listener);
}
DEFINE_PRIM(hx_PhysicsController_addStatusListener, 2);

// DECL: PhysicsFixedConstraint* createFixedConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
value hx_PhysicsController_createFixedConstraint(value thisObj, value a, value b)
{
    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    return ObjectToValue(_thisObj->createFixedConstraint(_a, _b), false);
}
DEFINE_PRIM(hx_PhysicsController_createFixedConstraint, 3);

// DECL: PhysicsGenericConstraint* createGenericConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
value hx_PhysicsController_createGenericConstraint_RgdBodyX2(value thisObj, value a, value b)
{
    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    return ObjectToValue(_thisObj->createGenericConstraint(_a, _b), false);
}
DEFINE_PRIM(hx_PhysicsController_createGenericConstraint_RgdBodyX2, 3);

// DECL: PhysicsGenericConstraint* createGenericConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
value hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& a = *args++;
    const value& rotationOffsetA = *args++;
    const value& translationOffsetA = *args++;
    const value& b = *args++;
    const value& rotationOffsetB = *args++;
    const value& translationOffsetB = *args;

    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    Quaternion *_rotationOffsetA, *_rotationOffsetB;
    Vector3 *_translationOffsetA, *_translationOffsetB;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    ValueToObject(rotationOffsetA, _rotationOffsetA);
    ValueToObject(rotationOffsetB, _rotationOffsetB);
    ValueToObject(translationOffsetA, _translationOffsetA);
    ValueToObject(translationOffsetB, _translationOffsetB);
    return ObjectToValue(_thisObj->createGenericConstraint(_a, *_rotationOffsetA, *_translationOffsetA, _b, *_rotationOffsetB, *_translationOffsetB), false);
}
DEFINE_PRIM_MULT(hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3);

// DECL: PhysicsHingeConstraint* createHingeConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
value hx_PhysicsController_createHingeConstraint(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& a = *args++;
    const value& rotationOffsetA = *args++;
    const value& translationOffsetA = *args++;
    const value& b = *args++;
    const value& rotationOffsetB = *args++;
    const value& translationOffsetB = *args;

    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    Quaternion *_rotationOffsetA, *_rotationOffsetB;
    Vector3 *_translationOffsetA, *_translationOffsetB;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    ValueToObject(rotationOffsetA, _rotationOffsetA);
    ValueToObject(rotationOffsetB, _rotationOffsetB);
    ValueToObject(translationOffsetA, _translationOffsetA);
    ValueToObject(translationOffsetB, _translationOffsetB);
    return ObjectToValue(_thisObj->createHingeConstraint(_a, *_rotationOffsetA, *_translationOffsetA, _b, *_rotationOffsetB, *_translationOffsetB), false);
}
DEFINE_PRIM_MULT(hx_PhysicsController_createHingeConstraint);

// DECL: PhysicsSocketConstraint* createSocketConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
value hx_PhysicsController_createSocketConstraint_RgdBodyX2(value thisObj, value a, value b)
{
    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    return ObjectToValue(_thisObj->createSocketConstraint(_a, _b), false);
}
DEFINE_PRIM(hx_PhysicsController_createSocketConstraint_RgdBodyX2, 3);

// DECL: PhysicsSocketConstraint* createSocketConstraint(PhysicsRigidBody* a, const Vector3& translationOffsetA,
value hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3(value thisObj, value a, value translationOffsetA, value b, value translationOffsetB)
{
    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    Vector3 *_translationOffsetA, *_translationOffsetB;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    ValueToObject(translationOffsetA, _translationOffsetA);
    ValueToObject(translationOffsetB, _translationOffsetB);
    return ObjectToValue(_thisObj->createSocketConstraint(_a, *_translationOffsetA, _b, *_translationOffsetB), false);
}
DEFINE_PRIM(hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3, 5);

// DECL: PhysicsSpringConstraint* createSpringConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b);
value hx_PhysicsController_createSpringConstraint_RgdBodyX2(value thisObj, value a, value b)
{
    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    return ObjectToValue(_thisObj->createSpringConstraint(_a, _b), false);
}
DEFINE_PRIM(hx_PhysicsController_createSpringConstraint_RgdBodyX2, 3);

// DECL: PhysicsSpringConstraint* createSpringConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
value hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& a = *args++;
    const value& rotationOffsetA = *args++;
    const value& translationOffsetA = *args++;
    const value& b = *args++;
    const value& rotationOffsetB = *args++;
    const value& translationOffsetB = *args;

    PhysicsController *_thisObj;
    PhysicsRigidBody *_a, *_b;
    Quaternion *_rotationOffsetA, *_rotationOffsetB;
    Vector3 *_translationOffsetA, *_translationOffsetB;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(a, _a);
    ValueToObject(b, _b);
    ValueToObject(rotationOffsetA, _rotationOffsetA);
    ValueToObject(rotationOffsetB, _rotationOffsetB);
    ValueToObject(translationOffsetA, _translationOffsetA);
    ValueToObject(translationOffsetB, _translationOffsetB);
    return ObjectToValue(_thisObj->createSpringConstraint(_a, *_rotationOffsetA, *_translationOffsetA, _b, *_rotationOffsetB, *_translationOffsetB), false);
}
DEFINE_PRIM_MULT(hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3);

// DECL: void drawDebug(const Matrix& viewProjection);
void hx_PhysicsController_drawDebug(value thisObj, value viewProjection)
{
    PhysicsController *_thisObj;
    Matrix *_viewProjection;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(viewProjection, _viewProjection);
    _thisObj->drawDebug(*_viewProjection);
}
DEFINE_PRIM(hx_PhysicsController_drawDebug, 2);

// DECL: const Vector3& getGravity() const;
value hx_PhysicsController_getGravity(value thisObj)
{
    PhysicsController *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getGravity(), false);
}
DEFINE_PRIM(hx_PhysicsController_getGravity, 1);

// DECL: bool rayTest(const Ray& ray, float distance, PhysicsController::HitResult* result = NULL, PhysicsController::HitFilter* filter = NULL);
value hx_PhysicsController_rayTest(value thisObj, value ray, value distance, value result, value filter)
{
    PhysicsController *_thisObj;
    Ray *_ray;
    float _distance = ValueToFloat(distance);
    PhysicsController::HitResult *_result;
    PhysicsController::HitFilter *_filter;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(ray, _ray);
    ValueToObject(result, _result);
    ValueToObject(filter, _filter);
    return alloc_bool(_thisObj->rayTest(*_ray, _distance, _result, _filter));
}
DEFINE_PRIM(hx_PhysicsController_rayTest, 5);

// DECL: void removeStatusListener(Listener* listener);
void hx_PhysicsController_removeStatusListener(value thisObj, value listener)
{
    PhysicsController *_thisObj;
    PhysicsController::Listener *_listener;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->removeStatusListener(_listener);
}
DEFINE_PRIM(hx_PhysicsController_removeStatusListener, 2);

// DECL: void setGravity(const Vector3& gravity);
void hx_PhysicsController_setGravity(value thisObj, value gravity)
{
    PhysicsController *_thisObj;
    Vector3 *_gravity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(gravity, _gravity);
    _thisObj->setGravity(*_gravity);
}
DEFINE_PRIM(hx_PhysicsController_setGravity, 2);

// DECL: bool sweepTest(PhysicsCollisionObject* object, const Vector3& endPosition, PhysicsController::HitResult* result = NULL, PhysicsController::HitFilter* filter = NULL);
value hx_PhysicsController_sweepTest(value thisObj, value object, value endPosition, value result, value filter)
{
    PhysicsController *_thisObj;
    PhysicsCollisionObject *_object;
    Vector3 *_endPosition;
    PhysicsController::HitResult *_result;
    PhysicsController::HitFilter *_filter;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(object, _object);
    ValueToObject(endPosition, _endPosition);
    ValueToObject(result, _result);
    ValueToObject(filter, _filter);
    return alloc_bool(_thisObj->sweepTest(_object, *_endPosition, _result, _filter));
}
DEFINE_PRIM(hx_PhysicsController_sweepTest, 5);

// END
//
