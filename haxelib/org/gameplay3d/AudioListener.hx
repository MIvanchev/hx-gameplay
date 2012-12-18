package org.gameplay3d;

import org.gameplay3d.impl.Transform_ListenerImpl;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AudioListener : public Transform::Listener
class AudioListener extends Transform_ListenerImpl
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Camera* getCamera() const;
    public function getCamera():Camera
    {
        return Camera.wrap(hx_AudioListener_getCamera(nativeObject));
    }

    // DECL: float getGain() const;
    public function getGain():Float
    {
        return hx_AudioListener_getGain(nativeObject);
    }

    // DECL: static AudioListener* getInstance();
    public static function getInstance():AudioListener
    {
        return AudioListener.wrap(hx_AudioListener_static_getInstance());
    }

    // DECL: const float* getOrientation() const;
    public function getOrientation():Float
    {
        return hx_AudioListener_getOrientation(nativeObject);
    }

    // DECL: const Vector3& getOrientationForward() const;
    public function getOrientationForward():Vector3
    {
        return Vector3.wrap(hx_AudioListener_getOrientationForward(nativeObject));
    }

    // DECL: const Vector3& getOrientationUp() const;
    public function getOrientationUp():Vector3
    {
        return Vector3.wrap(hx_AudioListener_getOrientationUp(nativeObject));
    }

    // DECL: const Vector3& getPosition() const;
    public function getPosition():Vector3
    {
        return Vector3.wrap(hx_AudioListener_getPosition(nativeObject));
    }

    // DECL: const Vector3& getVelocity() const;
    public function getVelocity():Vector3
    {
        return Vector3.wrap(hx_AudioListener_getVelocity(nativeObject));
    }

    // DECL: void setCamera(Camera* camera);
    public function setCamera(camera:Camera):Void
    {
        hx_AudioListener_setCamera(nativeObject, camera.native());
    }

    // DECL: void setGain(float gain);
    public function setGain(gain:Float):Void
    {
        hx_AudioListener_setGain(nativeObject, gain);
    }

    // DECL: void setOrientation(const Vector3& forward, const Vector3& up);
    public function setOrientation_V3X2(forward:Vector3, up:Vector3):Void
    {
        hx_AudioListener_setOrientation_V3X2(nativeObject, forward.native(), up.native());
    }

    // DECL: void setOrientation(float forwardX, float forwardY, float forwardZ, float upX, float upY, float upZ);
    public function setOrientation_FltX6(forwardX:Float, forwardY:Float, forwardZ:Float, upX:Float, upY:Float, upZ:Float):Void
    {
        hx_AudioListener_setOrientation_FltX6(nativeObject, forwardX, forwardY, forwardZ, upX, upY, upZ);
    }

    // DECL: void setPosition(const Vector3& position);
    public function setPosition_V3(position:Vector3):Void
    {
        hx_AudioListener_setPosition_V3(nativeObject, position.native());
    }

    // DECL: void setPosition(float x, float y, float z);
    public function setPosition_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_AudioListener_setPosition_FltX3(nativeObject, x, y, z);
    }

    // DECL: void setVelocity(const Vector3& velocity);
    public function setVelocity_V3(velocity:Vector3):Void
    {
        hx_AudioListener_setVelocity_V3(nativeObject, velocity.native());
    }

    // DECL: void setVelocity(float x, float y, float z);
    public function setVelocity_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_AudioListener_setVelocity_FltX3(nativeObject, x, y, z);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AudioListener_getCamera:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getCamera", 1);
    static var hx_AudioListener_getGain:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getGain", 1);
    static var hx_AudioListener_static_getInstance:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_static_getInstance", 0);
    static var hx_AudioListener_getOrientation:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getOrientation", 1);
    static var hx_AudioListener_getOrientationForward:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getOrientationForward", 1);
    static var hx_AudioListener_getOrientationUp:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getOrientationUp", 1);
    static var hx_AudioListener_getPosition:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getPosition", 1);
    static var hx_AudioListener_getVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_getVelocity", 1);
    static var hx_AudioListener_setCamera:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setCamera", 2);
    static var hx_AudioListener_setGain:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setGain", 2);
    static var hx_AudioListener_setOrientation_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setOrientation_V3X2", 3);
    static var hx_AudioListener_setOrientation_FltX6:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setOrientation_FltX6", -1);
    static var hx_AudioListener_setPosition_V3:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setPosition_V3", 2);
    static var hx_AudioListener_setPosition_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setPosition_FltX3", 4);
    static var hx_AudioListener_setVelocity_V3:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setVelocity_V3", 2);
    static var hx_AudioListener_setVelocity_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_AudioListener_setVelocity_FltX3", 4);
}

// END
