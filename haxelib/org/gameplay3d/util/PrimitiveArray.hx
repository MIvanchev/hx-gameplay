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
class PrimitiveArray<T> extends NativeBinding
        implements IMutableNativeArray<T>
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

    static var allocNativeArrayInt = NativeInterface.load("allocNativeArrayInt", 2);
    static var allocNativeArrayUint = NativeInterface.load("allocNativeArrayUint", 2);
    static var allocNativeArrayShort = NativeInterface.load("allocNativeArrayShort", 2);
    static var allocNativeArrayUshort = NativeInterface.load("allocNativeArrayUshort", 2);
    static var allocNativeArrayChar = NativeInterface.load("allocNativeArrayChar", 2);
    static var allocNativeArrayByte = NativeInterface.load("allocNativeArrayByte", 2);
    static var allocNativeArrayFloat = NativeInterface.load("allocNativeArrayFloat", 2);
    static var allocNativeArrayDouble = NativeInterface.load("allocNativeArrayDouble", 2);
    static var getNativeArrayElementInt = NativeInterface.load("getNativeArrayElementInt", 2);
    static var getNativeArrayElementUint = NativeInterface.load("getNativeArrayElementUint", 2);
    static var getNativeArrayElementShort = NativeInterface.load("getNativeArrayElementShort", 2);
    static var getNativeArrayElementUshort = NativeInterface.load("getNativeArrayElementUshort", 2);
    static var getNativeArrayElementChar = NativeInterface.load("getNativeArrayElementChar", 2);
    static var getNativeArrayElementByte = NativeInterface.load("getNativeArrayElementByte", 2);
    static var getNativeArrayElementFloat = NativeInterface.load("getNativeArrayElementFloat", 2);
    static var getNativeArrayElementDouble = NativeInterface.load("getNativeArrayElementDouble", 2);
    static var setNativeArrayElementInt = NativeInterface.load("setNativeArrayElementInt", 3);
    static var setNativeArrayElementUint = NativeInterface.load("setNativeArrayElementUint", 3);
    static var setNativeArrayElementShort = NativeInterface.load("setNativeArrayElementShort", 3);
    static var setNativeArrayElementUshort = NativeInterface.load("setNativeArrayElementUshort", 3);
    static var setNativeArrayElementChar = NativeInterface.load("setNativeArrayElementChar", 3);
    static var setNativeArrayElementByte = NativeInterface.load("setNativeArrayElementByte", 3);
    static var setNativeArrayElementFloat = NativeInterface.load("setNativeArrayElementFloat", 3);
    static var setNativeArrayElementDouble = NativeInterface.load("setNativeArrayElementDouble", 3);
}
