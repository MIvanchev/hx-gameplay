package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.shared.SharedQuaternion;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsConstraint
class PhysicsConstraint extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _rotationOffset:Quaternion;

    // DECL: static Vector3 centerOfMassMidpoint(const Node* a, const Node* b);
    public static function centerOfMassMidpoint(a:Node, b:Node):Vector3
    {
        return Vector3.wrap(hx_PhysicsConstraint_static_centerOfMassMidpoint(a.native(), b.native()));
    }

    // DECL: inline float getBreakingImpulse() const;
    public function getBreakingImpulse():Float
    {
        return hx_PhysicsConstraint_getBreakingImpulse(nativeObject);
    }

    // DECL: static Quaternion getRotationOffset(const Node* node, const Vector3& point);
    public static function getRotationOffset(node:Node, point:IVector3):SharedQuaternion
    {
        return Macros.impersonateResult(_rotationOffset, hx_PhysicsConstraint_static_getRotationOffset(node.native(), point.native()));
    }

    // DECL: static Vector3 getTranslationOffset(const Node* node, const Vector3& point);
    public static function getTranslationOffset(node:Node, point:IVector3):Vector3
    {
        return Vector3.wrap(hx_PhysicsConstraint_static_getTranslationOffset(node.native(), point.native()));
    }

    // DECL: inline bool isEnabled() const;
    public function isEnabled():Bool
    {
        return hx_PhysicsConstraint_isEnabled(nativeObject);
    }

    // DECL: inline void setBreakingImpulse(float impulse);
    public function setBreakingImpulse(impulse:Float):Void
    {
        hx_PhysicsConstraint_setBreakingImpulse(nativeObject, impulse);
    }

    // DECL: inline void setEnabled(bool enabled);
    public function setEnabled(enabled:Bool):Void
    {
        hx_PhysicsConstraint_setEnabled(nativeObject, enabled);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsConstraint_static_centerOfMassMidpoint:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_static_centerOfMassMidpoint", 2);
    static var hx_PhysicsConstraint_getBreakingImpulse:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_getBreakingImpulse", 1);
    static var hx_PhysicsConstraint_static_getRotationOffset:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_static_getRotationOffset", 2);
    static var hx_PhysicsConstraint_static_getTranslationOffset:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_static_getTranslationOffset", 2);
    static var hx_PhysicsConstraint_isEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_isEnabled", 1);
    static var hx_PhysicsConstraint_setBreakingImpulse:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_setBreakingImpulse", 2);
    static var hx_PhysicsConstraint_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsConstraint_setEnabled", 2);
}

// END
