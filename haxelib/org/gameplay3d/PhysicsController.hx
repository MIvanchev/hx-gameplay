package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.impl.ScriptTargetImpl;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.PhysicsController_HitFilterWrapper;
import org.gameplay3d.wrapper.PhysicsController_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsController : public ScriptTarget
class PhysicsController extends ScriptTargetImpl
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _gravity:Vector3;

    // DECL: void addStatusListener(PhysicsController::Listener* listener);
    public function addStatusListener(listener:PhysicsController_ListenerWrapper):Void
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
    public function createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(a:PhysicsRigidBody, rotationOffsetA:IQuaternion, translationOffsetA:IVector3, b:PhysicsRigidBody = null, rotationOffsetB:IQuaternion, translationOffsetB:IVector3):PhysicsGenericConstraint
    {
        return PhysicsGenericConstraint.wrap(hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(nativeObject, a.native(), rotationOffsetA.native(), translationOffsetA.native(), b.native(), rotationOffsetB.native(), translationOffsetB.native()));
    }

    // DECL: PhysicsHingeConstraint* createHingeConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
    public function createHingeConstraint(a:PhysicsRigidBody, rotationOffsetA:IQuaternion, translationOffsetA:IVector3, b:PhysicsRigidBody = null, rotationOffsetB:IQuaternion, translationOffsetB:IVector3):PhysicsHingeConstraint
    {
        return PhysicsHingeConstraint.wrap(hx_PhysicsController_createHingeConstraint(nativeObject, a.native(), rotationOffsetA.native(), translationOffsetA.native(), b.native(), rotationOffsetB.native(), translationOffsetB.native()));
    }

    // DECL: PhysicsSocketConstraint* createSocketConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b = NULL);
    public function createSocketConstraintt_RgdBodyX2(a:PhysicsRigidBody, b:PhysicsRigidBody = null):PhysicsSocketConstraint
    {
        return PhysicsSocketConstraint.wrap(hx_PhysicsController_createSocketConstraint_RgdBodyX2(nativeObject, a.native(), b.native()));
    }

    // DECL: PhysicsSocketConstraint* createSocketConstraint(PhysicsRigidBody* a, const Vector3& translationOffsetA,
    public function createSocketConstraint_RgdBody_Qtrn_V3_RgdBody_V3(a:PhysicsRigidBody, translationOffsetA:IVector3, b:PhysicsRigidBody = null, translationOffsetB:IVector3):PhysicsSocketConstraint
    {
        return PhysicsSocketConstraint.wrap(hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3(nativeObject, a.native(), translationOffsetA.native(), b.native(), translationOffsetB.native()));
    }

    // DECL: PhysicsSpringConstraint* createSpringConstraint(PhysicsRigidBody* a, PhysicsRigidBody* b);
    public function createSpringConstraintt_RgdBodyX2(a:PhysicsRigidBody, b:PhysicsRigidBody):PhysicsSpringConstraint
    {
        return PhysicsSpringConstraint.wrap(hx_PhysicsController_createSpringConstraint_RgdBodyX2(nativeObject, a.native(), b.native()));
    }

    // DECL: PhysicsSpringConstraint* createSpringConstraint(PhysicsRigidBody* a, const Quaternion& rotationOffsetA, const Vector3& translationOffsetA,
    public function createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(a:PhysicsRigidBody, rotationOffsetA:IQuaternion, translationOffsetA:IVector3, b:PhysicsRigidBody, rotationOffsetB:IQuaternion, translationOffsetB:IVector3):PhysicsSpringConstraint
    {
        return PhysicsSpringConstraint.wrap(hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3(nativeObject, a.native(), rotationOffsetA.native(), translationOffsetA.native(), b.native(), rotationOffsetB.native(), translationOffsetB.native()));
    }

    // DECL: void drawDebug(const Matrix& viewProjection);
    public function drawDebug(viewProjection:IMatrix):Void
    {
        hx_PhysicsController_drawDebug(nativeObject, viewProjection.native());
    }

    // DECL: const Vector3& getGravity() const;
    public function getGravity():IVector3
    {
        return Macros.impersonateResult(_gravity, hx_PhysicsController_getGravity(nativeObject));
    }

    // DECL: bool rayTest(const Ray& ray, float distance, PhysicsController::HitResult* result = NULL, PhysicsController::HitFilter* filter = NULL);
    public function rayTest(ray:Ray, distance:Float, result:PhysicsController_HitResult = null, filter:PhysicsController_HitFilterWrapper = null):Bool
    {
        return hx_PhysicsController_rayTest(nativeObject, ray.native(), distance, result.native(), filter.native());
    }

    // DECL: void removeStatusListener(Listener* listener);
    public function removeStatusListener(listener:PhysicsController_ListenerWrapper):Void
    {
        hx_PhysicsController_removeStatusListener(nativeObject, listener.native());
    }

    // DECL: void setGravity(const Vector3& gravity);
    public function setGravity(gravity:IVector3):Void
    {
        hx_PhysicsController_setGravity(nativeObject, gravity.native());
    }

    // DECL: bool sweepTest(PhysicsCollisionObject* object, const Vector3& endPosition, PhysicsController::HitResult* result = NULL, PhysicsController::HitFilter* filter = NULL);
    public function sweepTest(object:PhysicsCollisionObject, endPosition:IVector3, result:PhysicsController_HitResult = null, filter:PhysicsController_HitFilterWrapper = null):Bool
    {
        return hx_PhysicsController_sweepTest(nativeObject, object.native(), endPosition.native(), result.native(), filter.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_addStatusListener = NativeInterface.loadMember(PhysicsController, "addStatusListener", 2);
    static var hx_PhysicsController_createFixedConstraint = NativeInterface.loadMember(PhysicsController, "createFixedConstraint", 3);
    static var hx_PhysicsController_createGenericConstraint_RgdBodyX2 = NativeInterface.loadMember(PhysicsController, "createGenericConstraint_RgdBodyX2", 3);
    static var hx_PhysicsController_createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3 = NativeInterface.loadMember(PhysicsController, "createGenericConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3", -1);
    static var hx_PhysicsController_createHingeConstraint = NativeInterface.loadMember(PhysicsController, "createHingeConstraint", -1);
    static var hx_PhysicsController_createSocketConstraint_RgdBodyX2 = NativeInterface.loadMember(PhysicsController, "createSocketConstraint_RgdBodyX2", 3);
    static var hx_PhysicsController_createSocketConstraint_RgdBody_V3_RgdBody_V3 = NativeInterface.loadMember(PhysicsController, "createSocketConstraint_RgdBody_V3_RgdBody_V3", 5);
    static var hx_PhysicsController_createSpringConstraint_RgdBodyX2 = NativeInterface.loadMember(PhysicsController, "createSpringConstraint_RgdBodyX2", 3);
    static var hx_PhysicsController_createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3 = NativeInterface.loadMember(PhysicsController, "createSpringConstraint_RgdBody_Qtrn_V3_RgdBody_Qtrn_V3", -1);
    static var hx_PhysicsController_drawDebug = NativeInterface.loadMember(PhysicsController, "drawDebug", 2);
    static var hx_PhysicsController_getGravity = NativeInterface.loadMember(PhysicsController, "getGravity", 1);
    static var hx_PhysicsController_rayTest = NativeInterface.loadMember(PhysicsController, "rayTest", 5);
    static var hx_PhysicsController_removeStatusListener = NativeInterface.loadMember(PhysicsController, "removeStatusListener", 2);
    static var hx_PhysicsController_setGravity = NativeInterface.loadMember(PhysicsController, "setGravity", 2);
    static var hx_PhysicsController_sweepTest = NativeInterface.loadMember(PhysicsController, "sweepTest", 5);
}

// END
