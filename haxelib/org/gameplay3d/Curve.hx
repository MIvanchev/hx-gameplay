package org.gameplay3d;

import haxe.io.BytesData;
import dk.bluewolf.gameplay.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Curve : public Ref
class Curve extends GameplayObject, implements Ref
{
     /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Curve* create(unsigned int pointCount, unsigned int componentCount);
    public static function create(pointCount:Int, componentCount:Int):Curve
    {
        return Curve.wrap(hx_Curve_static_create(pointCount, componentCount));
    }

    // DECL: void evaluate(float time, float* dst) const;
    public function evaluate(time:Float, dst:OutParameter<BytesData>):Void
    {
        var _dst = new NativeOutParameter();
        hx_Curve_evaluate(nativeObject, time, _dst.native());
        dst.value = _dst.value;
    }

    // DECL: unsigned int getComponentCount() const;
    public function getComponentCount():Int
    {
        return hx_Curve_getComponentCount(nativeObject);
    }

    // DECL: float getEndTime() const;
    public function getEndTime():Float
    {
        return hx_Curve_getEndTime(nativeObject);
    }

    // DECL: unsigned int getPointCount() const;
    public function getPointCount():Int
    {
        return hx_Curve_getPointCount(nativeObject);
    }

    // DECL: float getStartTime() const;
    public function getStartTime():Float
    {
        return hx_Curve_getStartTime(nativeObject);
    }

    // DECL: static float lerp(float t, float from, float to);
    public static function lerp(t:Float, from:Float, to:Float):Float
    {
        return hx_Curve_static_lerp(t, from, to);
    }

    // DECL: void setPoint(unsigned int index, float time, float* value, InterpolationType type);
    public function setPoint_Int_Flt_Dat_Int(index:Int, time:Float, value:BytesData, type:Int):Void
    {
        hx_Curve_setPoint_Int_Flt_Dat_Int(nativeObject, index, time, value, type);
    }

    // DECL: void setPoint(unsigned int index, float time, float* value, InterpolationType type, float* inValue, float* outValue);
    public function setPoint_Int_Flt_Dat_Int_DatX2(index:Int, time:BytesData, value:Float, type:Int, inValue:BytesData, outValue:BytesData):Void
    {
        hx_Curve_setPoint_Int_Flt_Dat_Int_DatX2(nativeObject, index, time, value, type, inValue, outValue);
    }

    // DECL: void setTangent(unsigned int index, InterpolationType type, float* inValue, float* outValue);
    public function setTangent(index:Int, type:Int, inValue:BytesData, outValue:BytesData):Void
    {
        hx_Curve_setTangent(nativeObject, index, type, inValue, outValue);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Curve_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_static_create", 2);
    static var hx_Curve_evaluate:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_evaluate", 3);
    static var hx_Curve_getComponentCount:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_getComponentCount", 1);
    static var hx_Curve_getEndTime:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_getEndTime", 1);
    static var hx_Curve_getPointCount:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_getPointCount", 1);
    static var hx_Curve_getStartTime:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_getStartTime", 1);
    static var hx_Curve_static_lerp:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_static_lerp", 3);
    static var hx_Curve_setPoint_Int_Flt_Dat_Int:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_setPoint_Int_Flt_Dat_Int", 5);
    static var hx_Curve_setPoint_Int_Flt_Dat_Int_DatX2:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_setPoint_Int_Flt_Dat_Int_DatX2", -1);
    static var hx_Curve_setTangent:Dynamic = cpp.Lib.load("gameplay", "hx_Curve_setTangent", 5);
}

// END
