package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.impl.Transform_ListenerImpl;
import org.gameplay3d.intern.INativeBinding;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AudioSource : public Ref, public Transform::Listener
class AudioSource extends Transform_ListenerImpl, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _velocity:Vector3;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            _velocity = Vector3.make();
        }
        return cast(this);
    }

    // DECL: static AudioSource* create(Properties* properties);
    public static function create_Prop(properties:Properties):AudioSource
    {
        return AudioSource.wrap(hx_AudioSource_static_create_Prop(properties.native()));
    }

    // DECL: static AudioSource* create(const char* url);
    public static function create_Str(url:String):AudioSource
    {
        return AudioSource.wrap(hx_AudioSource_static_create_Str(url));
    }

    // DECL: float getGain() const;
    public function getGain():Float
    {
        return hx_AudioSource_getGain(nativeObject);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_AudioSource_getNode(nativeObject));
    }

    // DECL: float getPitch() const;
    public function getPitch():Float
    {
        return hx_AudioSource_getPitch(nativeObject);
    }

    // DECL: AudioSource::State getState() const;
    public function getState():Int
    {
        return hx_AudioSource_getState(nativeObject);
    }

    // DECL: const Vector3& getVelocity() const;
    public function getVelocity():IVector3
    {
        return _velocity.impersonate(hx_AudioSource_getVelocity(nativeObject));
    }

    // DECL: bool isLooped() const;
    public function isLooped():Bool
    {
        return hx_AudioSource_isLooped(nativeObject);
    }

    // DECL: void pause();
    public function pause():Void
    {
        hx_AudioSource_pause(nativeObject);
    }

    // DECL: void play();
    public function play():Void
    {
        hx_AudioSource_play(nativeObject);
    }

    // DECL: void resume();
    public function resume():Void
    {
        hx_AudioSource_resume(nativeObject);
    }

    // DECL: void rewind();
    public function rewind():Void
    {
        hx_AudioSource_rewind(nativeObject);
    }

    // DECL: void setGain(float gain);
    public function setGain(gain:Float):Void
    {
        hx_AudioSource_setGain(nativeObject, gain);
    }

    // DECL: void setLooped(bool looped);
    public function setLooped(looped:Bool):Void
    {
        hx_AudioSource_setLooped(nativeObject, looped);
    }

    // DECL: void setPitch(float pitch);
    public function setPitch(pitch:Float):Void
    {
        hx_AudioSource_setPitch(nativeObject, pitch);
    }

    // DECL: void setVelocity(const Vector3& velocity);
    public function setVelocity_V3(velocity:IVector3):Void
    {
        hx_AudioSource_setVelocity_V3(nativeObject, velocity.native());
    }

    // DECL: void setVelocity(float x, float y, float z);
    public function setVelocity_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_AudioSource_setVelocity_FltX3(nativeObject, x, y, z);
    }

    // DECL: void stop();
    public function stop():Void
    {
        hx_AudioSource_stop(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AudioSource_static_create_Prop:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_static_create_Prop", 1);
    static var hx_AudioSource_static_create_Str:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_static_create_Str", 1);
    static var hx_AudioSource_getGain:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_getGain", 1);
    static var hx_AudioSource_getNode:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_getNode", 1);
    static var hx_AudioSource_getPitch:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_getPitch", 1);
    static var hx_AudioSource_getState:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_getState", 1);
    static var hx_AudioSource_getVelocity:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_getVelocity", 1);
    static var hx_AudioSource_isLooped:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_isLooped", 1);
    static var hx_AudioSource_pause:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_pause", 1);
    static var hx_AudioSource_play:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_play", 1);
    static var hx_AudioSource_resume:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_resume", 1);
    static var hx_AudioSource_rewind:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_rewind", 1);
    static var hx_AudioSource_setGain:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_setGain", 2);
    static var hx_AudioSource_setLooped:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_setLooped", 2);
    static var hx_AudioSource_setPitch:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_setPitch", 2);
    static var hx_AudioSource_setVelocity_V3:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_setVelocity_V3", 2);
    static var hx_AudioSource_setVelocity_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_setVelocity_FltX3", 4);
    static var hx_AudioSource_stop:Dynamic = cpp.Lib.load("gameplay", "hx_AudioSource_stop", 1);
}

// END
