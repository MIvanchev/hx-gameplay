package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsVehicle : public PhysicsCollisionObject
class PhysicsVehicle extends PhysicsCollisionObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void addWheel(PhysicsVehicleWheel* wheel);
    public function addWheel(wheel:PhysicsVehicleWheel):Void
    {
        hx_PhysicsVehicle_addWheel(nativeObject, wheel.native());
    }

    // DECL: float getBoostGain() const;
    public function getBoostGain():Float
    {
        return hx_PhysicsVehicle_getBoostGain(nativeObject);
    }

    // DECL: float getBoostSpeed() const;
    public function getBoostSpeed():Float
    {
        return hx_PhysicsVehicle_getBoostSpeed(nativeObject);
    }

    // DECL: float getBrakedownFull() const;
    public function getBrakedownFull():Float
    {
        return hx_PhysicsVehicle_getBrakedownFull(nativeObject);
    }

    // DECL: float getBrakedownStart() const;
    public function getBrakedownStart():Float
    {
        return hx_PhysicsVehicle_getBrakedownStart(nativeObject);
    }

    // DECL: float getBrakingForce() const;
    public function getBrakingForce():Float
    {
        return hx_PhysicsVehicle_getBrakingForce(nativeObject);
    }

    // DECL: float getDownforce() const;
    public function getDownForce():Float
    {
        return hx_PhysicsVehicle_getDownForce(nativeObject);
    }

    // DECL: float getDrivedownFull() const;
    public function getDrivedownFull():Float
    {
        return hx_PhysicsVehicle_getDrivedownFull(nativeObject);
    }

    // DECL: float getDrivedownStart() const;
    public function getDrivedownStart():Float
    {
        return hx_PhysicsVehicle_getDrivedownStart(nativeObject);
    }

    // DECL: float getDrivingForce() const;
    public function getDrivingForce():Float
    {
        return hx_PhysicsVehicle_getDrivingForce(nativeObject);
    }

    // DECL: unsigned int getNumWheels() const;
    public function getNumWheels():Int
    {
        return hx_PhysicsVehicle_getNumWheels(nativeObject);
    }

    // DECL: PhysicsRigidBody* getRigidBody() const;
    public function getRigidBody():PhysicsRigidBody
    {
        return PhysicsRigidBody.wrap(hx_PhysicsVehicle_getRigidBody(nativeObject));
    }

    // DECL: float getSpeedKph() const;
    public function getSpeedKph():Float
    {
        return hx_PhysicsVehicle_getSpeedKph(nativeObject);
    }

    // DECL: float getSpeedSmoothKph() const;
    public function getSpeedSmoothKph():Float
    {
        return hx_PhysicsVehicle_getSpeedSmoothKph(nativeObject);
    }

    // DECL: float getSteerdownGain() const;
    public function getSteerdownGain():Float
    {
        return hx_PhysicsVehicle_getSteerdownGain(nativeObject);
    }

    // DECL: float getSteerdownSpeed() const;
    public function getSteerdownSpeed():Float
    {
        return hx_PhysicsVehicle_getSteerdownSpeed(nativeObject);
    }

    // DECL: float getSteeringGain() const;
    public function getSteeringGain():Float
    {
        return hx_PhysicsVehicle_getSteeringGain(nativeObject);
    }

    // DECL: PhysicsCollisionObject::Type getType() const;
    override public function getType():Int
    {
        return hx_PhysicsVehicle_getType(nativeObject);
    }

    // DECL: PhysicsVehicleWheel* getWheel(unsigned int i);
    public function getWheel(i:Int):PhysicsVehicleWheel
    {
        return PhysicsVehicleWheel.wrap(hx_PhysicsVehicle_getWheel(nativeObject, i));
    }

    // DECL: void reset();
    public function reset():Void
    {
        hx_PhysicsVehicle_reset(nativeObject);
    }

    // DECL: void setBoost(float boostSpeed, float boostGain);
    public function setBoost(boostSpeed:Float, boostGain:Float):Void
    {
        hx_PhysicsVehicle_setBoost(nativeObject, boostSpeed, boostGain);
    }

    // DECL: void setBrakedown(float brakedownStart, float brakedownFull);
    public function setBrakedown(brakedownStart:Float, brakedownFull:Float):Void
    {
        hx_PhysicsVehicle_setBrakedown(nativeObject, brakedownStart, brakedownFull);
    }

    // DECL: void setBrakingForce(float brakingForce);
    public function setBrakingForce(brakingForce:Float):Void
    {
        hx_PhysicsVehicle_setBrakingForce(nativeObject, brakingForce);
    }

    // DECL: void setDownforce(float downforce);
    public function setDownforce(downforce:Float):Void
    {
        hx_PhysicsVehicle_setDownforce(nativeObject, downforce);
    }

    // DECL: void setDrivedown(float drivedownStart, float drivedownFull);
    public function setDrivedown(drivedownStart:Float, drivedownFull:Float):Void
    {
        hx_PhysicsVehicle_setDrivedown(nativeObject, drivedownStart, drivedownFull);
    }

    // DECL: void setDrivingForce(float drivingForce);
    public function setDrivingForce(drivingForce:Float):Void
    {
        hx_PhysicsVehicle_setDrivingForce(nativeObject, drivingForce);
    }

    // DECL: void setEnabled(bool enable);
    override public function setEnabled(enable:Bool):Void
    {
        hx_PhysicsVehicle_setEnabled(nativeObject, enable);
    }

    // DECL: void setSteerdown(float steerdownSpeed, float steerdownGain);
    public function setSteerdown(steerdownSpeed:Float, steerdownGain:Float):Void
    {
        hx_PhysicsVehicle_setSteerdown(nativeObject, steerdownSpeed, steerdownGain);
    }

    // DECL: void setSteeringGain(float steeringGain);
    public function setSteeringGain(steeringGain:Float):Void
    {
        hx_PhysicsVehicle_setSteeringGain(nativeObject, steeringGain);
    }

    // DECL: void update(float elapsedTime, float steering, float braking, float driving);
    public function update(elapsedTime:Float, steering:Float, braking:Float, driving:Float):Void
    {
        hx_PhysicsVehicle_update(nativeObject, elapsedTime, steering, braking, driving);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsVehicle_addWheel = NativeInterface.loadMember(PhysicsVehicle, "addWheel", 2);
    static var hx_PhysicsVehicle_getBoostGain = NativeInterface.loadMember(PhysicsVehicle, "getBoostGain", 1);
    static var hx_PhysicsVehicle_getBoostSpeed = NativeInterface.loadMember(PhysicsVehicle, "getBoostSpeed", 1);
    static var hx_PhysicsVehicle_getBrakedownFull = NativeInterface.loadMember(PhysicsVehicle, "getBrakedownFull", 1);
    static var hx_PhysicsVehicle_getBrakedownStart = NativeInterface.loadMember(PhysicsVehicle, "getBrakedownStart", 1);
    static var hx_PhysicsVehicle_getBrakingForce = NativeInterface.loadMember(PhysicsVehicle, "getBrakingForce", 1);
    static var hx_PhysicsVehicle_getDownForce = NativeInterface.loadMember(PhysicsVehicle, "getDownForce", 1);
    static var hx_PhysicsVehicle_getDrivedownFull = NativeInterface.loadMember(PhysicsVehicle, "getDrivedownFull", 1);
    static var hx_PhysicsVehicle_getDrivedownStart = NativeInterface.loadMember(PhysicsVehicle, "getDrivedownStart", 1);
    static var hx_PhysicsVehicle_getDrivingForce = NativeInterface.loadMember(PhysicsVehicle, "getDrivingForce", 1);
    static var hx_PhysicsVehicle_getNumWheels = NativeInterface.loadMember(PhysicsVehicle, "getNumWheels", 1);
    static var hx_PhysicsVehicle_getRigidBody = NativeInterface.loadMember(PhysicsVehicle, "getRigidBody", 1);
    static var hx_PhysicsVehicle_getSpeedKph = NativeInterface.loadMember(PhysicsVehicle, "getSpeedKph", 1);
    static var hx_PhysicsVehicle_getSpeedSmoothKph = NativeInterface.loadMember(PhysicsVehicle, "getSpeedSmoothKph", 1);
    static var hx_PhysicsVehicle_getSteerdownGain = NativeInterface.loadMember(PhysicsVehicle, "getSteerdownGain", 1);
    static var hx_PhysicsVehicle_getSteerdownSpeed = NativeInterface.loadMember(PhysicsVehicle, "getSteerdownSpeed", 1);
    static var hx_PhysicsVehicle_getSteeringGain = NativeInterface.loadMember(PhysicsVehicle, "getSteeringGain", 1);
    static var hx_PhysicsVehicle_getType = NativeInterface.loadMember(PhysicsVehicle, "getType", 1);
    static var hx_PhysicsVehicle_getWheel = NativeInterface.loadMember(PhysicsVehicle, "getWheel", 2);
    static var hx_PhysicsVehicle_reset = NativeInterface.loadMember(PhysicsVehicle, "reset", 1);
    static var hx_PhysicsVehicle_setBoost = NativeInterface.loadMember(PhysicsVehicle, "setBoost", 3);
    static var hx_PhysicsVehicle_setBrakedown = NativeInterface.loadMember(PhysicsVehicle, "setBrakedown", 3);
    static var hx_PhysicsVehicle_setBrakingForce = NativeInterface.loadMember(PhysicsVehicle, "setBrakingForce", 2);
    static var hx_PhysicsVehicle_setDownforce = NativeInterface.loadMember(PhysicsVehicle, "setDownforce", 2);
    static var hx_PhysicsVehicle_setDrivedown = NativeInterface.loadMember(PhysicsVehicle, "setDrivedown", 3);
    static var hx_PhysicsVehicle_setDrivingForce = NativeInterface.loadMember(PhysicsVehicle, "setDrivingForce", 2);
    static var hx_PhysicsVehicle_setEnabled = NativeInterface.loadMember(PhysicsVehicle, "setEnabled", 2);
    static var hx_PhysicsVehicle_setSteerdown = NativeInterface.loadMember(PhysicsVehicle, "setSteerdown", 3);
    static var hx_PhysicsVehicle_setSteeringGain = NativeInterface.loadMember(PhysicsVehicle, "setSteeringGain", 2);
    static var hx_PhysicsVehicle_update = NativeInterface.loadMember(PhysicsVehicle, "update", 5);
}

// END
