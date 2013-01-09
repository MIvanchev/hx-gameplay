package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.NativeOutParameter;
import org.gameplay3d.util.OutParameter;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsVehicleWheel : public PhysicsCollisionObject
class PhysicsVehicleWheel extends PhysicsCollisionObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float getFrictionBreakout() const;
    public function getFrictionBreakout():Float
    {
        return hx_PhysicsVehicleWheel_getFrictionBreakout(nativeObject);
    }

    // DECL: float getRollInfluence() const;
    public function getRollInfluence():Float
    {
        return hx_PhysicsVehicleWheel_getRollInfluence(nativeObject);
    }

    // DECL: void getStrutConnectionOffset(Vector3* strutConnectionOffset) const;
    public function getStrutConnectionOffset(strutConnectionOffset:Vector3):Void
    {
        hx_PhysicsVehicleWheel_getStrutConnectionOffset(nativeObject, strutConnectionOffset.native());
    }

    // DECL: float getStrutDampingCompression() const;
    public function getStrutDampingCompression():Float
    {
        return hx_PhysicsVehicleWheel_getStrutDampingCompression(nativeObject);
    }

    // DECL: float getStrutDampingRelaxation() const;
    public function getStrutDampingRelaxation():Float
    {
        return hx_PhysicsVehicleWheel_getStrutDampingRelaxation(nativeObject);
    }

    // DECL: float getStrutForceMax() const;
    public function getStrutForceMax():Float
    {
        return hx_PhysicsVehicleWheel_getStrutForceMax(nativeObject);
    }

    // DECL: float getStrutRestLength() const;
    public function getStrutRestLength():Float
    {
        return hx_PhysicsVehicleWheel_getStrutRestLength(nativeObject);
    }

    // DECL: float getStrutStiffness() const;
    public function getStrutStiffness():Float
    {
        return hx_PhysicsVehicleWheel_getStrutStiffness(nativeObject);
    }

    // DECL: float getStrutTravelMax() const;
    public function getStrutTravelMax():Float
    {
        return hx_PhysicsVehicleWheel_getStrutTravelMax(nativeObject);
    }

    // DECL: PhysicsCollisionObject::Type getType() const;
    override public function getType():Int
    {
        return hx_PhysicsVehicleWheel_getType(nativeObject);
    }

    // DECL: void getWheelAxle(Vector3* wheelAxle) const;
    public function getWheelAxle(wheelAxle:Vector3):Void
    {
        hx_PhysicsVehicleWheel_getWheelAxle(nativeObject, wheelAxle.native());
    }

    // DECL: void getWheelDirection(Vector3* wheelDirection) const;
    public function getWheelDirection(wheelDirection:Vector3):Void
    {
        hx_PhysicsVehicleWheel_getWheelDirection(nativeObject, wheelDirection.native());
    }

    // DECL: float getWheelRadius() const;
    public function getWheelRadius():Float
    {
        return hx_PhysicsVehicleWheel_getWheelRadius(nativeObject);
    }

    // DECL: bool isSteerable() const;
    public function isSteerable():Bool
    {
        return hx_PhysicsVehicleWheel_isSteerable(nativeObject);
    }

    // DECL: void setEnabled(bool enable);
    override public function setEnabled(enable:Bool):Void
    {
        hx_PhysicsVehicleWheel_setEnabled(nativeObject, enable);
    }

    // DECL: void setFrictionBreakout(float frictionBreakout);
    public function setFrictionBreakout(frictionBreakout:Float):Void
    {
        hx_PhysicsVehicleWheel_setFrictionBreakout(nativeObject, frictionBreakout);
    }

    // DECL: void setRollInfluence(float rollInfluence);
    public function setRollInfluence(rollInfluence:Float):Void
    {
        hx_PhysicsVehicleWheel_setRollInfluence(nativeObject, rollInfluence);
    }

    // DECL: void setSteerable(bool steerable);
    public function setSteerable(steerable:Bool):Void
    {
        hx_PhysicsVehicleWheel_setSteerable(nativeObject, steerable);
    }

    // DECL: void setStrutConnectionOffset(const Vector3& strutConnectionOffset);
    public function setStrutConnectionOffset(strutConnectionOffset:IVector3):Void
    {
        hx_PhysicsVehicleWheel_setStrutConnectionOffset(nativeObject, strutConnectionOffset.native());
    }

    // DECL: void setStrutDampingCompression(float strutDampingCompression);
    public function setStrutDampingCompression(strutDampingCompression:Float):Void
    {
        hx_PhysicsVehicleWheel_setStrutDampingCompression(nativeObject, strutDampingCompression);
    }

    // DECL: void setStrutDampingRelaxation(float strutDampingRelaxation);
    public function setStrutDampingRelaxation(strutDampingRelaxation:Float):Void
    {
        hx_PhysicsVehicleWheel_setStrutDampingRelaxation(nativeObject, strutDampingRelaxation);
    }

    // DECL: void setStrutForceMax(float strutForceMax);
    public function setStrutForceMax(strutForceMax:Float):Void
    {
        hx_PhysicsVehicleWheel_setStrutForceMax(nativeObject, strutForceMax);
    }

    // DECL: void setStrutRestLength(float strutRestLength);
    public function setStrutRestLength(strutRestLength:Float):Void
    {
        hx_PhysicsVehicleWheel_setStrutRestLength(nativeObject, strutRestLength);
    }

    // DECL: void setStrutStiffness(float strutStiffness);
    public function setStrutStiffness(strutStiffness:Float):Void
    {
        hx_PhysicsVehicleWheel_setStrutStiffness(nativeObject, strutStiffness);
    }

    // DECL: void setStrutTravelMax(float strutTravelMax);
    public function setStrutTravelMax(strutTravelMax:Float):Void
    {
        hx_PhysicsVehicleWheel_setStrutTravelMax(nativeObject, strutTravelMax);
    }

    // DECL: void setWheelAxle(const Vector3& wheelAxle);
    public function setWheelAxle(wheelAxle:IVector3):Void
    {
        hx_PhysicsVehicleWheel_setWheelAxle(nativeObject, wheelAxle.native());
    }

    // DECL: void setWheelDirection(const Vector3& wheelDirection);
    public function setWheelDirection(wheelDirection:IVector3):Void
    {
        hx_PhysicsVehicleWheel_setWheelDirection(nativeObject, wheelDirection.native());
    }

    // DECL: void setWheelRadius(float wheelRadius);
    public function setWheelRadius(wheelRadius:Float):Void
    {
        hx_PhysicsVehicleWheel_setWheelRadius(nativeObject, wheelRadius);
    }

    // DECL: void transform(Node* node) const;
    public function transform(node:Node):Void
    {
        hx_PhysicsVehicleWheel_transform(nativeObject, node.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsVehicleWheel_getFrictionBreakout:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getFrictionBreakout", 1);
    static var hx_PhysicsVehicleWheel_getRollInfluence:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getRollInfluence", 1);
    static var hx_PhysicsVehicleWheel_getStrutConnectionOffset:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutConnectionOffset", 2);
    static var hx_PhysicsVehicleWheel_getStrutDampingCompression:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutDampingCompression", 1);
    static var hx_PhysicsVehicleWheel_getStrutDampingRelaxation:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutDampingRelaxation", 1);
    static var hx_PhysicsVehicleWheel_getStrutForceMax:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutForceMax", 1);
    static var hx_PhysicsVehicleWheel_getStrutRestLength:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutRestLength", 1);
    static var hx_PhysicsVehicleWheel_getStrutStiffness:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutStiffness", 1);
    static var hx_PhysicsVehicleWheel_getStrutTravelMax:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getStrutTravelMax", 1);
    static var hx_PhysicsVehicleWheel_getType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getType", 1);
    static var hx_PhysicsVehicleWheel_getWheelAxle:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getWheelAxle", 2);
    static var hx_PhysicsVehicleWheel_getWheelDirection:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getWheelDirection", 2);
    static var hx_PhysicsVehicleWheel_getWheelRadius:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_getWheelRadius", 1);
    static var hx_PhysicsVehicleWheel_isSteerable:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_isSteerable", 1);
    static var hx_PhysicsVehicleWheel_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setEnabled", 2);
    static var hx_PhysicsVehicleWheel_setFrictionBreakout:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setFrictionBreakout", 2);
    static var hx_PhysicsVehicleWheel_setRollInfluence:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setRollInfluence", 2);
    static var hx_PhysicsVehicleWheel_setSteerable:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setSteerable", 2);
    static var hx_PhysicsVehicleWheel_setStrutConnectionOffset:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutConnectionOffset", 2);
    static var hx_PhysicsVehicleWheel_setStrutDampingCompression:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutDampingCompression", 2);
    static var hx_PhysicsVehicleWheel_setStrutDampingRelaxation:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutDampingRelaxation", 2);
    static var hx_PhysicsVehicleWheel_setStrutForceMax:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutForceMax", 2);
    static var hx_PhysicsVehicleWheel_setStrutRestLength:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutRestLength", 2);
    static var hx_PhysicsVehicleWheel_setStrutStiffness:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutStiffness", 2);
    static var hx_PhysicsVehicleWheel_setStrutTravelMax:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setStrutTravelMax", 2);
    static var hx_PhysicsVehicleWheel_setWheelAxle:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setWheelAxle", 2);
    static var hx_PhysicsVehicleWheel_setWheelDirection:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setWheelDirection", 2);
    static var hx_PhysicsVehicleWheel_setWheelRadius:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_setWheelRadius", 2);
    static var hx_PhysicsVehicleWheel_transform:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicleWheel_transform", 2);
}

// END
