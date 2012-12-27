package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.util.Utilities;

// DECL: class AnimationTarget : public GameplayObject
interface AnimationTarget implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Animation* createAnimation(const char* id, Properties* animationProperties);
    public function createAnimation_Str_Prop(id:String, animationProperties:Properties):Animation;

    // DECL: Animation* createAnimation(const char* id, const char* url);
    public function createAnimation_StrX2(id:String, url:String):Animation;

    // DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, Curve::InterpolationType type);
    public function createAnimation_Str_IntX2_ArrInt_ArrFlt_Int(id:String, propertyId:Int, keyCount:Int, keyTimes:NativeArrayUint, keyValues:NativeArrayFloat, type:Int):Animation;

    // DECL: Animation* createAnimation(const char* id, int propertyId, unsigned int keyCount, unsigned int* keyTimes, float* keyValues, float* keyInValue, float* keyOutValue, Curve::InterpolationType type);
    public function createAnimation_Str_IntX2_ArrInt_ArrFltX3_Int(id:String, propertyId:Int, keyCount:Int, keyTimes:NativeArrayUint, keyValues:NativeArrayFloat, keyInValue:NativeArrayFloat, keyOutValue:NativeArrayFloat, type:Int):Animation;

    // DECL: Animation* createAnimationFromBy(const char* id, int propertyId, float* from, float* by, Curve::InterpolationType type, unsigned long duration);
    public function createAnimationFromBy(id:String, propertyId:Int, from:NativeArrayFloat, by:NativeArrayFloat, type:Int, duration:Int):Animation;

    // DECL: Animation* createAnimationFromTo(const char* id, int propertyId, float* from, float* to, Curve::InterpolationType type, unsigned long duration);
    public function createAnimationFromTo(id:String, propertyId:Int, from:NativeArrayFloat, to:NativeArrayFloat, type:Int, duration:Int):Animation;

    // DECL: void destroyAnimation(const char* id = NULL);
    public function destroyAnimation(id:String = null):Void;

    // DECL: Animation* getAnimation(const char* id = NULL) const;
    public function getAnimation(id:String = null):Animation;

    // DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const = 0;
    public function getAnimationPropertyComponentCount(propertyId:Int):Int;

    // DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value) = 0;
    public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void;

    // DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f) = 0;
    public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void;
}

// END
