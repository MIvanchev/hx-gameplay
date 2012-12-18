package org.gameplay3d.impl;

import haxe.io.BytesData;
import org.gameplay3d.Animation;
import org.gameplay3d.AnimationTarget;
import org.gameplay3d.AnimationValue;
import org.gameplay3d.GameplayObject;
import org.gameplay3d.Properties;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AnimationTarget : public GameplayObject
class AnimationTargetImpl extends GameplayObject, implements AnimationTarget
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Animation* createAnimation(const char* id, Properties* animationProperties);
    public function createAnimation_Str_Prop(id:String, animationProperties:Properties):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimation_Str_Prop(nativeObject, id, animationProperties.native()));
    }

    // DECL: Animation* createAnimation(const char* id, const char* url);
    public function createAnimation_StrX2(id:String, url:String):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimation_StrX2(nativeObject, id, url));
    }

    // DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, Curve::InterpolationType type);
    public function createAnimation_Str_IntX2_DatX2_Int(id:String, propertyId:Int, keyCount:Int, keyTimes:BytesData, keyValues:BytesData, type:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimation_Str_IntX2_DatX2_Int(nativeObject, id, propertyId, keyCount, keyTimes, keyValues, type));
    }

    // DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, float* keyInValue, float* keyOutValue, Curve::InterpolationType type);
    public function createAnimation_Str_IntX2_DatX4_Int(id:String, propertyId:Int, keyCount:Int, keyTimes:BytesData, keyValues:BytesData, keyInValue:BytesData, keyOutValue:BytesData, type:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimation_Str_IntX2_DatX4_Int(nativeObject, id, propertyId, keyCount, keyTimes, keyValues, keyInValue, keyOutValue, type));
    }

    // DECL: Animation* createAnimationFromBy(const char* id, int propertyId, float* from, float* by, Curve::InterpolationType type, unsigned long duration);
    public function createAnimationFromBy(id:String, propertyId:Int, from:BytesData, by:BytesData, type:Int, duration:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimationFromBy(nativeObject, id, propertyId, from, by, type, duration));
    }

    // DECL: Animation* createAnimationFromTo(const char* id, int propertyId, float* from, float* to, Curve::InterpolationType type, unsigned long duration);
    public function createAnimationFromTo(id:String, propertyId:Int, from:BytesData, to:BytesData, type:Int, duration:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimationFromTo(nativeObject, id, propertyId, from, to, type, duration));
    }

    // DECL: void destroyAnimation(const char* id = NULL);
    public function destroyAnimation(id:String = null):Void
    {
        hx_AnimationTarget_destroyAnimation(nativeObject, id);
    }

    // DECL: Animation* getAnimation(const char* id = NULL) const;
    public function getAnimation(id:String = null):Animation
    {
        return Animation.wrap(hx_AnimationTarget_getAnimation(nativeObject, id));
    }

    // DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const = 0;
    public function getAnimationPropertyComponentCount(propertyId:Int):Int
    {
        return hx_AnimationTarget_getAnimationPropertyComponentCount(nativeObject, propertyId);
    }

    // DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue * value) = 0;
    public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void
    {
        hx_AnimationTarget_getAnimationPropertyValue(nativeObject, propertyId, value.native());
    }

    // DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f) = 0;
    public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_AnimationTarget_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationTarget_createAnimation_Str_Prop:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_Str_Prop", 3);
    static var hx_AnimationTarget_createAnimation_StrX2:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_StrX2", 3);
    static var hx_AnimationTarget_createAnimation_Str_IntX2_DatX2_Int:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_Str_IntX2_DatX2_Int", -1);
    static var hx_AnimationTarget_createAnimation_Str_IntX2_DatX4_Int:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_Str_IntX2_DatX4_Int", -1);
    static var hx_AnimationTarget_createAnimationFromBy:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimationFromBy", -1);
    static var hx_AnimationTarget_createAnimationFromTo:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimationFromTo", -1);
    static var hx_AnimationTarget_destroyAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_destroyAnimation", 2);
    static var hx_AnimationTarget_getAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_getAnimation", 2);
    static var hx_AnimationTarget_getAnimationPropertyComponentCount:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_getAnimationPropertyComponentCount", 2);
    static var hx_AnimationTarget_getAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_getAnimationPropertyValue", 3);
    static var hx_AnimationTarget_setAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationTarget_setAnimationPropertyValue", 4);
}

// END
