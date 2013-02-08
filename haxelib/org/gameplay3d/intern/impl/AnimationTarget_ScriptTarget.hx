package org.gameplay3d.intern.impl;

import haxe.io.BytesData;
import org.gameplay3d.Animation;
import org.gameplay3d.AnimationValue;
import org.gameplay3d.AnimationTarget;
import org.gameplay3d.GameplayObject;
import org.gameplay3d.Properties;
import org.gameplay3d.ScriptTarget;
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

/**
 * TODO
 */
class AnimationTarget_ScriptTarget extends GameplayObject, implements AnimationTarget, implements ScriptTarget
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
    public function createAnimation_Str_IntX2_ArrInt_ArrFlt_Int(id:String, propertyId:Int, keyCount:Int, keyTimes:NativeArrayUint, keyValues:NativeArrayFloat, type:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFlt_Int(nativeObject, id, propertyId, keyCount, keyTimes.native(), keyValues.native(), type));
    }

    // DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, float* keyInValue, float* keyOutValue, Curve::InterpolationType type);
    public function createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int(id:String, propertyId:Int, keyCount:Int, keyTimes:NativeArrayUint, keyValues:NativeArrayFloat, keyInValue:NativeArrayFloat, keyOutValue:NativeArrayFloat, type:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int(nativeObject, id, propertyId, keyCount, keyTimes.native(), keyValues.native(), keyInValue.native(), keyOutValue.native(), type));
    }

    // DECL: Animation* createAnimationFromBy(const char* id, int propertyId, float* from, float* by, Curve::InterpolationType type, unsigned long duration);
    public function createAnimationFromBy(id:String, propertyId:Int, from:NativeArrayFloat, by:NativeArrayFloat, type:Int, duration:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimationFromBy(nativeObject, id, propertyId, from.native(), by.native(), type, duration));
    }

    // DECL: Animation* createAnimationFromTo(const char* id, int propertyId, float* from, float* to, Curve::InterpolationType type, unsigned long duration);
    public function createAnimationFromTo(id:String, propertyId:Int, from:NativeArrayFloat, to:NativeArrayFloat, type:Int, duration:Int):Animation
    {
        return Animation.wrap(hx_AnimationTarget_createAnimationFromTo(nativeObject, id, propertyId, from.native(), to.native(), type, duration));
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

    // DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value) = 0;
    public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void
    {
        hx_AnimationTarget_getAnimationPropertyValue(nativeObject, propertyId, value.native());
    }

    // DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f) = 0;
    public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_AnimationTarget_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    // DECL: virtual void addScriptCallback(const std::string& eventName, const std::string& function);
    public function addScriptCallback(eventName:String, _function:String):Void
    {
        hx_ScriptTarget_addScriptCallback(nativeObject, eventName, _function);
    }

    // DECL: virtual void removeScriptCallback(const std::string& eventName, const std::string& function);
    public function removeScriptCallback(eventName:String, _function:String):Void
    {
        hx_ScriptTarget_removeScriptCallback(nativeObject, eventName, _function);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationTarget_createAnimation_Str_Prop = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_Str_Prop", 3);
    static var hx_AnimationTarget_createAnimation_StrX2 = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_StrX2", 3);
    static var hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFlt_Int = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFlt_Int", -1);
    static var hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int", -1);
    static var hx_AnimationTarget_createAnimationFromBy = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimationFromBy", -1);
    static var hx_AnimationTarget_createAnimationFromTo = cpp.Lib.load("gameplay", "hx_AnimationTarget_createAnimationFromTo", -1);
    static var hx_AnimationTarget_destroyAnimation = cpp.Lib.load("gameplay", "hx_AnimationTarget_destroyAnimation", 2);
    static var hx_AnimationTarget_getAnimation = cpp.Lib.load("gameplay", "hx_AnimationTarget_getAnimation", 2);
    static var hx_AnimationTarget_getAnimationPropertyComponentCount = cpp.Lib.load("gameplay", "hx_AnimationTarget_getAnimationPropertyComponentCount", 2);
    static var hx_AnimationTarget_getAnimationPropertyValue = cpp.Lib.load("gameplay", "hx_AnimationTarget_getAnimationPropertyValue", 3);
    static var hx_AnimationTarget_setAnimationPropertyValue = cpp.Lib.load("gameplay", "hx_AnimationTarget_setAnimationPropertyValue", 4);
    static var hx_ScriptTarget_addScriptCallback = cpp.Lib.load("gameplay", "hx_ScriptTarget_addScriptCallback", 3);
    static var hx_ScriptTarget_removeScriptCallback = cpp.Lib.load("gameplay", "hx_ScriptTarget_removeScriptCallback", 3);
}
