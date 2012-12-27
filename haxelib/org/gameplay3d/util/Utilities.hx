package org.gameplay3d.util;

import cpp.Lib;
import org.gameplay3d.GameplayObject;
import org.gameplay3d.intern.INativeBinding;

typedef NativeArrayInt = IAssignableNativeArray<Int>;
typedef NativeArrayUint = IAssignableNativeArray<Int>;
typedef NativeArrayChar = IAssignableNativeArray<Int>;
typedef NativeArrayByte = IAssignableNativeArray<Int>;
typedef NativeArrayFloat = IAssignableNativeArray<Float>;
typedef NativeArrayDouble = IAssignableNativeArray<Float>;

/**
 * TODO
 */
class Utilities
{
    @:generic
    public static function createObjectArray<T : GameplayObject>(classObj:Class<T>, length, reclaim = true):INativeArray<T>
    {
        // Load the necessary native functions.
        //

        var name = Type.getClassName(classObj);
        var packageEnd = name.lastIndexOf(".");
        if (packageEnd != -1)
            name = name.substr(packageEnd + 1);

        var constructor = Lib.load("gameplay", 'allocNativeArray$name', 2);
        var getter = Lib.load("gameplay", 'getNativeArrayElement$name', 2);

        // Construct the native array.
        //

        var nativeObject = constructor(length, reclaim);
        var objects = [];
        for (index in 0...length)
            objects[index] = GameplayObject.wrap(classObj, getter(nativeObject, index));

        return new GameplayArray<T>(nativeObject, objects);
    }

    public static function createIntArray(length, reclaim = true):NativeArrayInt
    {
        return new PrimitiveArray("int", length, reclaim);
    }

    public static function createUintArray(length, reclaim = true):NativeArrayUint
    {
        return new PrimitiveArray("uint", length, reclaim);
    }

    public static function createCharArray(length, reclaim = true):NativeArrayChar
    {
        return new PrimitiveArray("char", length, reclaim);
    }

    public static function createByteArray(length, reclaim = true):NativeArrayByte
    {
        return new PrimitiveArray("byte", length, reclaim);
    }

    public static function createFloatArray(length, reclaim = true):NativeArrayFloat
    {
        return new PrimitiveArray("float", length, reclaim);
    }

    public static function createDoubleArray(length, reclaim = true):NativeArrayDouble
    {
        return new PrimitiveArray("double", length, reclaim);
    }
}

/**
 * TODO
 */
private class GameplayArray<T : GameplayObject> implements INativeArray<T>, implements INativeBinding
{
    @:isVar public var nativeObject(default, null):Dynamic;
    @:isVar public var length(default, null):Int;

    var objects:Array<T>;

    public function new(nativeObject, objects:Array<T>)
    {
        this.nativeObject = nativeObject;
        this.length = objects.length;
        this.objects = objects;
    }

    public function getAt(index:Int):T
    {
        return objects[index];
    }
}

/**
 * TODO
 */
private class PrimitiveArray<T> implements IAssignableNativeArray<T>, implements INativeBinding
{
    @:isVar public var nativeObject(default, null):Dynamic;
    @:isVar public var length(default, null):Int;

    var getter:Dynamic->Int->T;
    var setter:Dynamic->Int->T->Void;

    public function new(typeName:String, length:Int, reclaim:Bool)
    {
        var name = '$(typeName.charAt(0).toUpperCase())$(typeName.substr(1))';
        var constructor = Lib.load("gameplay", 'allocNativeArray$name', 2);
        getter = Lib.load("gameplay", 'getNativeArrayElement$name', 2);
        setter = Lib.load("gameplay", 'setNativeArrayElement$name', 3);

        nativeObject = constructor(length, reclaim);

        this.length = length;
    }

    public function getAt(index:Int):T
    {
        return getter(nativeObject, index);
    }

    public function setAt(index:Int, value:T):Void
    {
        setter(nativeObject, index, value);
    }
}
