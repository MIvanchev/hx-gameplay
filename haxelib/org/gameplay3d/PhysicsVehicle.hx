package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
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

    static var hx_PhysicsVehicle_addWheel:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_addWheel", 2);
    static var hx_PhysicsVehicle_getBoostGain:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getBoostGain", 1);
    static var hx_PhysicsVehicle_getBoostSpeed:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getBoostSpeed", 1);
    static var hx_PhysicsVehicle_getBrakedownFull:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getBrakedownFull", 1);
    static var hx_PhysicsVehicle_getBrakedownStart:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getBrakedownStart", 1);
    static var hx_PhysicsVehicle_getBrakingForce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getBrakingForce", 1);
    static var hx_PhysicsVehicle_getDownForce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getDownForce", 1);
    static var hx_PhysicsVehicle_getDrivedownFull:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getDrivedownFull", 1);
    static var hx_PhysicsVehicle_getDrivedownStart:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getDrivedownStart", 1);
    static var hx_PhysicsVehicle_getDrivingForce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getDrivingForce", 1);
    static var hx_PhysicsVehicle_getNumWheels:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getNumWheels", 1);
    static var hx_PhysicsVehicle_getRigidBody:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getRigidBody", 1);
    static var hx_PhysicsVehicle_getSpeedKph:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getSpeedKph", 1);
    static var hx_PhysicsVehicle_getSpeedSmoothKph:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getSpeedSmoothKph", 1);
    static var hx_PhysicsVehicle_getSteerdownGain:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getSteerdownGain", 1);
    static var hx_PhysicsVehicle_getSteerdownSpeed:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getSteerdownSpeed", 1);
    static var hx_PhysicsVehicle_getSteeringGain:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getSteeringGain", 1);
    static var hx_PhysicsVehicle_getType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getType", 1);
    static var hx_PhysicsVehicle_getWheel:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_getWheel", 2);
    static var hx_PhysicsVehicle_reset:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_reset", 1);
    static var hx_PhysicsVehicle_setBoost:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setBoost", 3);
    static var hx_PhysicsVehicle_setBrakedown:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setBrakedown", 3);
    static var hx_PhysicsVehicle_setBrakingForce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setBrakingForce", 2);
    static var hx_PhysicsVehicle_setDownforce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setDownforce", 2);
    static var hx_PhysicsVehicle_setDrivedown:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setDrivedown", 3);
    static var hx_PhysicsVehicle_setDrivingForce:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setDrivingForce", 2);
    static var hx_PhysicsVehicle_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setEnabled", 2);
    static var hx_PhysicsVehicle_setSteerdown:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setSteerdown", 3);
    static var hx_PhysicsVehicle_setSteeringGain:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_setSteeringGain", 2);
    static var hx_PhysicsVehicle_update:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsVehicle_update", 5);
}

// END
