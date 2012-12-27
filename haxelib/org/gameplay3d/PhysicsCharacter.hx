package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsCharacter : public PhysicsGhostObject
class PhysicsCharacter extends PhysicsGhostObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Vector3 getCurrentVelocity() const;
    public function getCurrentVelocity():Vector3
    {
        return Vector3.wrap(hx_PhysicsCharacter_getCurrentVelocity(nativeObject));
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
    public function rotate_Qtrn(rotation:Quaternion):Void
    {
        hx_PhysicsCharacter_rotate_Qtrn(nativeObject, rotation.native());
    }

    // DECL: void rotate(const Vector3& axis, float angle);
    public function rotate_V3_Flt(axis:Vector3, angle:Float):Void
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
    public function setRotation_Qtrn(rotation:Quaternion):Void
    {
        hx_PhysicsCharacter_setRotation_Qtrn(nativeObject, rotation.native());
    }

    // DECL: void setRotation(const Vector3& axis, float angle);
    public function setRotation_V3_Flt(axis:Vector3, angle:Float):Void
    {
        hx_PhysicsCharacter_setRotation_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void setVelocity(const Vector3& velocity);
    public function setVelocity_V3(velocity:Vector3):Void
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

    static var hx_PhysicsCharacter_getCurrentVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_getCurrentVelocity", 1);
    static var hx_PhysicsCharacter_getMaxSlopeAngle:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_getMaxSlopeAngle", 1);
    static var hx_PhysicsCharacter_getMaxStepHeight:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_getMaxStepHeight", 1);
    static var hx_PhysicsCharacter_getType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_getType", 1);
    static var hx_PhysicsCharacter_isPhysicsEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_isPhysicsEnabled", 1);
    static var hx_PhysicsCharacter_jump:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_jump", 2);
    static var hx_PhysicsCharacter_rotate_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_rotate_Qtrn", 2);
    static var hx_PhysicsCharacter_rotate_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_rotate_V3_Flt", 3);
    static var hx_PhysicsCharacter_setForwardVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setForwardVelocity", 2);
    static var hx_PhysicsCharacter_setMaxSlopeAngle:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setMaxSlopeAngle", 2);
    static var hx_PhysicsCharacter_setMaxStepHeight:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setMaxStepHeight", 2);
    static var hx_PhysicsCharacter_setPhysicsEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setPhysicsEnabled", 2);
    static var hx_PhysicsCharacter_setRightVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setRightVelocity", 2);
    static var hx_PhysicsCharacter_setRotation_Qtrn:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setRotation_Qtrn", 2);
    static var hx_PhysicsCharacter_setRotation_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setRotation_V3_Flt", 3);
    static var hx_PhysicsCharacter_setVelocity_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setVelocity_V3", 2);
    static var hx_PhysicsCharacter_setVelocity_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCharacter_setVelocity_FltX3", 4);
}

// END
