package org.gameplay3d;

import org.gameplay3d.impl.ScriptTargetImpl;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsController : public ScriptTarget
class PhysicsController extends ScriptTargetImpl
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void addStatusListener(PhysicsController::Listener* listener);
    public function addStatusListener(listener:PhysicsController_Listener):Void
    {
        hx_PhysicsController_addStatusListener(nativeObject, listener.native());
    }

    // DECL: PhysicsFixedConstraint* createFixedConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
    public function createFixedConstraint(a:PhysicsRigidBody, b:PhysicsRigidBody = null):PhysicsFixedConstraint
    {
        return PhysicsFixedConstraint.wrap(hx_PhysicsController_createFixedConstraint(nativeObject, a.native(), b.native()));
    }

    // DECL: PhysicsGenericConstraint* createGenericConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
    public function createGenericConstraint_RgdBodyX2(a:PhysicsRigidBody, b:PhysicsRigidBody = null):PhysicsGenericConstraint
    {
        return PhysicsGenericConstraint.wrap(hx_PhysicsController_createGenericConstraint_RgdBodyX2(nativeObject, a.native(), b.native()));
    }

    // DECL: PhysicsGenericConstraint* createGenericConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
    public function createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(a:PhysicsRigidBody, rotationOffsetA:Quaternion, translationOffsetA:Vector3, b:PhysicsRigidBody = null, rotationOffsetB:Quaternion, translationOffsetB:Vector3):PhysicsGenericConstraint
    {
        return PhysicsGenericConstraint.wrap(hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(nativeObject, a.native(), rotationOffsetA.native(), translationOffsetA.native(), b.native(), rotationOffsetB.native(), translationOffsetB.native()));
    }

    // DECL: PhysicsHingeConstraint* createHingeConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
    public function createHingeConstraint(a:PhysicsRigidBody, rotationOffsetA:Quaternion, translationOffsetA:Vector3, b:PhysicsRigidBody = null, rotationOffsetB:Quaternion, translationOffsetB:Vector3):PhysicsHingeConstraint
    {
        return PhysicsHingeConstraint.wrap(hx_PhysicsController_createHingeConstraint(nativeObject, a.native(), rotationOffsetA.native(), translationOffsetA.native(), b.native(), rotationOffsetB.native(), translationOffsetB.native()));
    }

    // DECL: PhysicsSocketConstraint* createSocketConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
    public function createSocketConstraintt_RgdBodyX2(a:PhysicsRigidBody, b:PhysicsRigidBody = null):PhysicsSocketConstraint
    {
        return PhysicsSocketConstraint.wrap(hx_PhysicsController_createSocketConstraint_RgdBodyX2(nativeObject, a.native(), b.native()));
    }

    // DECL: PhysicsSocketConstraint* createSocketConstraint(PhysicsRigidBody* a, const Vector3& translationOffsetA,
    public function createSocketConstraint_RgdBody_Qtrn_V3_RgdBody_V3(a:PhysicsRigidBody, translationOffsetA:Vector3, b:PhysicsRigidBody = null, translationOffsetB:Vector3):PhysicsSocketConstraint
    {
        return PhysicsSocketConstraint.wrap(hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3(nativeObject, a.native(), translationOffsetA.native(), b.native(), translationOffsetB.native()));
    }

    // DECL: PhysicsSpringConstraint* createSpringConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b);
    public function createSpringConstraintt_RgdBodyX2(a:PhysicsRigidBody, b:PhysicsRigidBody):PhysicsSpringConstraint
    {
        return PhysicsSpringConstraint.wrap(hx_PhysicsController_createSpringConstraint_RgdBodyX2(nativeObject, a.native(), b.native()));
    }

    // DECL: PhysicsSpringConstraint* createSpringConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
    public function createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(a:PhysicsRigidBody, rotationOffsetA:Quaternion, translationOffsetA:Vector3, b:PhysicsRigidBody, rotationOffsetB:Quaternion, translationOffsetB:Vector3):PhysicsSpringConstraint
    {
        return PhysicsSpringConstraint.wrap(hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(nativeObject, a.native(), rotationOffsetA.native(), translationOffsetA.native(), b.native(), rotationOffsetB.native(), translationOffsetB.native()));
    }

    // DECL: void drawDebug(const Matrix& viewProjection);
    public function drawDebug(viewProjection:Matrix):Void
    {
        hx_PhysicsController_drawDebug(nativeObject, viewProjection.native());
    }

    // DECL: const Vector3& getGravity() const;
    public function getGravity():Vector3
    {
        return Vector3.wrap(hx_PhysicsController_getGravity(nativeObject));
    }

    // DECL: bool rayTest(const Ray& ray, float distance, PhysicsController::HitResult* result = NULL, PhysicsController::HitFilter* filter = NULL);
    public function rayTest(ray:Ray, distance:Float, result:PhysicsController_HitResult, filter:PhysicsController_HitFilter):Bool
    {
        return hx_PhysicsController_rayTest(nativeObject, ray.native(), distance, result.native(), filter.native());
    }

    // DECL: void removeStatusListener(Listener* listener);
    public function removeStatusListener(listener:PhysicsController_Listener):Void
    {
        hx_PhysicsController_removeStatusListener(nativeObject, listener.native());
    }

    // DECL: void setGravity(const Vector3& gravity);
    public function setGravity(gravity:Vector3):Void
    {
        hx_PhysicsController_setGravity(nativeObject, gravity.native());
    }

    // DECL: bool sweepTest(PhysicsCollisionObject* object, const Vector3& endPosition, PhysicsController::HitResult* result = NULL, PhysicsController::HitFilter* filter = NULL);
    public function sweepTest(object:PhysicsCollisionObject, endPosition:Vector3, result:PhysicsController_HitResult, filter:PhysicsController_HitFilter):Bool
    {
        return hx_PhysicsController_sweepTest(nativeObject, object.native(), endPosition.native(), result.native(), filter.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_addStatusListener:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_addStatusListener", 2);
    static var hx_PhysicsController_createFixedConstraint:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createFixedConstraint", 3);
    static var hx_PhysicsController_createGenericConstraint_RgdBodyX2:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createGenericConstraint_RgdBodyX2", 3);
    static var hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3", -1);
    static var hx_PhysicsController_createHingeConstraint:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createHingeConstraint", -1);
    static var hx_PhysicsController_createSocketConstraint_RgdBodyX2:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createSocketConstraint_RgdBodyX2", 3);
    static var hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3", 5);
    static var hx_PhysicsController_createSpringConstraint_RgdBodyX2:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createSpringConstraint_RgdBodyX2", 3);
    static var hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3", -1);
    static var hx_PhysicsController_drawDebug:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_drawDebug", 2);
    static var hx_PhysicsController_getGravity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_getGravity", 1);
    static var hx_PhysicsController_rayTest:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_rayTest", 5);
    static var hx_PhysicsController_removeStatusListener:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_removeStatusListener", 2);
    static var hx_PhysicsController_setGravity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_setGravity", 2);
    static var hx_PhysicsController_sweepTest:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_sweepTest", 5);
}

// END
