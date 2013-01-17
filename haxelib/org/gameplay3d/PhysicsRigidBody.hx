package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.shared.SharedVector3;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsRigidBody : public PhysicsCollisionObject, public Transform::Listener
class PhysicsRigidBody extends PhysicsCollisionObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _angularFactor:Vector3;
    var _angularVelocity:Vector3;
    var _anisotropicFriction:Vector3;
    var _gravity:Vector3;
    var _linearFactor:Vector3;
    var _linearVelocity:Vector3;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            _angularFactor = Vector3.make();
            _angularVelocity = Vector3.make();
            _anisotropicFriction = Vector3.make();
            _gravity = Vector3.make();
            _linearFactor = Vector3.make();
            _linearVelocity = Vector3.make();
        }
        return cast(this);
    }

    // DECL: void applyForce(const Vector3& force, const Vector3* relativePosition = NULL);
    public function applyForce(force:IVector3, relativePosition:Vector3 = null):Void
    {
        hx_PhysicsRigidBody_applyForce(nativeObject, force.native(), relativePosition.native());
    }

    // DECL: void applyImpulse(const Vector3& impulse, const Vector3* relativePosition = NULL);
    public function applyImpulse(impulse:IVector3, relativePosition:Vector3 = null):Void
    {
        hx_PhysicsRigidBody_applyImpulse(nativeObject, impulse.native(), relativePosition.native());
    }

    // DECL: void applyTorque(const Vector3& torque);
    public function applyTorque(torque:IVector3):Void
    {
        hx_PhysicsRigidBody_applyTorque(nativeObject, torque.native());
    }

    // DECL: void applyTorqueImpulse(const Vector3& torque);
    public function applyTorqueImpulse(torque:IVector3):Void
    {
        hx_PhysicsRigidBody_applyTorqueImpulse(nativeObject, torque.native());
    }

    // DECL: inline float getAngularDamping() const;
    public function getAngularDamping():Float
    {
        return hx_PhysicsRigidBody_getAngularDamping(nativeObject);
    }

    // DECL: inline Vector3 getAngularFactor() const;
    public function getAngularFactor():SharedVector3
    {
        return _angularFactor.impersonate(hx_PhysicsRigidBody_getAngularFactor(nativeObject));
    }

    // DECL: inline Vector3 getAngularVelocity() const;
    public function getAngularVelocity():SharedVector3
    {
        return _angularVelocity.impersonate(hx_PhysicsRigidBody_getAngularVelocity(nativeObject));
    }

    // DECL: inline Vector3 getAnisotropicFriction() const;
    public function getAnisotropicFriction():SharedVector3
    {
        return _anisotropicFriction.impersonate(hx_PhysicsRigidBody_getAnisotropicFriction(nativeObject));
    }

    // DECL: inline float getFriction() const;
    public function getFriction():Float
    {
        return hx_PhysicsRigidBody_getFriction(nativeObject);
    }

    // DECL: inline Vector3 getGravity() const;
    public function getGravity():SharedVector3
    {
        return _gravity.impersonate(hx_PhysicsRigidBody_getGravity(nativeObject));
    }

    // DECL: float getHeight(float x, float y, Vector3* normal = NULL) const;
    public function getHeight(x:Float, y:Float, normal:Vector3 = null):Float
    {
        return hx_PhysicsRigidBody_getHeight(nativeObject, x, y, normal.native());
    }

    // DECL: inline float getLinearDamping() const;
    public function getLinearDamping():Float
    {
        return hx_PhysicsRigidBody_getLinearDamping(nativeObject);
    }

    // DECL: inline Vector3 getLinearFactor() const;
    public function getLinearFactor():SharedVector3
    {
        return _linearFactor.impersonate(hx_PhysicsRigidBody_getLinearFactor(nativeObject));
    }

    // DECL: inline Vector3 getLinearVelocity() const;
    public function getLinearVelocity():SharedVector3
    {
        return _linearVelocity.impersonate(hx_PhysicsRigidBody_getLinearVelocity(nativeObject));
    }

    // DECL: inline float getMass() const;
    public function getMass():Float
    {
        return hx_PhysicsRigidBody_getMass(nativeObject);
    }

    // DECL: inline float getRestitution() const;
    public function getRestitution():Float
    {
        return hx_PhysicsRigidBody_getRestitution(nativeObject);
    }

    // DECL: PhysicsCollisionObject::Type getType() const;
    override public function getType():Int
    {
        return hx_PhysicsRigidBody_getType(nativeObject);
    }

    // DECL: bool isStatic() const;
    public function isStatic():Bool
    {
        return hx_PhysicsRigidBody_isStatic(nativeObject);
    }

    // DECL: inline void setAngularFactor(const Vector3& angularFactor);
    public function setAngularFactor_V3(angularFactor:IVector3):Void
    {
        hx_PhysicsRigidBody_setAngularFactor_V3(nativeObject, angularFactor.native());
    }

    // DECL: inline void setAngularFactor(float x, float y, float z);
    public function setAngularFactor_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsRigidBody_setAngularFactor_FltX3(nativeObject, x, y, z);
    }

    // DECL: inline void setAngularVelocity(const Vector3& velocity);
    public function setAngularVelocity_V3(velocity:IVector3):Void
    {
        hx_PhysicsRigidBody_setAngularVelocity_V3(nativeObject, velocity.native());
    }

    // DECL: inline void setAngularVelocity(float x, float y, float z);
    public function setAngularVelocity_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsRigidBody_setAngularVelocity_FltX3(nativeObject, x, y, z);
    }

    // DECL: inline void setAnisotropicFriction(const Vector3& friction);
    public function setAnisotropicFriction_V3(friction:IVector3):Void
    {
        hx_PhysicsRigidBody_setAnisotropicFriction_V3(nativeObject, friction.native());
    }

    // DECL: inline void setAnisotropicFriction(float x, float y, float z);
    public function setAnisotropicFriction_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsRigidBody_setAnisotropicFriction_FltX3(nativeObject, x, y, z);
    }

    // DECL: inline void setDamping(float linearDamping, float angularDamping);
    public function setDamping(linearDamping:Float, angularDamping:Float):Void
    {
        hx_PhysicsRigidBody_setDamping(nativeObject, linearDamping, angularDamping);
    }

    // DECL: void setEnabled(bool enable);
    override public function setEnabled(enable:Bool):Void
    {
        hx_PhysicsRigidBody_setEnabled(nativeObject, enable);
    }

    // DECL: inline void setFriction(float friction);
    public function setFriction(friction:Float):Void
    {
        hx_PhysicsRigidBody_setFriction(nativeObject, friction);
    }

    // DECL: inline void setGravity(const Vector3& gravity);
    public function setGravity_V3(gravity:IVector3):Void
    {
        hx_PhysicsRigidBody_setGravity_V3(nativeObject, gravity.native());
    }

    // DECL: inline void setGravity(float x, float y, float z);
    public function setGravity_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsRigidBody_setGravity_FltX3(nativeObject, x, y, z);
    }

    // DECL: void setKinematic(bool kinematic);
    public function setKinematic(kinematic:Bool):Void
    {
        hx_PhysicsRigidBody_setKinematic(nativeObject, kinematic);
    }

    // DECL: inline void setLinearFactor(const Vector3& linearFactor);
    public function setLinearFactor_V3(linearFactor:IVector3):Void
    {
        hx_PhysicsRigidBody_setLinearFactor_V3(nativeObject, linearFactor.native());
    }

    // DECL: inline void setLinearFactor(float x, float y, float z);
    public function setLinearFactor_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsRigidBody_setLinearFactor_FltX3(nativeObject, x, y, z);
    }

    // DECL: inline void setLinearVelocity(const Vector3& velocity);
    public function setLinearVelocity_V3(velocity:IVector3):Void
    {
        hx_PhysicsRigidBody_setLinearVelocity_V3(nativeObject, velocity.native());
    }

    // DECL: inline void setLinearVelocity(float x, float y, float z);
    public function setLinearVelocity_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_PhysicsRigidBody_setLinearVelocity_FltX3(nativeObject, x, y, z);
    }

    // DECL: inline void setRestitution(float restitution);
    public function setRestitution(restitution:Float):Void
    {
        hx_PhysicsRigidBody_setRestitution(nativeObject, restitution);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsRigidBody_applyForce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_applyForce", 3);
    static var hx_PhysicsRigidBody_applyImpulse:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_applyImpulse", 3);
    static var hx_PhysicsRigidBody_applyTorque:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_applyTorque", 2);
    static var hx_PhysicsRigidBody_applyTorqueImpulse:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_applyTorqueImpulse", 2);
    static var hx_PhysicsRigidBody_getAngularDamping:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getAngularDamping", 1);
    static var hx_PhysicsRigidBody_getAngularFactor:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getAngularFactor", 1);
    static var hx_PhysicsRigidBody_getAngularVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getAngularVelocity", 1);
    static var hx_PhysicsRigidBody_getAnisotropicFriction:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getAnisotropicFriction", 1);
    static var hx_PhysicsRigidBody_getFriction:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getFriction", 1);
    static var hx_PhysicsRigidBody_getGravity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getGravity", 1);
    static var hx_PhysicsRigidBody_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getHeight", 4);
    static var hx_PhysicsRigidBody_getLinearDamping:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getLinearDamping", 1);
    static var hx_PhysicsRigidBody_getLinearFactor:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getLinearFactor", 1);
    static var hx_PhysicsRigidBody_getLinearVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getLinearVelocity", 1);
    static var hx_PhysicsRigidBody_getMass:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getMass", 1);
    static var hx_PhysicsRigidBody_getRestitution:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getRestitution", 1);
    static var hx_PhysicsRigidBody_getType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_getType", 1);
    static var hx_PhysicsRigidBody_isStatic:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_isStatic", 1);
    static var hx_PhysicsRigidBody_setAngularFactor_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setAngularFactor_V3", 2);
    static var hx_PhysicsRigidBody_setAngularFactor_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setAngularFactor_FltX3", 4);
    static var hx_PhysicsRigidBody_setAngularVelocity_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setAngularVelocity_V3", 2);
    static var hx_PhysicsRigidBody_setAngularVelocity_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setAngularVelocity_FltX3", 4);
    static var hx_PhysicsRigidBody_setAnisotropicFriction_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setAnisotropicFriction_V3", 2);
    static var hx_PhysicsRigidBody_setAnisotropicFriction_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setAnisotropicFriction_FltX3", 4);
    static var hx_PhysicsRigidBody_setDamping:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setDamping", 3);
    static var hx_PhysicsRigidBody_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setEnabled", 2);
    static var hx_PhysicsRigidBody_setFriction:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setFriction", 2);
    static var hx_PhysicsRigidBody_setGravity_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setGravity_V3", 2);
    static var hx_PhysicsRigidBody_setGravity_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setGravity_FltX3", 4);
    static var hx_PhysicsRigidBody_setKinematic:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setKinematic", 2);
    static var hx_PhysicsRigidBody_setLinearFactor_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setLinearFactor_V3", 2);
    static var hx_PhysicsRigidBody_setLinearFactor_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setLinearFactor_FltX3", 4);
    static var hx_PhysicsRigidBody_setLinearVelocity_V3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setLinearVelocity_V3", 2);
    static var hx_PhysicsRigidBody_setLinearVelocity_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setLinearVelocity_FltX3", 4);
    static var hx_PhysicsRigidBody_setRestitution:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsRigidBody_setRestitution", 2);
}

// END
