package org.gameplay3d;

import org.gameplay3d.util.INativeArray;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AnimationValue : public GameplayObject
class AnimationValue extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float getFloat(unsigned int index) const;
    public function getFloat(index:Int):Float
    {
        return hx_AnimationValue_getFloat(nativeObject, index);
    }

    // DECL: void getFloats(unsigned int index, float* values, unsigned int count) const;
    public function getFloats(index:Int, values:NativeArrayFloat, count:Int):Void
    {
        hx_AnimationValue_getFloats(nativeObject, index, values.native(), count);
    }

    // DECL: void setFloat(unsigned int index, float value);
    public function setFloat(index:Int, value:Float):Void
    {
        hx_AnimationValue_setFloat(nativeObject, index, value);
    }

    // DECL: void setFloats(unsigned int index, float* values, unsigned int count);
    public function setFloats(index:Int, values:NativeArrayFloat, count:Int):Void
    {
        hx_AnimationValue_setFloats(nativeObject, index, values.native(), count);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationValue_getFloat = NativeInterface.loadMember(AnimationValue, "getFloat", 2);
    static var hx_AnimationValue_getFloats = NativeInterface.loadMember(AnimationValue, "getFloats", 4);
    static var hx_AnimationValue_setFloat = NativeInterface.loadMember(AnimationValue, "setFloat", 3);
    static var hx_AnimationValue_setFloats = NativeInterface.loadMember(AnimationValue, "setFloats", 4);
}

// END
