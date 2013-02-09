#include "HaxeAPI.h"

// DECL: static AudioSource* create(Properties* properties);
value hx_AudioSource_static_create_Prop(value properties)
{
    Properties *_properties;
    ValueToObject(properties, _properties);
    return ReferenceToValue(AudioSource::create(_properties));
}
DEFINE_PRIM(hx_AudioSource_static_create_Prop, 1);

// DECL: static AudioSource* create(const char* url);
value hx_AudioSource_static_create_Str(value url)
{
    const char *_url = ValueToString(url);
    return ReferenceToValue(AudioSource::create(_url));
}
DEFINE_PRIM(hx_AudioSource_static_create_Str, 1);

// DECL: float getGain() const;
value hx_AudioSource_getGain(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getGain());
}
DEFINE_PRIM(hx_AudioSource_getGain, 1);

// DECL: Node* getNode() const;
value hx_AudioSource_getNode(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_AudioSource_getNode, 1);

// DECL: float getPitch() const;
value hx_AudioSource_getPitch(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getPitch());
}
DEFINE_PRIM(hx_AudioSource_getPitch, 1);

// DECL: AudioSource::State getState() const;
value hx_AudioSource_getState(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getState());
}
DEFINE_PRIM(hx_AudioSource_getState, 1);

// DECL: const Vector3& getVelocity() const;
value hx_AudioSource_getVelocity(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getVelocity(), false);
}
DEFINE_PRIM(hx_AudioSource_getVelocity, 1);

// DECL: bool isLooped() const;
value hx_AudioSource_isLooped(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isLooped());
}
DEFINE_PRIM(hx_AudioSource_isLooped, 1);

// DECL: void pause();
void hx_AudioSource_pause(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->pause();
}
DEFINE_PRIM(hx_AudioSource_pause, 1);

// DECL: void play();
void hx_AudioSource_play(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->play();
}
DEFINE_PRIM(hx_AudioSource_play, 1);

// DECL: void resume();
void hx_AudioSource_resume(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->resume();
}
DEFINE_PRIM(hx_AudioSource_resume, 1);

// DECL: void rewind();
void hx_AudioSource_rewind(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->rewind();
}
DEFINE_PRIM(hx_AudioSource_rewind, 1);

// DECL: void setGain(float gain);
void hx_AudioSource_setGain(value thisObj, value gain)
{
    AudioSource *_thisObj;
    float _gain = ValueToFloat(gain);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setGain(_gain);
}
DEFINE_PRIM(hx_AudioSource_setGain, 2);

// DECL: void setLooped(bool looped);
void hx_AudioSource_setLooped(value thisObj, value looped)
{
    AudioSource *_thisObj;
    bool _looped = val_get_bool(looped);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setLooped(_looped);
}
DEFINE_PRIM(hx_AudioSource_setLooped, 2);

// DECL: void setPitch(float pitch);
void hx_AudioSource_setPitch(value thisObj, value pitch)
{
    AudioSource *_thisObj;
    float _pitch = ValueToFloat(pitch);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setPitch(_pitch);
}
DEFINE_PRIM(hx_AudioSource_setPitch, 2);

// DECL: void setVelocity(const Vector3& velocity);
void hx_AudioSource_setVelocity_V3(value thisObj, value velocity)
{
    AudioSource *_thisObj;
    Vector3 *_velocity;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(velocity, _velocity);
    _thisObj->setVelocity(*_velocity);
}
DEFINE_PRIM(hx_AudioSource_setVelocity_V3, 2);

// DECL: void setVelocity(float x, float y, float z);
void hx_AudioSource_setVelocity_FltX3(value thisObj, value x, value y, value z)
{
    AudioSource *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setVelocity(_x, _y, _z);
}
DEFINE_PRIM(hx_AudioSource_setVelocity_FltX3, 4);

// DECL: void stop();
void hx_AudioSource_stop(value thisObj)
{
    AudioSource *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->stop();
}
DEFINE_PRIM(hx_AudioSource_stop, 1);

// END
//
