#include "HaxeAPI.h"

// DECL: static ParticleEmitter* create(Properties* properties);
value hx_ParticleEmitter_static_create_Prop(value properties)
{
    Properties *_properties;
    ValueToObject(properties, _properties);
    return ReferenceToValue(ParticleEmitter::create(_properties));
}
DEFINE_PRIM(hx_ParticleEmitter_static_create_Prop, 1);

// DECL: static ParticleEmitter* create(const char* texturePath, TextureBlending textureBlending,  unsigned int particleCountMax);
value hx_ParticleEmitter_static_create_Str_IntX2(value texturePath, value textureBlending, value particleCountMax)
{
    const char *_texturePath = ValueToString(texturePath);
    ParticleEmitter::TextureBlending _textureBlending;
    unsigned int _particleCountMax = ValueToUint(particleCountMax);
    ValueToEnum(textureBlending, _textureBlending);
    return ReferenceToValue(ParticleEmitter::create(_texturePath, _textureBlending, _particleCountMax));
}
DEFINE_PRIM(hx_ParticleEmitter_static_create_Str_IntX2, 3);

// DECL: static ParticleEmitter* create(const char* url);
value hx_ParticleEmitter_static_create_Str(value url)
{
    const char *_url = ValueToString(url);
    return ReferenceToValue(ParticleEmitter::create(_url));
}
DEFINE_PRIM(hx_ParticleEmitter_static_create_Str, 1);

// DECL: void draw();
void hx_ParticleEmitter_draw(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw();
}
DEFINE_PRIM(hx_ParticleEmitter_draw, 1);

// DECL: void emitOnce(unsigned int particleCount);
void hx_ParticleEmitter_emitOnce(value thisObj, value particleCount)
{
    ParticleEmitter *_thisObj;
    unsigned int _particleCount = ValueToUint(particleCount);
    ValueToObject(thisObj, _thisObj);
    _thisObj->emitOnce(_particleCount);
}
DEFINE_PRIM(hx_ParticleEmitter_emitOnce, 2);

// DECL: const Vector3& getAcceleration() const;
value hx_ParticleEmitter_getAcceleration(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getAcceleration(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getAcceleration, 1);

// DECL: const Vector3& getAccelerationVariance() const;
value hx_ParticleEmitter_getAccelerationVariance(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getAccelerationVariance(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getAccelerationVariance, 1);

// DECL: const Vector4& getColorEnd() const;
value hx_ParticleEmitter_getColorEnd(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getColorEnd(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getColorEnd, 1);

// DECL: const Vector4& getColorEndVariance() const;
value hx_ParticleEmitter_getColorEndVariance(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getColorEndVariance(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getColorEndVariance, 1);

// DECL: const Vector4& getColorStart() const;
value hx_ParticleEmitter_getColorStart(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getColorStart(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getColorStart, 1);

// DECL: const Vector4& getColorStartVariance() const;
value hx_ParticleEmitter_getColorStartVariance(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getColorStartVariance(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getColorStartVariance, 1);

// DECL: unsigned int getEmissionRate() const;
value hx_ParticleEmitter_getEmissionRate(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getEmissionRate());
}
DEFINE_PRIM(hx_ParticleEmitter_getEmissionRate, 1);

// DECL: long getEnergyMax() const;
value hx_ParticleEmitter_getEnergyMax(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getEnergyMax());
}
DEFINE_PRIM(hx_ParticleEmitter_getEnergyMax, 1);

// DECL: long getEnergyMin() const;
value hx_ParticleEmitter_getEnergyMin(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getEnergyMin());
}
DEFINE_PRIM(hx_ParticleEmitter_getEnergyMin, 1);

// DECL: Node* getNode() const;
value hx_ParticleEmitter_getNode(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_ParticleEmitter_getNode, 1);

// DECL: unsigned int getParticlesCount() const;
value hx_ParticleEmitter_getParticlesCount(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getParticlesCount());
}
DEFINE_PRIM(hx_ParticleEmitter_getParticlesCount, 1);

// DECL: const Vector3& getPosition() const;
value hx_ParticleEmitter_getPosition(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getPosition(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getPosition, 1);

// DECL: const Vector3& getPositionVariance() const;
value hx_ParticleEmitter_getPositionVariance(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getPositionVariance(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getPositionVariance, 1);

// DECL: const Vector3& getRotationAxis() const;
value hx_ParticleEmitter_getRotationAxis(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRotationAxis(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getRotationAxis, 1);

// DECL: const Vector3& getRotationAxisVariance() const;
value hx_ParticleEmitter_getRotationAxisVariance(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRotationAxisVariance(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getRotationAxisVariance, 1);

// DECL: float getRotationPerParticleSpeedMax() const;
value hx_ParticleEmitter_getRotationPerParticleSpeedMax(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRotationPerParticleSpeedMax());
}
DEFINE_PRIM(hx_ParticleEmitter_getRotationPerParticleSpeedMax, 1);

// DECL: float getRotationPerParticleSpeedMin() const;
value hx_ParticleEmitter_getRotationPerParticleSpeedMin(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRotationPerParticleSpeedMin());
}
DEFINE_PRIM(hx_ParticleEmitter_getRotationPerParticleSpeedMin, 1);

// DECL: float getRotationSpeedMax() const;
value hx_ParticleEmitter_getRotationSpeedMax(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRotationSpeedMax());
}
DEFINE_PRIM(hx_ParticleEmitter_getRotationSpeedMax, 1);

// DECL: float getRotationSpeedMin() const;
value hx_ParticleEmitter_getRotationSpeedMin(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getRotationSpeedMin());
}
DEFINE_PRIM(hx_ParticleEmitter_getRotationSpeedMin, 1);

// DECL: float getSizeEndMax() const;
value hx_ParticleEmitter_getSizeEndMax(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSizeEndMax());
}
DEFINE_PRIM(hx_ParticleEmitter_getSizeEndMax, 1);

// DECL: float getSizeEndMin() const;
value hx_ParticleEmitter_getSizeEndMin(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSizeEndMin());
}
DEFINE_PRIM(hx_ParticleEmitter_getSizeEndMin, 1);

// DECL: float getSizeStartMax() const;
value hx_ParticleEmitter_getSizeStartMax(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSizeStartMax());
}
DEFINE_PRIM(hx_ParticleEmitter_getSizeStartMax, 1);

// DECL: float getSizeStartMin() const;
value hx_ParticleEmitter_getSizeStartMin(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getSizeStartMin());
}
DEFINE_PRIM(hx_ParticleEmitter_getSizeStartMin, 1);

// DECL: long getSpriteFrameDuration() const;
value hx_ParticleEmitter_getSpriteFrameDuration(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getSpriteFrameDuration());
}
DEFINE_PRIM(hx_ParticleEmitter_getSpriteFrameDuration, 1);

// DECL: int getSpriteFrameRandomOffset() const;
value hx_ParticleEmitter_getSpriteFrameRandomOffset(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getSpriteFrameRandomOffset());
}
DEFINE_PRIM(hx_ParticleEmitter_getSpriteFrameRandomOffset, 1);

// DECL: static TextureBlending getTextureBlendingFromString(const char* src);
value hx_ParticleEmitter_static_getTextureBlendingFromString(value src)
{
    const char *_src = ValueToString(src);
    return EnumToValue(ParticleEmitter::getTextureBlendingFromString(_src));
}
DEFINE_PRIM(hx_ParticleEmitter_static_getTextureBlendingFromString, 1);

// DECL: const Vector3& getVelocity() const;
value hx_ParticleEmitter_getVelocity(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getVelocity(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getVelocity, 1);

// DECL: const Vector3& getVelocityVariance() const;
value hx_ParticleEmitter_getVelocityVariance(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getVelocityVariance(), false);
}
DEFINE_PRIM(hx_ParticleEmitter_getVelocityVariance, 1);

// DECL: bool isActive() const;
value hx_ParticleEmitter_isActive(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isActive());
}
DEFINE_PRIM(hx_ParticleEmitter_isActive, 1);

// DECL: bool isEllipsoid() const;
value hx_ParticleEmitter_isEllipsoid(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEllipsoid());
}
DEFINE_PRIM(hx_ParticleEmitter_isEllipsoid, 1);

// DECL: bool isSpriteAnimated() const;
value hx_ParticleEmitter_isSpriteAnimated(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isSpriteAnimated());
}
DEFINE_PRIM(hx_ParticleEmitter_isSpriteAnimated, 1);

// DECL: bool isSpriteLooped() const;
value hx_ParticleEmitter_isSpriteLooped(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isSpriteLooped());
}
DEFINE_PRIM(hx_ParticleEmitter_isSpriteLooped, 1);

// DECL: bool isStarted() const;
value hx_ParticleEmitter_isStarted(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isStarted());
}
DEFINE_PRIM(hx_ParticleEmitter_isStarted, 1);

// DECL: void setAcceleration(const Vector3& acceleration, const Vector3& accelerationVariance);
void hx_ParticleEmitter_setAcceleration(value thisObj, value acceleration, value accelerationVariance)
{
    ParticleEmitter *_thisObj;
    Vector3 *_acceleration, *_accelerationVariance;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(acceleration, _acceleration);
    ValueToObject(accelerationVariance, _accelerationVariance);
    _thisObj->setAcceleration(*_acceleration, *_accelerationVariance);
}
DEFINE_PRIM(hx_ParticleEmitter_setAcceleration, 3);

// DECL: void setColor(const Vector4& start, const Vector4& startVariance, const Vector4& end, const Vector4& endVariance);
void hx_ParticleEmitter_setColor(value thisObj, value start, value startVariance, value end, value endVariance)
{
    ParticleEmitter *_thisObj;
    Vector4 *_start, *_startVariance, *_end, *_endVariance;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(start, _start);
    ValueToObject(startVariance, _startVariance);
    ValueToObject(end, _end);
    ValueToObject(endVariance, _endVariance);
    _thisObj->setColor(*_start, *_startVariance, *_end, *_endVariance);
}
DEFINE_PRIM(hx_ParticleEmitter_setColor, 5);

// DECL: void setEllipsoid(bool ellipsoid);
void hx_ParticleEmitter_setEllipsoid(value thisObj, value ellipsoid)
{
    ParticleEmitter *_thisObj;
    bool _ellipsoid = val_get_bool(ellipsoid);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEllipsoid(_ellipsoid);
}
DEFINE_PRIM(hx_ParticleEmitter_setEllipsoid, 2);

// DECL: void setEmissionRate(unsigned int rate);
void hx_ParticleEmitter_setEmissionRate(value thisObj, value rate)
{
    ParticleEmitter *_thisObj;
    unsigned int _rate = ValueToUint(rate);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEmissionRate(_rate);
}
DEFINE_PRIM(hx_ParticleEmitter_setEmissionRate, 2);

// DECL: void setEnergy(long energyMin, long energyMax);
void hx_ParticleEmitter_setEnergy(value thisObj, value energyMin, value energyMax)
{
    ParticleEmitter *_thisObj;
    long _energyMin = ValueToLong(energyMin);
    long _energyMax = ValueToLong(energyMax);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnergy(_energyMin, _energyMax);
}
DEFINE_PRIM(hx_ParticleEmitter_setEnergy, 3);

// DECL: void setOrbit(bool orbitPosition, bool orbitVelocity, bool orbitAcceleration);
void hx_ParticleEmitter_setOrbit(value thisObj, value orbitPosition, value orbitVelocity, value orbitAcceleration)
{
    ParticleEmitter *_thisObj;
    bool _orbitPosition = val_get_bool(orbitPosition);
    bool _orbitVelocity = val_get_bool(orbitVelocity);
    bool _orbitAcceleration = val_get_bool(orbitAcceleration);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setOrbit(_orbitPosition, _orbitVelocity, _orbitAcceleration);
}
DEFINE_PRIM(hx_ParticleEmitter_setOrbit, 4);

// DECL: void setPosition(const Vector3& position, const Vector3& positionVariance);
void hx_ParticleEmitter_setPosition(value thisObj, value position, value positionVariance)
{
    ParticleEmitter *_thisObj;
    Vector3 *_position, *_positionVariance;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(position, _position);
    ValueToObject(positionVariance, _positionVariance);
    _thisObj->setPosition(*_position, *_positionVariance);
}
DEFINE_PRIM(hx_ParticleEmitter_setPosition, 3);

// DECL: void setRotation(float speedMin, float speedMax, const Vector3& axis, const Vector3& axisVariance);
void hx_ParticleEmitter_setRotation(value thisObj, value speedMin, value speedMax, value axis, value axisVariance)
{
    ParticleEmitter *_thisObj;
    float _speedMin = ValueToFloat(speedMin);
    float _speedMax = ValueToFloat(speedMax);
    Vector3 *_axis, *_axisVariance;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(axis, _axis);
    ValueToObject(axisVariance, _axisVariance);
    _thisObj->setRotation(_speedMin, _speedMax, *_axis, *_axisVariance);
}
DEFINE_PRIM(hx_ParticleEmitter_setRotation, 5);

// DECL: void setRotationPerParticle(float speedMin, float speedMax);
void hx_ParticleEmitter_setRotationPerParticle(value thisObj, value speedMin, value speedMax)
{
    ParticleEmitter *_thisObj;
    float _speedMin = ValueToFloat(speedMin);
    float _speedMax = ValueToFloat(speedMax);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRotationPerParticle(_speedMin, _speedMax);
}
DEFINE_PRIM(hx_ParticleEmitter_setRotationPerParticle, 3);

// DECL: void setSize(float startMin, float startMax, float endMin, float endMax);
void hx_ParticleEmitter_setSize(value thisObj, value startMin, value startMax, value endMin, value endMax)
{
    ParticleEmitter *_thisObj;
    float _startMin = ValueToFloat(startMin);
    float _startMax = ValueToFloat(startMax);
    float _endMin = ValueToFloat(endMin);
    float _endMax = ValueToFloat(endMax);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSize(_startMin, _startMax, _endMin, _endMax);
}
DEFINE_PRIM(hx_ParticleEmitter_setSize, 5);

// DECL: void setSpriteAnimated(bool animated);
void hx_ParticleEmitter_setSpriteAnimated(value thisObj, value animated)
{
    ParticleEmitter *_thisObj;
    bool _animated = val_get_bool(animated);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSpriteAnimated(_animated);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteAnimated, 2);

// DECL: void setSpriteFrameCoords(unsigned int frameCount, Rectangle* frameCoords);
void hx_ParticleEmitter_setSpriteFrameCoords_Int_ArrRct(value thisObj, value frameCount, value frameCoords)
{
    ParticleEmitter *_thisObj;
    unsigned int _frameCount = ValueToUint(frameCount);
    Rectangle *_frameCoords, *rect;
    ValueToObject(thisObj, _thisObj);

    _frameCoords = new Rectangle[_frameCount];
    for (int index = 0; index < _frameCount; index++)
    {
        ValueToObject(val_array_i(frameCoords, index), rect);
        _frameCoords[index].set(*rect);
    }

    _thisObj->setSpriteFrameCoords(_frameCount, _frameCoords);

    SAFE_DELETE_ARRAY(_frameCoords);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteFrameCoords_Int_ArrRct, 3);

// DECL: void setSpriteFrameCoords(unsigned int frameCount, int width, int height);
void hx_ParticleEmitter_setSpriteFrameCoords_IntX3(value thisObj, value frameCount, value width, value height)
{
    ParticleEmitter *_thisObj;
    unsigned int _frameCount = ValueToUint(frameCount);
    int _width = val_get_int(width);
    int _height = val_get_int(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSpriteFrameCoords(_frameCount, _width, _height);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteFrameCoords_IntX3, 4);

// DECL: void setSpriteFrameDuration(long duration);
void hx_ParticleEmitter_setSpriteFrameDuration(value thisObj, value duration)
{
    ParticleEmitter *_thisObj;
    long _duration = ValueToLong(duration);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSpriteFrameDuration(_duration);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteFrameDuration, 2);

// DECL: void setSpriteFrameRandomOffset(int maxOffset);
void hx_ParticleEmitter_setSpriteFrameRandomOffset(value thisObj, value maxOffset)
{
    ParticleEmitter *_thisObj;
    int _maxOffset = val_get_int(maxOffset);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSpriteFrameRandomOffset(_maxOffset);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteFrameRandomOffset, 2);

// DECL: void setSpriteLooped(bool looped);
void hx_ParticleEmitter_setSpriteLooped(value thisObj, value looped)
{
    ParticleEmitter *_thisObj;
    bool _looped = val_get_bool(looped);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSpriteLooped(_looped);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteLooped, 2);

// DECL: void setSpriteTexCoords(unsigned int frameCount, float* texCoords);
void hx_ParticleEmitter_setSpriteTexCoords(value thisObj, value frameCount, value texCoords)
{
    ParticleEmitter *_thisObj;
    unsigned int _frameCount = ValueToUint(frameCount);
    float *_texCoords;
    ValueToObject(thisObj, _thisObj);

    _texCoords = new float[_frameCount * 4];
    for (int index = 0; index < _frameCount * 4; index++)
        _texCoords[index] = ValueToFloat(val_array_i(texCoords, index));

    _thisObj->setSpriteTexCoords(_frameCount, _texCoords);

    SAFE_DELETE_ARRAY(_texCoords);
}
DEFINE_PRIM(hx_ParticleEmitter_setSpriteTexCoords, 3);

// DECL: void setTextureBlending(TextureBlending blending);
void hx_ParticleEmitter_setTextureBlending(value thisObj, value blending)
{
    ParticleEmitter *_thisObj;
    ParticleEmitter::TextureBlending _blending;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(blending, _blending);
    _thisObj->setTextureBlending(_blending);
}
DEFINE_PRIM(hx_ParticleEmitter_setTextureBlending, 2);

// DECL: void setVelocity(const Vector3& velocity, const Vector3& velocityVariance);
void hx_ParticleEmitter_setVelocity(value thisObj, value velocity, value velocityVariance)
{
    ParticleEmitter *_thisObj;
    Vector3 *_velocity, *_velocityVariance;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(velocity, _velocity);
    ValueToObject(velocityVariance, _velocityVariance);
    _thisObj->setVelocity(*_velocity, *_velocityVariance);
}
DEFINE_PRIM(hx_ParticleEmitter_setVelocity, 3);

// DECL: void start();
void hx_ParticleEmitter_start(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->start();
}
DEFINE_PRIM(hx_ParticleEmitter_start, 1);

// DECL: void stop();
void hx_ParticleEmitter_stop(value thisObj)
{
    ParticleEmitter *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->stop();
}
DEFINE_PRIM(hx_ParticleEmitter_stop, 1);

// DECL: void update(float elapsedTime);
void hx_ParticleEmitter_update(value thisObj, value elapsedTime)
{
    ParticleEmitter *_thisObj;
    float _elapsedTime = ValueToFloat(elapsedTime);
    ValueToObject(thisObj, _thisObj);
    _thisObj->update(_elapsedTime);
}
DEFINE_PRIM(hx_ParticleEmitter_update, 2);

// END
//
