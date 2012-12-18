package org.gameplay3d;

import org.gameplay3d.impl.AnimationTargetImpl;
import org.gameplay3d.util.Utilities;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class MaterialParameter : public AnimationTarget, public Ref
class MaterialParameter extends AnimationTargetImpl, implements Ref
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var ANIMATE_UNIFORM = 1;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bindValue(ClassType* classInstance, ParameterType (ClassType::*valueMethod)() const);
    //public function bindValue(classInstance:ClassType, const:ParameterType (ClassType::*valueMethod)()):Void
    //{
        //hx_MaterialParameter_bindValue(nativeObject, classInstance.native(), const.native());
    //}

    // DECL: void bindValue(ClassType* classInstance, ParameterType (ClassType::*valueMethod)() const, unsigned int (ClassType::*countMethod)() const);
    //public function bindValue(classInstance:ClassType, const:ParameterType (ClassType::*valueMethod)(), const:unsigned int (ClassType::*countMethod)()):Void
    //{
        //hx_MaterialParameter_bindValue(nativeObject, classInstance.native(), const.native(), const.native());
    //}

    // DECL: void bindValue(Node* node, const char* binding);
    public function bindValue(node:Node, binding:String):Void
    {
        hx_MaterialParameter_bindValue(nativeObject, node.native(), binding);
    }

    // DECL: unsigned int getAnimationPropertyComponentCount(int propertyId) const;
    override public function getAnimationPropertyComponentCount(propertyId:Int):Int
    {
        return hx_MaterialParameter_getAnimationPropertyComponentCount(nativeObject, propertyId);
    }

    // DECL: void getAnimationPropertyValue(int propertyId, AnimationValue* value);
    override public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void
    {
        hx_MaterialParameter_getAnimationPropertyValue(nativeObject, propertyId, value.native());
    }

    // DECL: const char* getName() const;
    public function getName():String
    {
        return hx_MaterialParameter_getName(nativeObject);
    }

    // DECL: Texture::Sampler* getSampler() const;
    public function getSampler():Texture_Sampler
    {
        return Texture_Sampler.wrap(hx_MaterialParameter_getSampler(nativeObject));
    }

    // DECL: void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
    override public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_MaterialParameter_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    // DECL: Texture::Sampler* setValue(const char* texturePath, bool generateMipmaps);
    public function setValue_Str_Bool(texturePath:String, generateMipmaps:Bool):Texture_Sampler
    {
        return Texture_Sampler.wrap(hx_MaterialParameter_setValue_Str_Bool(nativeObject, texturePath, generateMipmaps));
    }

    // DECL: void setValue(const Matrix& value);
    public function setValue_Mat(value:Matrix):Void
    {
        hx_MaterialParameter_setValue_Mat(nativeObject, value.native());
    }

    // DECL: void setValue(const Matrix* values, unsigned int count = 1);
    public function setValue_ArrMat_Int(values:Array<Matrix>, count:Int = 1):Void
    {
        hx_MaterialParameter_setValue_ArrMat_Int(nativeObject, Utilities.insertArray(values), count);
    }

    // DECL: void setValue(const Texture::Sampler* sampler);
    public function setValue_Smplr(sampler:Texture_Sampler):Void
    {
        hx_MaterialParameter_setValue_Smplr(nativeObject, sampler.native());
    }

    // DECL: void setValue(const Vector2& value);
    public function setValue_V2(value:Vector2):Void
    {
        hx_MaterialParameter_setValue_V2(nativeObject, value.native());
    }

    // DECL: void setValue(const Vector2* values, unsigned int count = 1);
    public function setValue_ArrV2_Int(values:Array<Vector2>, count:Int = 1):Void
    {
        hx_MaterialParameter_setValue_ArrV2_Int(nativeObject, Utilities.insertArray(values), count);
    }

    // DECL: void setValue(const Vector3& value);
    public function setValue_V3(value:Vector3):Void
    {
        hx_MaterialParameter_setValue_V3(nativeObject, value.native());
    }

    // DECL: void setValue(const Vector3* values, unsigned int count = 1);
    public function setValue_ArrV3_Int(values:Array<Vector3>, count:Int = 1):Void
    {
        hx_MaterialParameter_setValue_ArrV3_Int(nativeObject, Utilities.insertArray(values), count);
    }

    // DECL: void setValue(const Vector4& value);
    public function setValue_V4(value:Vector4):Void
    {
        hx_MaterialParameter_setValue_V4(nativeObject, value.native());
    }

    // DECL: void setValue(const Vector4* values, unsigned int count = 1);
    public function setValue_ArrV4_Int(values:Array<Vector4>, count:Int = 1):Void
    {
        hx_MaterialParameter_setValue_ArrV4_Int(nativeObject, Utilities.insertArray(values), count);
    }

    // DECL: void setValue(const float* values, unsigned int count = 1);
    public function setValue_ArrFlt_Int(values:Array<Float>, count:Int = 1):Void
    {
        hx_MaterialParameter_setValue_ArrFlt_Int(nativeObject, values, count);
    }

    // DECL: void setValue(const int* values, unsigned int count = 1);
    public function setValue_ArrInt_Int(values:Array<Int>, count:Int = 1):Void
    {
        hx_MaterialParameter_setValue_ArrInt_Int(nativeObject, values, count);
    }

    // DECL: void setValue(float value);
    public function setValue_Flt(value:Float):Void
    {
        hx_MaterialParameter_setValue_Flt(nativeObject, value);
    }

    // DECL: void setValue(int value);
    public function setValue_Int(value:Int):Void
    {
        hx_MaterialParameter_setValue_Int(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_MaterialParameter_bindValue:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_bindValue", 3);
    static var hx_MaterialParameter_getAnimationPropertyComponentCount:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_getAnimationPropertyComponentCount", 2);
    static var hx_MaterialParameter_getAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_getAnimationPropertyValue", 3);
    static var hx_MaterialParameter_getName:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_getName", 1);
    static var hx_MaterialParameter_getSampler:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_getSampler", 1);
    static var hx_MaterialParameter_setAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setAnimationPropertyValue", 4);
    static var hx_MaterialParameter_setValue_Str_Bool:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_Str_Bool", 3);
    static var hx_MaterialParameter_setValue_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_Mat", 2);
    static var hx_MaterialParameter_setValue_ArrMat_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_ArrMat_Int", 3);
    static var hx_MaterialParameter_setValue_Smplr:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_Smplr", 2);
    static var hx_MaterialParameter_setValue_V2:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_V2", 2);
    static var hx_MaterialParameter_setValue_ArrV2_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_ArrV2_Int", 3);
    static var hx_MaterialParameter_setValue_V3:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_V3", 2);
    static var hx_MaterialParameter_setValue_ArrV3_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_ArrV3_Int", 3);
    static var hx_MaterialParameter_setValue_V4:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_V4", 2);
    static var hx_MaterialParameter_setValue_ArrV4_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_ArrV4_Int", 3);
    static var hx_MaterialParameter_setValue_ArrFlt_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_ArrFlt_Int", 3);
    static var hx_MaterialParameter_setValue_ArrInt_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_ArrInt_Int", 3);
    static var hx_MaterialParameter_setValue_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_Flt", 2);
    static var hx_MaterialParameter_setValue_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MaterialParameter_setValue_Int", 2);
}

// END
