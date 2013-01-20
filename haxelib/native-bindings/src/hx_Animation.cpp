#include "HaxeAPI.h"

// DECL: AnimationClip* createClip(const char* id, unsigned long start, unsigned long end);
value hx_Animation_createClip(value thisObj, value id, value start, value end)
{
    Animation *_thisObj;
    const char *_id = ValueToString(id);
    unsigned long _start = ValueToUlong(start);
    unsigned long _end = ValueToUlong(end);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->createClip(_id, _start, _end));
}
DEFINE_PRIM(hx_Animation_createClip, 4);

// DECL: void createClips(const char* url);
void hx_Animation_createClips(value thisObj, value url)
{
    Animation *_thisObj;
    const char *_url = ValueToString(url);
    ValueToObject(thisObj, _thisObj);
    _thisObj->createClips(_url);
}
DEFINE_PRIM(hx_Animation_createClips, 2);

// DECL: AnimationClip* getClip(const char* clipId = NULL);
value hx_Animation_getClip_Str(value thisObj, value clipId)
{
    Animation *_thisObj;
    const char *_clipId = ValueToString(clipId);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getClip(_clipId), true);
}
DEFINE_PRIM(hx_Animation_getClip_Str, 2);

// DECL: AnimationClip* getClip(unsigned int index) const;
value hx_Animation_getClip_Int(value thisObj, value index)
{
    Animation *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getClip(_index), true);
}
DEFINE_PRIM(hx_Animation_getClip_Int, 2);

// DECL: unsigned int getClipCount() const;
value hx_Animation_getClipCount(value thisObj)
{
    Animation *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getClipCount());
}
DEFINE_PRIM(hx_Animation_getClipCount, 1);

// DECL: unsigned long getDuration() const;
value hx_Animation_getDuration(value thisObj)
{
    Animation *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getDuration());
}
DEFINE_PRIM(hx_Animation_getDuration, 1);

// DECL: const char* getId() const;
value hx_Animation_getId(value thisObj)
{
    Animation *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Animation_getId, 1);

// DECL: void pause(const char* clipId = NULL);
void hx_Animation_pause(value thisObj, value clipId)
{
    Animation *_thisObj;
    const char *_clipId = ValueToString(clipId);
    ValueToObject(thisObj, _thisObj);
    _thisObj->pause(_clipId);
}
DEFINE_PRIM(hx_Animation_pause, 2);

// DECL: void play(const char* clipId = NULL);
void hx_Animation_play(value thisObj, value clipId)
{
    Animation *_thisObj;
    const char *_clipId = ValueToString(clipId);
    ValueToObject(thisObj, _thisObj);
    _thisObj->play(_clipId);
}
DEFINE_PRIM(hx_Animation_play, 2);

// DECL: void stop(const char* clipId = NULL);
void hx_Animation_stop(value thisObj, value clipId)
{
    Animation *_thisObj;
    const char *_clipId = ValueToString(clipId);
    ValueToObject(thisObj, _thisObj);
    _thisObj->stop(_clipId);
}
DEFINE_PRIM(hx_Animation_stop, 2);

// DECL: bool targets(AnimationTarget* target) const;
value hx_Animation_targets(value thisObj, value target)
{
    Animation *_thisObj;
    AnimationTarget *_target;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(target, _target);
    return alloc_bool(_thisObj->targets(_target));
}
DEFINE_PRIM(hx_Animation_targets, 2);

// END
//
