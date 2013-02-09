package org.gameplay3d;

import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.shared.SharedVector3;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsCharacter : public PhysicsGhostObject
class PhysicsCharacter extends PhysicsGhostObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _currentVelocity:Vector3;

    // DECL: Vector3 getCurrentVelocity() const;
    public function getCurrentVelocity():SharedVector3
    {
        return Macros.impersonateResult(_currentVelocity, hx_PhysicsCharacter_getCurrentVelocity(nativeObject));
    }

    // DECL: float getMaxSlopeAngle() const;
    public function getMaxSlopeAngle():Float
    {
        return hx_PhysicsCharacter_getMaxSlopeAngle(nativeObject);
    }

    // DECL: float getMaxStepHeight() const;
    public function getMaxStepHeight():Float
    {
        return hx_PhysicsCharacter_getMaxStepHeight(nativeObject);
    }

    // DECL: PhysicsCollisionObject::Type getType() const;
    override public function getType():Int
    {
        return hx_PhysicsCharacter_getType(nativeObject);
    }

    // DECL: bool isPhysicsEnabled() const;
    public function isPhysicsEnabled():Bool
    {
        return hx_PhysicsCharacter_isPhysicsEnabled(nativeObject);
    }

    // DECL: void jump(float height);
    public function jump(height:Float):Void
    {
        hx_PhysicsCharacter_jump(nativeObject, height);
    }

    // DECL: void rotate(const Quaternion& rotation);
    public function rotate_Qtrn(rotation:IQuaternion):Void
    {
        hx_PhysicsCharacter_rotate_Qtrn(nativeObject, rotation.native());
    }

    // DECL: void rotate(const Vector3& axis, float angle);
    public function rotate_V3_Flt(axis:IVector3, angle:Float):Void
    {
        hx_PhysicsCharacter_rotate_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void setForwardVelocity(float velocity = 1.0f);
    public function setForwardVelocity(velocity:Float = 1.0):Void
    {
        hx_PhysicsCharacter_setForwardVelocity(nativeObject, velocity);
    }

    // DECL: void setMaxSlopeAngle(float angle);
    public function setMaxSlopeAngle(angle:Float):Void
    {
        hx_PhysicsCharacter_setMaxSlopeAngle(nativeObject, angle);
    }

    // DECL: void setMaxStepHeight(float height);
    public function setMaxStepHeight(height:Float):Void
    {
        hx_PhysicsCharacter_setMaxStepHeight(nativeObject, height);
    }

    // DECL: void setPhysicsEnabled(bool enabled);
    public function setPhysicsEnabled(enabled:Bool):Void
    {
        hx_PhysicsCharacter_setPhysicsEnabled(nativeObject, enabled);
    }

    // DECL: void setRightVelocity(float velocity = 1.0f);
    public function setRightVelocity(velocity:Float = 1.0):Void
    {
        hx_PhysicsCharacter_setRightVelocity(nativeObject, velocity);
    }

    // DECL: void setRotation(const Quaternion& rotation);
    public function setRotation_Qtrn(rotation:IQuaternion):Void
    {
        hx_PhysicsCharacter_setRotation_Qtrn(nativeObject, rotation.native());
    }

    // DECL: void setRotation(const Vector3& axis, float angle);
    public function setRotation_V3_Flt(axis:IVector3, angle:Float):Void
    {
        hx_PhysicsCharacter_setRotation_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void setVelocity(const Vector3& velocity);
    public function setVelocity_V3(velocity:IVector3):Void
    {
        hx_PhysicsCharacter_setVelocity_V3(nativeObject, velocity.native());
    }

    // DECL: void setVelocity(float x, float y, float z);
    public function setVelocity_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsCharacter_setVelocity_FltX3(nativeObject, x, y, z);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCharacter_getCurrentVelocity = NativeInterface.loadMember(PhysicsCharacter, "getCurrentVelocity", 1);
    static var hx_PhysicsCharacter_getMaxSlopeAngle = NativeInterface.loadMember(PhysicsCharacter, "getMaxSlopeAngle", 1);
    static var hx_PhysicsCharacter_getMaxStepHeight = NativeInterface.loadMember(PhysicsCharacter, "getMaxStepHeight", 1);
    static var hx_PhysicsCharacter_getType = NativeInterface.loadMember(PhysicsCharacter, "getType", 1);
    static var hx_PhysicsCharacter_isPhysicsEnabled = NativeInterface.loadMember(PhysicsCharacter, "isPhysicsEnabled", 1);
    static var hx_PhysicsCharacter_jump = NativeInterface.loadMember(PhysicsCharacter, "jump", 2);
    static var hx_PhysicsCharacter_rotate_Qtrn = NativeInterface.loadMember(PhysicsCharacter, "rotate_Qtrn", 2);
    static var hx_PhysicsCharacter_rotate_V3_Flt = NativeInterface.loadMember(PhysicsCharacter, "rotate_V3_Flt", 3);
    static var hx_PhysicsCharacter_setForwardVelocity = NativeInterface.loadMember(PhysicsCharacter, "setForwardVelocity", 2);
    static var hx_PhysicsCharacter_setMaxSlopeAngle = NativeInterface.loadMember(PhysicsCharacter, "setMaxSlopeAngle", 2);
    static var hx_PhysicsCharacter_setMaxStepHeight = NativeInterface.loadMember(PhysicsCharacter, "setMaxStepHeight", 2);
    static var hx_PhysicsCharacter_setPhysicsEnabled = NativeInterface.loadMember(PhysicsCharacter, "setPhysicsEnabled", 2);
    static var hx_PhysicsCharacter_setRightVelocity = NativeInterface.loadMember(PhysicsCharacter, "setRightVelocity", 2);
    static var hx_PhysicsCharacter_setRotation_Qtrn = NativeInterface.loadMember(PhysicsCharacter, "setRotation_Qtrn", 2);
    static var hx_PhysicsCharacter_setRotation_V3_Flt = NativeInterface.loadMember(PhysicsCharacter, "setRotation_V3_Flt", 3);
    static var hx_PhysicsCharacter_setVelocity_V3 = NativeInterface.loadMember(PhysicsCharacter, "setVelocity_V3", 2);
    static var hx_PhysicsCharacter_setVelocity_FltX3 = NativeInterface.loadMember(PhysicsCharacter, "setVelocity_FltX3", 4);
}

// END
