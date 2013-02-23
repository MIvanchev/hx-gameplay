package org.gameplay3d;

import haxe.macro.Context;
import haxe.macro.Expr;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.intern.impl.AnimationTargetImpl;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.FunctionBinder;
import org.gameplay3d.util.FunctionBinder;
import org.gameplay3d.util.INativeArray;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

abstract MaterialParameterBinder<T>(FunctionBinder<T>)
{
    inline function new(v:Dynamic)
    {
        this = v;
	}

    public inline function getBinder()
    {
        return this;
    }

    @:from static public function fromFloat(val:Void->Float)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val)));
    }

    @:from static public function fromInt(val:Void->Int)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val)));
    }

    @:from static public function fromVector2(val:Void->IVector2)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromVector3(val:Void->IVector3)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromVector4(val:Void->IVector4)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromMatrix(val:Void->IMatrix)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromSampler(val:Void->Texture_Sampler)
    {
        return new MaterialParameterBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }
}

abstract MaterialParameterArrayBinder<T>(FunctionBinder<T>)
{
    inline function new(v:Dynamic)
    {
        this = v;
	}

    public inline function getBinder()
    {
        return this;
    }

    @:from static public function fromFloat(val:Void->INativeArray<Float>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val)));
    }

    @:from static public function fromInt(val:Void->INativeArray<Int>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val)));
    }

    @:from static public function fromVector2(val:Void->ObjectArraty<Vector2>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromVector3(val:Void->INativeArray<Vector3>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromVector4(val:Void->INativeArray<Vector4>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromMatrix(val:Void->INativeArray<Matrix>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }

    @:from static public function fromSampler(val:Void->INativeArray<Texture_Sampler>)
    {
        return new MaterialParameterArrayBinder(new FunctionBinder(val, Macros.binderType(val), false));
    }
}

// DECL: class MaterialParameter : public AnimationTarget, public Ref
class MaterialParameter extends AnimationTargetImpl implements Ref
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var ANIMATE_UNIFORM = 1;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var binder:MaterialParameterBinder<Dynamic>;
    var arrayBinder:MaterialParameterArrayBinder<Dynamic>;
    var countBinder:FunctionBinder<Int>;

    function clearBinder()
    {
        binder = null;
        arrayBinder = null;
        countBinder = null;
    }

    // DECL: void bindValue(ClassType* classInstance, ParameterType (ClassType::*valueMethod)() const);
    public function bindValue_Func<T>(binder:MaterialParameterBinder<T>):Void
    {
        clearBinder();
        this.binder = binder;
        hx_MaterialParameter_bindValue_Func_Str(nativeObject, binder.getBinder().nativeObject, binder.getBinder().type);
    }

    // DECL: void bindValue(ClassType* classInstance, ParameterType (ClassType::*valueMethod)() const, unsigned int (ClassType::*countMethod)() const);
    public function bindValue_FuncX2<T>(arrayBinder:MaterialParameterArrayBinder<T>, countBinder:Void->Int):Void
    {
        clearBinder();
        this.arrayBinder = arrayBinder;
        this.countBinder = new FunctionBinder(countBinder, "Int");
        //hx_MaterialParameter_bindValue(nativeObject, classInstance.native(), const.native(), const.native());
    }

    // DECL: void bindValue(Node* node, const char* binding);
    public function bindValue_Node_Str(node:Node, binding:String):Void
    {
        clearBinder();
        hx_MaterialParameter_bindValue_Node_Str(nativeObject, node.native(), binding);
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

    // DECL: Texture::Sampler* getSampler(unsigned int index = 0) const;
    public function getSampler(index:Int = 0):Texture_Sampler
    {
        return Texture_Sampler.wrap(hx_MaterialParameter_getSampler(nativeObject, index));
    }

    // DECL: void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
    override public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_MaterialParameter_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    // DECL: Texture::Sampler* setValue(const char* texturePath, bool generateMipmaps);
    public function setValue_Str_Bool(texturePath:String, generateMipmaps:Bool):Texture_Sampler
    {
        clearBinder();
        return Texture_Sampler.wrap(hx_MaterialParameter_setValue_Str_Bool(nativeObject, texturePath, generateMipmaps));
    }

    // DECL: void setValue(const Matrix& value);
    public function setValue_Mat(value:IMatrix):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_Mat(nativeObject, value.native());
    }

    // DECL: void setValue(const Matrix* values, unsigned int count = 1);
    public function setValue_ArrMat_Int(values:INativeArray<Matrix>, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrMat_Int(nativeObject, values.native(), count);
    }

    // DECL: void setValue(const Texture::Sampler* sampler);
    public function setValue_Smplr(sampler:Texture_Sampler):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_Smplr(nativeObject, sampler.native());
    }

    // DECL: void setValue(const Texture::Sampler** samplers, unsigned int count);
    public function setValue_ArrSmplr_Int(samplers:Array<Texture_Sampler>, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrSmplr_Int(nativeObject, ConversionTools.insertArray(samplers), count);
    }

    // DECL: void setValue(const Vector2& value);
    public function setValue_V2(value:IVector2):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_V2(nativeObject, value.native());
    }

    // DECL: void setValue(const Vector2* values, unsigned int count = 1);
    public function setValue_ArrV2_Int(values:INativeArray<Vector2>, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrV2_Int(nativeObject, values.native(), count);
    }

    // DECL: void setValue(const Vector3& value);
    public function setValue_V3(value:IVector3):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_V3(nativeObject, value.native());
    }

    // DECL: void setValue(const Vector3* values, unsigned int count = 1);
    public function setValue_ArrV3_Int(values:INativeArray<Vector3>, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrV3_Int(nativeObject, values.native(), count);
    }

    // DECL: void setValue(const Vector4& value);
    public function setValue_V4(value:IVector4):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_V4(nativeObject, value.native());
    }

    // DECL: void setValue(const Vector4* values, unsigned int count = 1);
    public function setValue_ArrV4_Int(values:INativeArray<Vector4>, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrV4_Int(nativeObject, values.native(), count);
    }

    // DECL: void setValue(const float* values, unsigned int count = 1);
    public function setValue_ArrFlt_Int(values:NativeArrayFloat, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrFlt_Int(nativeObject, values.native(), count);
    }

    // DECL: void setValue(const int* values, unsigned int count = 1);
    public function setValue_ArrInt_Int(values:NativeArrayInt, count:Int = 1):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_ArrInt_Int(nativeObject, values.native(), count);
    }

    // DECL: void setValue(float value);
    public function setValue_Flt(value:Float):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_Flt(nativeObject, value);
    }

    // DECL: void setValue(int value);
    public function setValue_Int(value:Int):Void
    {
        clearBinder();
        hx_MaterialParameter_setValue_Int(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_MaterialParameter_bindValue_Func_Str = NativeInterface.loadMember(MaterialParameter, "bindValue_Func_Str", 3);
    static var hx_MaterialParameter_bindValue_Node_Str = NativeInterface.loadMember(MaterialParameter, "bindValue_Node_Str", 3);
    static var hx_MaterialParameter_getAnimationPropertyComponentCount = NativeInterface.loadMember(MaterialParameter, "getAnimationPropertyComponentCount", 2);
    static var hx_MaterialParameter_getAnimationPropertyValue = NativeInterface.loadMember(MaterialParameter, "getAnimationPropertyValue", 3);
    static var hx_MaterialParameter_getName = NativeInterface.loadMember(MaterialParameter, "getName", 1);
    static var hx_MaterialParameter_getSampler = NativeInterface.loadMember(MaterialParameter, "getSampler", 2);
    static var hx_MaterialParameter_setAnimationPropertyValue = NativeInterface.loadMember(MaterialParameter, "setAnimationPropertyValue", 4);
    static var hx_MaterialParameter_setValue_Str_Bool = NativeInterface.loadMember(MaterialParameter, "setValue_Str_Bool", 3);
    static var hx_MaterialParameter_setValue_Mat = NativeInterface.loadMember(MaterialParameter, "setValue_Mat", 2);
    static var hx_MaterialParameter_setValue_ArrMat_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrMat_Int", 3);
    static var hx_MaterialParameter_setValue_Smplr = NativeInterface.loadMember(MaterialParameter, "setValue_Smplr", 2);
    static var hx_MaterialParameter_setValue_ArrSmplr_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrSmplr_Int", 3);
    static var hx_MaterialParameter_setValue_V2 = NativeInterface.loadMember(MaterialParameter, "setValue_V2", 2);
    static var hx_MaterialParameter_setValue_ArrV2_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrV2_Int", 3);
    static var hx_MaterialParameter_setValue_V3 = NativeInterface.loadMember(MaterialParameter, "setValue_V3", 2);
    static var hx_MaterialParameter_setValue_ArrV3_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrV3_Int", 3);
    static var hx_MaterialParameter_setValue_V4 = NativeInterface.loadMember(MaterialParameter, "setValue_V4", 2);
    static var hx_MaterialParameter_setValue_ArrV4_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrV4_Int", 3);
    static var hx_MaterialParameter_setValue_ArrFlt_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrFlt_Int", 3);
    static var hx_MaterialParameter_setValue_ArrInt_Int = NativeInterface.loadMember(MaterialParameter, "setValue_ArrInt_Int", 3);
    static var hx_MaterialParameter_setValue_Flt = NativeInterface.loadMember(MaterialParameter, "setValue_Flt", 2);
    static var hx_MaterialParameter_setValue_Int = NativeInterface.loadMember(MaterialParameter, "setValue_Int", 2);
}

// END
