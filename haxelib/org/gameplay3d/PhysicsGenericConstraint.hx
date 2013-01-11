package org.gameplay3d;

import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;

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

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        if (this.nativeObject == null)
        {
            _translationOffsetA = Vector3.make();
            _translationOffsetB = Vector3.make();
            _rotationOffsetA = Quaternion.make();
            _rotationOffsetB = Quaternion.make();
        }
        return super.impersonate(nativeObject);
    }

    // DECL: inline const Quaternion& getRotationOffsetA() const;
    public function getRotationOffsetA():IQuaternion
    {
        return _rotationOffsetA.impersonate(hx_PhysicsGenericConstraint_getRotationOffsetA(nativeObject));
    }

    // DECL: inline const Quaternion& getRotationOffsetB() const;
    public function getRotationOffsetB():IQuaternion
    {
        return _rotationOffsetB.impersonate(hx_PhysicsGenericConstraint_getRotationOffsetB(nativeObject));
    }

    // DECL: inline const Vector3& getTranslationOffsetA() const;
    public function getTranslationOffsetA():IVector3
    {
        return _translationOffsetA.impersonate(hx_PhysicsGenericConstraint_getTranslationOffsetA(nativeObject));
    }

    // DECL: inline const Vector3& getTranslationOffsetB() const;
    public function getTranslationOffsetB():IVector3
    {
        return _translationOffsetB.impersonate(hx_PhysicsGenericConstraint_getTranslationOffsetB(nativeObject));
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

    static var hx_PhysicsGenericConstraint_getRotationOffsetA:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getRotationOffsetA", 1);
    static var hx_PhysicsGenericConstraint_getRotationOffsetB:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getRotationOffsetB", 1);
    static var hx_PhysicsGenericConstraint_getTranslationOffsetA:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getTranslationOffsetA", 1);
    static var hx_PhysicsGenericConstraint_getTranslationOffsetB:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_getTranslationOffsetB", 1);
    static var hx_PhysicsGenericConstraint_setAngularLowerLimit:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setAngularLowerLimit", 2);
    static var hx_PhysicsGenericConstraint_setAngularUpperLimit:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setAngularUpperLimit", 2);
    static var hx_PhysicsGenericConstraint_setLinearLowerLimit:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setLinearLowerLimit", 2);
    static var hx_PhysicsGenericConstraint_setLinearUpperLimit:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setLinearUpperLimit", 2);
    static var hx_PhysicsGenericConstraint_setRotationOffsetA:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setRotationOffsetA", 2);
    static var hx_PhysicsGenericConstraint_setRotationOffsetB:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setRotationOffsetB", 2);
    static var hx_PhysicsGenericConstraint_setTranslationOffsetA:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setTranslationOffsetA", 2);
    static var hx_PhysicsGenericConstraint_setTranslationOffsetB:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGenericConstraint_setTranslationOffsetB", 2);
}

// END
