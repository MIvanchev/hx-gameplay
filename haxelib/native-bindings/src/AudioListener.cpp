#include "HaxeAPI.h"

// DECL: Camera* getCamera() const;
value hx_AudioListener_getCamera(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getCamera(), true);
}
DEFINE_PRIM(hx_AudioListener_getCamera, 1);

// DECL: float getGain() const;
value hx_AudioListener_getGain(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getGain());
}
DEFINE_PRIM(hx_AudioListener_getGain, 1);

// DECL: static AudioListener* getInstance();
value hx_AudioListener_static_getInstance()
{
    return ObjectToValue(AudioListener::getInstance(), false);
}
DEFINE_PRIM(hx_AudioListener_static_getInstance, 0);

// DECL: const float* getOrientation() const;
value hx_AudioListener_getOrientation(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    const float *orient = _thisObj->getOrientation();
    const value& result = alloc_array(6);
    val_array_set_i(result, 0, alloc_float(*orient++));
    val_array_set_i(result, 1, alloc_float(*orient++));
    val_array_set_i(result, 2, alloc_float(*orient++));
    val_array_set_i(result, 3, alloc_float(*orient++));
    val_array_set_i(result, 4, alloc_float(*orient++));
    val_array_set_i(result, 5, alloc_float(*orient));
    return result;
}
DEFINE_PRIM(hx_AudioListener_getOrientation, 1);

// DECL: const Vector3& getOrientationForward() const;
value hx_AudioListener_getOrientationForward(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getOrientationForward(), false);
}
DEFINE_PRIM(hx_AudioListener_getOrientationForward, 1);

// DECL: const Vector3& getOrientationUp() const;
value hx_AudioListener_getOrientationUp(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getOrientationUp(), false);
}
DEFINE_PRIM(hx_AudioListener_getOrientationUp, 1);

// DECL: const Vector3& getPosition() const;
value hx_AudioListener_getPosition(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getPosition(), false);
}
DEFINE_PRIM(hx_AudioListener_getPosition, 1);

// DECL: const Vector3& getVelocity() const;
value hx_AudioListener_getVelocity(value thisObj)
{
    AudioListener *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getVelocity(), false);
}
DEFINE_PRIM(hx_AudioListener_getVelocity, 1);

// DECL: void setCamera(Camera* camera);
void hx_AudioListener_setCamera(value thisObj, value camera)
{
    AudioListener *_thisObj;
    Camera *_camera;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(camera, _camera);
    _thisObj->setCamera(_camera);
}
DEFINE_PRIM(hx_AudioListener_setCamera, 2);

// DECL: void setGain(float gain);
void hx_AudioListener_setGain(value thisObj, value gain)
{
    AudioListener *_thisObj;
    float _gain = ValueToFloat(gain);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setGain(_gain);
}
DEFINE_PRIM(hx_AudioListener_setGain, 2);

// DECL: void setOrientation(const Vector3& forward, const Vector3& up);
void hx_AudioListener_setOrientation_V3X2(value thisObj, value forward, value up)
{
    AudioListener *_thisObj;
    Vector3 *_forward, *_up;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(forward, _forward);
    ValueToObject(up, _up);
    _thisObj->setOrientation(*_forward, *_up);
}
DEFINE_PRIM(hx_AudioListener_setOrientation_V3X2, 3);

// DECL: void setOrientation(float forwardX, float forwardY, float forwardZ, float upX, float upY, float upZ);
void hx_AudioListener_setOrientation_FltX6(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& forwardX = *args++;
    const value& forwardY = *args++;
    const value& forwardZ = *args++;
    const value& upX = *args++;
    const value& upY = *args++;
    const value& upZ = *args;

    AudioListener *_thisObj;
    float _forwardX = ValueToFloat(forwardX);
    float _forwardY = ValueToFloat(forwardY);
    float _forwardZ = ValueToFloat(forwardZ);
    float _upX = ValueToFloat(upX);
    float _upY = ValueToFloat(upY);
    float _upZ = ValueToFloat(upZ);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setOrientation(_forwardX, _forwardY, _forwardZ, _upX, _upY, _upZ);
}
DEFINE_PRIM_MULT(hx_AudioListener_setOrientation_FltX6);

// DECL: void setPosition(const Vector3& position);
void hx_AudioListener_setPosition_V3(value thisObj, value position)
{
    AudioListener *_thisObj;
    Vector3 *_position;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(position, _position);
    _thisObj->setPosition(*_position);
}
DEFINE_PRIM(hx_AudioListener_setPosition_V3, 2);

// DECL: void setPosition(float x, float y, float z);
void hx_AudioListener_setPosition_FltX3(value thisObj, value x, value y, value z)
{
    AudioListener *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setPosition(_x, _y, _z);
}
DEFINE_PRIM(hx_AudioListener_setPosition_FltX3, 4);

// DECL: void setVelocity(const Vector3& velocity);
void hx_AudioListener_setVelocity_V3(value thisObj, value velocity)
{
    AudioListener *_thisObj;
    Vector3 *_velocity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(velocity, _velocity);
    _thisObj->setVelocity(*_velocity);
}
DEFINE_PRIM(hx_AudioListener_setVelocity_V3, 2);

// DECL: void setVelocity(float x, float y, float z);
void hx_AudioListener_setVelocity_FltX3(value thisObj, value x, value y, value z)
{
    AudioListener *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setVelocity(_x, _y, _z);
}
DEFINE_PRIM(hx_AudioListener_setVelocity_FltX3, 4);

// END
//
