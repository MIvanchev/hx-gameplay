package org.gameplay3d;

import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsGenericConstraint : public PhysicsConstraint
class PhysicsGenericConstraint extends PhysicsConstraint
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _translationOffsetA:Vector3;
    var _translationOffsetB:Vector3;
    var _rotationOffsetA:Quaternion;
    var _rotationOffsetB:Quaternion;

    // DECL: inline const Quaternion& getRotationOffsetA() const;
    public function getRotationOffsetA():IQuaternion
    {
        return Macros.impersonateResult(_rotationOffsetA, hx_PhysicsGenericConstraint_getRotationOffsetA(nativeObject));
    }

    // DECL: inline const Quaternion& getRotationOffsetB() const;
    public function getRotationOffsetB():IQuaternion
    {
        return Macros.impersonateResult(_rotationOffsetB, hx_PhysicsGenericConstraint_getRotationOffsetB(nativeObject));
    }

    // DECL: inline const Vector3& getTranslationOffsetA() const;
    public function getTranslationOffsetA():IVector3
    {
        return Macros.impersonateResult(_translationOffsetA, hx_PhysicsGenericConstraint_getTranslationOffsetA(nativeObject));
    }

    // DECL: inline const Vector3& getTranslationOffsetB() const;
    public function getTranslationOffsetB():IVector3
    {
        return Macros.impersonateResult(_translationOffsetB, hx_PhysicsGenericConstraint_getTranslationOffsetB(nativeObject));
    }

    // DECL: inline void setAngularLowerLimit(const Vector3& limits);
    public function setAngularLowerLimit(limits:IVector3):Void
    {
        hx_PhysicsGenericConstraint_setAngularLowerLimit(nativeObject, limits.native());
    }

    // DECL: inline void setAngularUpperLimit(const Vector3& limits);
    public function setAngularUpperLimit(limits:IVector3):Void
    {
        hx_PhysicsGenericConstraint_setAngularUpperLimit(nativeObject, limits.native());
    }

    // DECL: inline void setLinearLowerLimit(const Vector3& limits);
    public function setLinearLowerLimit(limits:IVector3):Void
    {
        hx_PhysicsGenericConstraint_setLinearLowerLimit(nativeObject, limits.native());
    }

    // DECL: inline void setLinearUpperLimit(const Vector3& limits);
    public function setLinearUpperLimit(limits:IVector3):Void
    {
        hx_PhysicsGenericConstraint_setLinearUpperLimit(nativeObject, limits.native());
    }

    // DECL: inline void setRotationOffsetA(const Quaternion& rotationOffset);
    public function setRotationOffsetA(rotationOffset:IQuaternion):Void
    {
        hx_PhysicsGenericConstraint_setRotationOffsetA(nativeObject, rotationOffset.native());
    }

    // DECL: inline void setRotationOffsetB(const Quaternion& rotationOffset);
    public function setRotationOffsetB(rotationOffset:IQuaternion):Void
    {
        hx_PhysicsGenericConstraint_setRotationOffsetB(nativeObject, rotationOffset.native());
    }

    // DECL: inline void setTranslationOffsetA(const Vector3& translationOffset);
    public function setTranslationOffsetA(translationOffset:IVector3):Void
    {
        hx_PhysicsGenericConstraint_setTranslationOffsetA(nativeObject, translationOffset.native());
    }

    // DECL: inline void setTranslationOffsetB(const Vector3& translationOffset);
    public function setTranslationOffsetB(translationOffset:IVector3):Void
    {
        hx_PhysicsGenericConstraint_setTranslationOffsetB(nativeObject, translationOffset.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsGenericConstraint_getRotationOffsetA = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getRotationOffsetA", 1);
    static var hx_PhysicsGenericConstraint_getRotationOffsetB = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getRotationOffsetB", 1);
    static var hx_PhysicsGenericConstraint_getTranslationOffsetA = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getTranslationOffsetA", 1);
    static var hx_PhysicsGenericConstraint_getTranslationOffsetB = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getTranslationOffsetB", 1);
    static var hx_PhysicsGenericConstraint_setAngularLowerLimit = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setAngularLowerLimit", 2);
    static var hx_PhysicsGenericConstraint_setAngularUpperLimit = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setAngularUpperLimit", 2);
    static var hx_PhysicsGenericConstraint_setLinearLowerLimit = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setLinearLowerLimit", 2);
    static var hx_PhysicsGenericConstraint_setLinearUpperLimit = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setLinearUpperLimit", 2);
    static var hx_PhysicsGenericConstraint_setRotationOffsetA = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setRotationOffsetA", 2);
    static var hx_PhysicsGenericConstraint_setRotationOffsetB = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setRotationOffsetB", 2);
    static var hx_PhysicsGenericConstraint_setTranslationOffsetA = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setTranslationOffsetA", 2);
    static var hx_PhysicsGenericConstraint_setTranslationOffsetB = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setTranslationOffsetB", 2);
}

// END
