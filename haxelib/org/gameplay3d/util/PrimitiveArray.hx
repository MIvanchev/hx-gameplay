package org.gameplay3d.util;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.NativeBinding;

typedef NativeArrayInt = IMutableNativeArray<Int>;
typedef NativeArrayUint = IMutableNativeArray<Int>;
typedef NativeArrayShort = IMutableNativeArray<Int>;
typedef NativeArrayUshort = IMutableNativeArray<Int>;
typedef NativeArrayChar = IMutableNativeArray<Int>;
typedef NativeArrayByte = IMutableNativeArray<Int>;
typedef NativeArrayFloat = IMutableNativeArray<Float>;
typedef NativeArrayDouble = IMutableNativeArray<Float>;

/**
 * TODO
 */
class PrimitiveArray<T> extends NativeBinding,
        implements IMutableNativeArray<T>,
        implements INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var length(default, null):Int;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var getter:Dynamic->Int->T;
    var setter:Dynamic->Int->T->Void;

    function new(
            nativeObject:Dynamic,
            getter:Dynamic->Int->T,
            setter:Dynamic->Int->T->Void,
            length:Int
        )
    {
        impersonate(nativeObject);
        this.getter = getter;
        this.setter = setter;
        this.length = length;
    }

    public inline function getAt(index:Int):T
    {
        return getter(nativeObject, index);
    }

    public inline function setAt(index:Int, value:T):Void
    {
        setter(nativeObject, index, value);
    }

    /***************************************************************************
     * FACTORY METHODS                                                         *
     **************************************************************************/

    public static function constructIntArray(length = 1, reclaim = true):NativeArrayInt
    {
        return
            new PrimitiveArray(
                        allocNativeArrayInt(length, reclaim),
                        getNativeArrayElementInt,
                        setNativeArrayElementInt,
                        length
                    );

    }

    public static function constructUintArray(length = 1, reclaim = true):NativeArrayUint
    {
        return
            new PrimitiveArray(
                        allocNativeArrayUint(length, reclaim),
                        getNativeArrayElementUint,
                        setNativeArrayElementUint,
                        length
                    );

    }

    public static function constructShortArray(length = 1, reclaim = true):NativeArrayShort
    {
        return
            new PrimitiveArray(
                        allocNativeArrayShort(length, reclaim),
                        getNativeArrayElementShort,
                        setNativeArrayElementShort,
                        length
                    );

    }

    public static function constructUshortArray(length = 1, reclaim = true):NativeArrayUshort
    {
        return
            new PrimitiveArray(
                        allocNativeArrayUshort(length, reclaim),
                        getNativeArrayElementUshort,
                        setNativeArrayElementUshort,
                        length
                    );

    }

    public static function constructCharArray(length = 1, reclaim = true):NativeArrayChar
    {
        return
            new PrimitiveArray(
                        allocNativeArrayChar(length, reclaim),
                        getNativeArrayElementChar,
                        setNativeArrayElementChar,
                        length
                    );

    }

    public static function constructByteArray(length = 1, reclaim = true):NativeArrayByte
    {
        return
            new PrimitiveArray(
                        allocNativeArrayByte(length, reclaim),
                        getNativeArrayElementByte,
                        setNativeArrayElementByte,
                        length
                    );

    }

    public static function constructFloatArray(length = 1, reclaim = true):NativeArrayFloat
    {
        return
            new PrimitiveArray(
                        allocNativeArrayFloat(length, reclaim),
                        getNativeArrayElementFloat,
                        setNativeArrayElementFloat,
                        length
                    );

    }

    public static function constructDoubleArray(length = 1, reclaim = true):NativeArrayDouble
    {
        return
            new PrimitiveArray(
                        allocNativeArrayDouble(length, reclaim),
                        getNativeArrayElementDouble,
                        setNativeArrayElementDouble,
                        length
                    );

    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var allocNativeArrayInt = cpp.Lib.load("gameplay", "allocNativeArrayInt", 2);
    static var allocNativeArrayUint = cpp.Lib.load("gameplay", "allocNativeArrayUint", 2);
    static var allocNativeArrayShort = cpp.Lib.load("gameplay", "allocNativeArrayShort", 2);
    static var allocNativeArrayUshort = cpp.Lib.load("gameplay", "allocNativeArrayUshort", 2);
    static var allocNativeArrayChar = cpp.Lib.load("gameplay", "allocNativeArrayChar", 2);
    static var allocNativeArrayByte = cpp.Lib.load("gameplay", "allocNativeArrayByte", 2);
    static var allocNativeArrayFloat = cpp.Lib.load("gameplay", "allocNativeArrayFloat", 2);
    static var allocNativeArrayDouble = cpp.Lib.load("gameplay", "allocNativeArrayDouble", 2);
    static var getNativeArrayElementInt = cpp.Lib.load("gameplay", "getNativeArrayElementInt", 2);
    static var getNativeArrayElementUint = cpp.Lib.load("gameplay", "getNativeArrayElementUint", 2);
    static var getNativeArrayElementShort = cpp.Lib.load("gameplay", "getNativeArrayElementShort", 2);
    static var getNativeArrayElementUshort = cpp.Lib.load("gameplay", "getNativeArrayElementUshort", 2);
    static var getNativeArrayElementChar = cpp.Lib.load("gameplay", "getNativeArrayElementChar", 2);
    static var getNativeArrayElementByte = cpp.Lib.load("gameplay", "getNativeArrayElementByte", 2);
    static var getNativeArrayElementFloat = cpp.Lib.load("gameplay", "getNativeArrayElementFloat", 2);
    static var getNativeArrayElementDouble = cpp.Lib.load("gameplay", "getNativeArrayElementDouble", 2);
    static var setNativeArrayElementInt = cpp.Lib.load("gameplay", "setNativeArrayElementInt", 3);
    static var setNativeArrayElementUint = cpp.Lib.load("gameplay", "setNativeArrayElementUint", 3);
    static var setNativeArrayElementShort = cpp.Lib.load("gameplay", "setNativeArrayElementShort", 3);
    static var setNativeArrayElementUshort = cpp.Lib.load("gameplay", "setNativeArrayElementUshort", 3);
    static var setNativeArrayElementChar = cpp.Lib.load("gameplay", "setNativeArrayElementChar", 3);
    static var setNativeArrayElementByte = cpp.Lib.load("gameplay", "setNativeArrayElementByte", 3);
    static var setNativeArrayElementFloat = cpp.Lib.load("gameplay", "setNativeArrayElementFloat", 3);
    static var setNativeArrayElementDouble = cpp.Lib.load("gameplay", "setNativeArrayElementDouble", 3);
}
