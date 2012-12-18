package org.gameplay3d;

import haxe.io.BytesData;
import dk.bluewolf.gameplay.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using dk.bluewolf.gameplay.NativeBinding;
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
    public function getFloats(index:Int, values:OutParameter<BytesData>, count:Int):Void
    {
        var _values = new NativeOutParameter();
        hx_AnimationValue_getFloats(nativeObject, index, _values.native(), count);
        values.value = _values.value;
    }

    // DECL: void setFloat(unsigned int index, float value);
    public function setFloat(index:Int, value:Float):Void
    {
        hx_AnimationValue_setFloat(nativeObject, index, value);
    }

    // DECL: void setFloats(unsigned int index, float* values, unsigned int count);
    public function setFloats(index:Int, values:BytesData, count:Int):Void
    {
        hx_AnimationValue_setFloats(nativeObject, index, values, count);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AnimationValue_getFloat:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationValue_getFloat", 2);
    static var hx_AnimationValue_getFloats:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationValue_getFloats", 4);
    static var hx_AnimationValue_setFloat:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationValue_setFloat", 3);
    static var hx_AnimationValue_setFloats:Dynamic = cpp.Lib.load("gameplay", "hx_AnimationValue_setFloats", 4);
}

// END
