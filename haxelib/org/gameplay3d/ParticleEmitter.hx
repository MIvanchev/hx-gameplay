package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.ConversionTools;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class ParticleEmitter : public Ref
class ParticleEmitter extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static ParticleEmitter* create(Properties* properties);
    public static function create_Prop(properties:Properties):ParticleEmitter
    {
        return ParticleEmitter.wrap(hx_ParticleEmitter_static_create_Prop(properties.native()));
    }

    // DECL: static ParticleEmitter* create(const char* texturePath, TextureBlending textureBlending,  unsigned int particleCountMax);
    public static function create_Str_IntX2(texturePath:String, textureBlending:Int, particleCountMax:Int):ParticleEmitter
    {
        return ParticleEmitter.wrap(hx_ParticleEmitter_static_create_Str_IntX2(texturePath, textureBlending, particleCountMax));
    }

    // DECL: static ParticleEmitter* create(const char* url);
    public static function create_Str(url:String):ParticleEmitter
    {
        return ParticleEmitter.wrap(hx_ParticleEmitter_static_create_Str(url));
    }

    // DECL: void draw();
    public function draw():Void
    {
        hx_ParticleEmitter_draw(nativeObject);
    }

    // DECL: void emitOnce(unsigned int particleCount);
    public function emitOnce(particleCount:Int):Void
    {
        hx_ParticleEmitter_emitOnce(nativeObject, particleCount);
    }

    // DECL: const Vector3& getAcceleration() const;
    public function getAcceleration():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getAcceleration(nativeObject));
    }

    // DECL: const Vector3& getAccelerationVariance() const;
    public function getAccelerationVariance():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getAccelerationVariance(nativeObject));
    }

    // DECL: const Vector4& getColorEnd() const;
    public function getColorEnd():Vector4
    {
        return Vector4.wrap(hx_ParticleEmitter_getColorEnd(nativeObject));
    }

    // DECL: const Vector4& getColorEndVariance() const;
    public function getColorEndVariance():Vector4
    {
        return Vector4.wrap(hx_ParticleEmitter_getColorEndVariance(nativeObject));
    }

    // DECL: const Vector4& getColorStart() const;
    public function getColorStart():Vector4
    {
        return Vector4.wrap(hx_ParticleEmitter_getColorStart(nativeObject));
    }

    // DECL: const Vector4& getColorStartVariance() const;
    public function getColorStartVariance():Vector4
    {
        return Vector4.wrap(hx_ParticleEmitter_getColorStartVariance(nativeObject));
    }

    // DECL: unsigned int getEmissionRate() const;
    public function getEmissionRate():Int
    {
        return hx_ParticleEmitter_getEmissionRate(nativeObject);
    }

    // DECL: long getEnergyMax() const;
    public function getEnergyMax():Int
    {
        return hx_ParticleEmitter_getEnergyMax(nativeObject);
    }

    // DECL: long getEnergyMin() const;
    public function getEnergyMin():Int
    {
        return hx_ParticleEmitter_getEnergyMin(nativeObject);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_ParticleEmitter_getNode(nativeObject));
    }

    // DECL: unsigned int getParticlesCount() const;
    public function getParticlesCount():Int
    {
        return hx_ParticleEmitter_getParticlesCount(nativeObject);
    }

    // DECL: const Vector3& getPosition() const;
    public function getPosition():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getPosition(nativeObject));
    }

    // DECL: const Vector3& getPositionVariance() const;
    public function getPositionVariance():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getPositionVariance(nativeObject));
    }

    // DECL: const Vector3& getRotationAxis() const;
    public function getRotationAxis():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getRotationAxis(nativeObject));
    }

    // DECL: const Vector3& getRotationAxisVariance() const;
    public function getRotationAxisVariance():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getRotationAxisVariance(nativeObject));
    }

    // DECL: float getRotationPerParticleSpeedMax() const;
    public function getRotationPerParticleSpeedMax():Float
    {
        return hx_ParticleEmitter_getRotationPerParticleSpeedMax(nativeObject);
    }

    // DECL: float getRotationPerParticleSpeedMin() const;
    public function getRotationPerParticleSpeedMin():Float
    {
        return hx_ParticleEmitter_getRotationPerParticleSpeedMin(nativeObject);
    }

    // DECL: float getRotationSpeedMax() const;
    public function getRotationSpeedMax():Float
    {
        return hx_ParticleEmitter_getRotationSpeedMax(nativeObject);
    }

    // DECL: float getRotationSpeedMin() const;
    public function getRotationSpeedMin():Float
    {
        return hx_ParticleEmitter_getRotationSpeedMin(nativeObject);
    }

    // DECL: float getSizeEndMax() const;
    public function getSizeEndMax():Float
    {
        return hx_ParticleEmitter_getSizeEndMax(nativeObject);
    }

    // DECL: float getSizeEndMin() const;
    public function getSizeEndMin():Float
    {
        return hx_ParticleEmitter_getSizeEndMin(nativeObject);
    }

    // DECL: float getSizeStartMax() const;
    public function getSizeStartMax():Float
    {
        return hx_ParticleEmitter_getSizeStartMax(nativeObject);
    }

    // DECL: float getSizeStartMin() const;
    public function getSizeStartMin():Float
    {
        return hx_ParticleEmitter_getSizeStartMin(nativeObject);
    }

    // DECL: long getSpriteFrameDuration() const;
    public function getSpriteFrameDuration():Int
    {
        return hx_ParticleEmitter_getSpriteFrameDuration(nativeObject);
    }

    // DECL: int getSpriteFrameRandomOffset() const;
    public function getSpriteFrameRandomOffset():Int
    {
        return hx_ParticleEmitter_getSpriteFrameRandomOffset(nativeObject);
    }

    // DECL: static TextureBlending getTextureBlendingFromString(const char* src);
    public static function getTextureBlendingFromString(src:String):Int
    {
        return hx_ParticleEmitter_static_getTextureBlendingFromString(src);
    }

    // DECL: const Vector3& getVelocity() const;
    public function getVelocity():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getVelocity(nativeObject));
    }

    // DECL: const Vector3& getVelocityVariance() const;
    public function getVelocityVariance():IVector3
    {
        return Vector3.wrap(hx_ParticleEmitter_getVelocityVariance(nativeObject));
    }

    // DECL: bool isActive() const;
    public function isActive():Bool
    {
        return hx_ParticleEmitter_isActive(nativeObject);
    }

    // DECL: bool isEllipsoid() const;
    public function isEllipsoid():Bool
    {
        return hx_ParticleEmitter_isEllipsoid(nativeObject);
    }

    // DECL: bool isSpriteAnimated() const;
    public function isSpriteAnimated():Bool
    {
        return hx_ParticleEmitter_isSpriteAnimated(nativeObject);
    }

    // DECL: bool isSpriteLooped() const;
    public function isSpriteLooped():Bool
    {
        return hx_ParticleEmitter_isSpriteLooped(nativeObject);
    }

    // DECL: bool isStarted() const;
    public function isStarted():Bool
    {
        return hx_ParticleEmitter_isStarted(nativeObject);
    }

    // DECL: void setAcceleration(const Vector3& acceleration, const Vector3& accelerationVariance);
    public function setAcceleration(acceleration:Vector3, accelerationVariance:Vector3):Void
    {
        hx_ParticleEmitter_setAcceleration(nativeObject, acceleration.native(), accelerationVariance.native());
    }

    // DECL: void setColor(const Vector4& start, const Vector4& startVariance, const Vector4& end, const Vector4& endVariance);
    public function setColor(start:Vector4, startVariance:Vector4, end:Vector4, endVariance:Vector4):Void
    {
        hx_ParticleEmitter_setColor(nativeObject, start.native(), startVariance.native(), end.native(), endVariance.native());
    }

    // DECL: void setEllipsoid(bool ellipsoid);
    public function setEllipsoid(ellipsoid:Bool):Void
    {
        hx_ParticleEmitter_setEllipsoid(nativeObject, ellipsoid);
    }

    // DECL: void setEmissionRate(unsigned int rate);
    public function setEmissionRate(rate:Int):Void
    {
        hx_ParticleEmitter_setEmissionRate(nativeObject, rate);
    }

    // DECL: void setEnergy(long energyMin, long energyMax);
    public function setEnergy(energyMin:Int, energyMax:Int):Void
    {
        hx_ParticleEmitter_setEnergy(nativeObject, energyMin, energyMax);
    }

    // DECL: void setOrbit(bool orbitPosition, bool orbitVelocity, bool orbitAcceleration);
    public function setOrbit(orbitPosition:Bool, orbitVelocity:Bool, orbitAcceleration:Bool):Void
    {
        hx_ParticleEmitter_setOrbit(nativeObject, orbitPosition, orbitVelocity, orbitAcceleration);
    }

    // DECL: void setPosition(const Vector3& position, const Vector3& positionVariance);
    public function setPosition(position:Vector3, positionVariance:Vector3):Void
    {
        hx_ParticleEmitter_setPosition(nativeObject, position.native(), positionVariance.native());
    }

    // DECL: void setRotation(float speedMin, float speedMax, const Vector3& axis, const Vector3& axisVariance);
    public function setRotation(speedMin:Float, speedMax:Float, axis:Vector3, axisVariance:Vector3):Void
    {
        hx_ParticleEmitter_setRotation(nativeObject, speedMin, speedMax, axis.native(), axisVariance.native());
    }

    // DECL: void setRotationPerParticle(float speedMin, float speedMax);
    public function setRotationPerParticle(speedMin:Float, speedMax:Float):Void
    {
        hx_ParticleEmitter_setRotationPerParticle(nativeObject, speedMin, speedMax);
    }

    // DECL: void setSize(float startMin, float startMax, float endMin, float endMax);
    public function setSize(startMin:Float, startMax:Float, endMin:Float, endMax:Float):Void
    {
        hx_ParticleEmitter_setSize(nativeObject, startMin, startMax, endMin, endMax);
    }

    // DECL: void setSpriteAnimated(bool animated);
    public function setSpriteAnimated(animated:Bool):Void
    {
        hx_ParticleEmitter_setSpriteAnimated(nativeObject, animated);
    }

    // DECL: void setSpriteFrameCoords(unsigned int frameCount, Rectangle* frameCoords);
    public function setSpriteFrameCoords_Int_ArrRct(frameCount:Int, frameCoords:Array<Rectangle>):Void
    {
        hx_ParticleEmitter_setSpriteFrameCoords_Int_ArrRct(nativeObject, frameCount, ConversionTools.insertArray(frameCoords));
    }

    // DECL: void setSpriteFrameCoords(unsigned int frameCount, int width, int height);
    public function setSpriteFrameCoords_IntX3(frameCount:Int, width:Int, height:Int):Void
    {
        hx_ParticleEmitter_setSpriteFrameCoords_IntX3(nativeObject, frameCount, width, height);
    }

    // DECL: void setSpriteFrameDuration(long duration);
    public function setSpriteFrameDuration(duration:Int):Void
    {
        hx_ParticleEmitter_setSpriteFrameDuration(nativeObject, duration);
    }

    // DECL: void setSpriteFrameRandomOffset(int maxOffset);
    public function setSpriteFrameRandomOffset(maxOffset:Int):Void
    {
        hx_ParticleEmitter_setSpriteFrameRandomOffset(nativeObject, maxOffset);
    }

    // DECL: void setSpriteLooped(bool looped);
    public function setSpriteLooped(looped:Bool):Void
    {
        hx_ParticleEmitter_setSpriteLooped(nativeObject, looped);
    }

    // DECL: void setSpriteTexCoords(unsigned int frameCount, float* texCoords);
    public function setSpriteTexCoords(frameCount:Int, texCoords:Array<Float>):Void
    {
        hx_ParticleEmitter_setSpriteTexCoords(nativeObject, frameCount, texCoords);
    }

    // DECL: void setTextureBlending(TextureBlending blending);
    public function setTextureBlending(blending:Int):Void
    {
        hx_ParticleEmitter_setTextureBlending(nativeObject, blending);
    }

    // DECL: void setVelocity(const Vector3& velocity, const Vector3& velocityVariance);
    public function setVelocity(velocity:Vector3, velocityVariance:Vector3):Void
    {
        hx_ParticleEmitter_setVelocity(nativeObject, velocity.native(), velocityVariance.native());
    }

    // DECL: void start();
    public function start():Void
    {
        hx_ParticleEmitter_start(nativeObject);
    }

    // DECL: void stop();
    public function stop():Void
    {
        hx_ParticleEmitter_stop(nativeObject);
    }

    // DECL: void update(float elapsedTime);
    public function update(elapsedTime:Float):Void
    {
        hx_ParticleEmitter_update(nativeObject, elapsedTime);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_ParticleEmitter_static_create_Prop:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_static_create_Prop", 1);
    static var hx_ParticleEmitter_static_create_Str_IntX2:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_static_create_Str_IntX2", 3);
    static var hx_ParticleEmitter_static_create_Str:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_static_create_Str", 1);
    static var hx_ParticleEmitter_draw:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_draw", 1);
    static var hx_ParticleEmitter_emitOnce:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_emitOnce", 2);
    static var hx_ParticleEmitter_getAcceleration:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getAcceleration", 1);
    static var hx_ParticleEmitter_getAccelerationVariance:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getAccelerationVariance", 1);
    static var hx_ParticleEmitter_getColorEnd:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getColorEnd", 1);
    static var hx_ParticleEmitter_getColorEndVariance:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getColorEndVariance", 1);
    static var hx_ParticleEmitter_getColorStart:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getColorStart", 1);
    static var hx_ParticleEmitter_getColorStartVariance:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getColorStartVariance", 1);
    static var hx_ParticleEmitter_getEmissionRate:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getEmissionRate", 1);
    static var hx_ParticleEmitter_getEnergyMax:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getEnergyMax", 1);
    static var hx_ParticleEmitter_getEnergyMin:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getEnergyMin", 1);
    static var hx_ParticleEmitter_getNode:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getNode", 1);
    static var hx_ParticleEmitter_getParticlesCount:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getParticlesCount", 1);
    static var hx_ParticleEmitter_getPosition:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getPosition", 1);
    static var hx_ParticleEmitter_getPositionVariance:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getPositionVariance", 1);
    static var hx_ParticleEmitter_getRotationAxis:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getRotationAxis", 1);
    static var hx_ParticleEmitter_getRotationAxisVariance:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getRotationAxisVariance", 1);
    static var hx_ParticleEmitter_getRotationPerParticleSpeedMax:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getRotationPerParticleSpeedMax", 1);
    static var hx_ParticleEmitter_getRotationPerParticleSpeedMin:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getRotationPerParticleSpeedMin", 1);
    static var hx_ParticleEmitter_getRotationSpeedMax:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getRotationSpeedMax", 1);
    static var hx_ParticleEmitter_getRotationSpeedMin:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getRotationSpeedMin", 1);
    static var hx_ParticleEmitter_getSizeEndMax:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getSizeEndMax", 1);
    static var hx_ParticleEmitter_getSizeEndMin:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getSizeEndMin", 1);
    static var hx_ParticleEmitter_getSizeStartMax:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getSizeStartMax", 1);
    static var hx_ParticleEmitter_getSizeStartMin:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getSizeStartMin", 1);
    static var hx_ParticleEmitter_getSpriteFrameDuration:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getSpriteFrameDuration", 1);
    static var hx_ParticleEmitter_getSpriteFrameRandomOffset:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getSpriteFrameRandomOffset", 1);
    static var hx_ParticleEmitter_static_getTextureBlendingFromString:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_static_getTextureBlendingFromString", 1);
    static var hx_ParticleEmitter_getVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getVelocity", 1);
    static var hx_ParticleEmitter_getVelocityVariance:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_getVelocityVariance", 1);
    static var hx_ParticleEmitter_isActive:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_isActive", 1);
    static var hx_ParticleEmitter_isEllipsoid:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_isEllipsoid", 1);
    static var hx_ParticleEmitter_isSpriteAnimated:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_isSpriteAnimated", 1);
    static var hx_ParticleEmitter_isSpriteLooped:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_isSpriteLooped", 1);
    static var hx_ParticleEmitter_isStarted:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_isStarted", 1);
    static var hx_ParticleEmitter_setAcceleration:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setAcceleration", 3);
    static var hx_ParticleEmitter_setColor:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setColor", 5);
    static var hx_ParticleEmitter_setEllipsoid:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setEllipsoid", 2);
    static var hx_ParticleEmitter_setEmissionRate:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setEmissionRate", 2);
    static var hx_ParticleEmitter_setEnergy:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setEnergy", 3);
    static var hx_ParticleEmitter_setOrbit:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setOrbit", 4);
    static var hx_ParticleEmitter_setPosition:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setPosition", 3);
    static var hx_ParticleEmitter_setRotation:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setRotation", 5);
    static var hx_ParticleEmitter_setRotationPerParticle:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setRotationPerParticle", 3);
    static var hx_ParticleEmitter_setSize:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSize", 5);
    static var hx_ParticleEmitter_setSpriteAnimated:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteAnimated", 2);
    static var hx_ParticleEmitter_setSpriteFrameCoords_Int_ArrRct:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteFrameCoords_Int_ArrRct", 3);
    static var hx_ParticleEmitter_setSpriteFrameCoords_IntX3:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteFrameCoords_IntX3", 4);
    static var hx_ParticleEmitter_setSpriteFrameDuration:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteFrameDuration", 2);
    static var hx_ParticleEmitter_setSpriteFrameRandomOffset:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteFrameRandomOffset", 2);
    static var hx_ParticleEmitter_setSpriteLooped:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteLooped", 2);
    static var hx_ParticleEmitter_setSpriteTexCoords:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setSpriteTexCoords", 3);
    static var hx_ParticleEmitter_setTextureBlending:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setTextureBlending", 2);
    static var hx_ParticleEmitter_setVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_setVelocity", 3);
    static var hx_ParticleEmitter_start:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_start", 1);
    static var hx_ParticleEmitter_stop:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_stop", 1);
    static var hx_ParticleEmitter_update:Dynamic = cpp.Lib.load("gameplay", "hx_ParticleEmitter_update", 2);
}

// END
