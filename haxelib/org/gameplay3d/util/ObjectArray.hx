package org.gameplay3d.util;

import org.gameplay3d.intern.NativeBinding;
import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */

class ObjectArray<T : GameplayObject> extends NativeBinding
        implements INativeArray<T>
        implements INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var length(default, null):Int;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var objects:Array<T>;

    function new(classObj:Class<T>, nativeObject, length)
    {
        this.nativeObject = nativeObject;
        this.length = length;

        // Extract the array elements.
        //

        var name = Type.getClassName(classObj);
        var packageEnd = name.lastIndexOf(".");
        if (packageEnd != -1)
            name = name.substr(packageEnd + 1);

        var getter = NativeInterface.load('getNativeArrayElement$name', 2);

        objects = [];
        for (index in 0...length)
            objects.push(GameplayObject.wrap(classObj, getter(index)));
    }

    public inline function getAt(index:Int):T
    {
        return objects[index];
    }

    /***************************************************************************
     * FACTORY METHODS                                                         *
     **************************************************************************/

    @:generic
    public static function constructArray<T : GameplayObject>(classObj:Class<T>, length = 1, reclaim = true):INativeArray<T>
    {
        // Load the necessary native functions.
        //

        var name = Type.getClassName(classObj);
        var packageEnd = name.lastIndexOf(".");
        if (packageEnd != -1)
            name = name.substr(packageEnd + 1);

        var constructor = NativeInterface.load('allocNativeArray$name', 2);

        // Construct the array.
        //

        return new ObjectArray<T>(classObj, constructor(length, reclaim), length);
    }
}
