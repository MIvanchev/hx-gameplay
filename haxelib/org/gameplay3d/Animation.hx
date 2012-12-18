package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Animation : public Ref
class Animation extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: AnimationClip* createClip(const char* id, unsigned long start, unsigned long end);
    public function createClip(id:String, start:Int, end:Int):AnimationClip
    {
        return AnimationClip.wrap(hx_Animation_createClip(nativeObject, id, start, end));
    }

    // DECL: void createClips(const char* url);
    public function createClips(url:String):Void
    {
        hx_Animation_createClips(nativeObject, url);
    }

    // DECL: AnimationClip* getClip(const char* clipId = NULL);
    public function getClip_Str(clipId:String = null):AnimationClip
    {
        return AnimationClip.wrap(hx_Animation_getClip_Str(nativeObject, clipId));
    }

    // DECL: AnimationClip* getClip(unsigned int index) const;
    public function getClip_Int(index:Int):AnimationClip
    {
        return AnimationClip.wrap(hx_Animation_getClip_Int(nativeObject, index));
    }

    // DECL: unsigned int getClipCount() const;
    public function getClipCount():Int
    {
        return hx_Animation_getClipCount(nativeObject);
    }

    // DECL: unsigned long getDuration() const;
    public function getDuration():Int
    {
        return hx_Animation_getDuration(nativeObject);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Animation_getId(nativeObject);
    }

    // DECL: void pause(const char* clipId = NULL);
    public function pause(clipId:String = null):Void
    {
        hx_Animation_pause(nativeObject, clipId);
    }

    // DECL: void play(const char* clipId = NULL);
    public function play(clipId:String = null):Void
    {
        hx_Animation_play(nativeObject, clipId);
    }

    // DECL: void stop(const char* clipId = NULL);
    public function stop(clipId:String):Void
    {
        hx_Animation_stop(nativeObject, clipId);
    }

    // DECL: bool targets(AnimationTarget* target) const;
    public function targets(target:AnimationTarget):Bool
    {
        return hx_Animation_targets(nativeObject, target.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Animation_createClip:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_createClip", 4);
    static var hx_Animation_createClips:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_createClips", 2);
    static var hx_Animation_getClip_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_getClip_Str", 2);
    static var hx_Animation_getClip_Int:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_getClip_Int", 2);
    static var hx_Animation_getClipCount:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_getClipCount", 1);
    static var hx_Animation_getDuration:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_getDuration", 1);
    static var hx_Animation_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_getId", 1);
    static var hx_Animation_pause:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_pause", 2);
    static var hx_Animation_play:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_play", 2);
    static var hx_Animation_stop:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_stop", 2);
    static var hx_Animation_targets:Dynamic = cpp.Lib.load("gameplay", "hx_Animation_targets", 2);
}

// END
