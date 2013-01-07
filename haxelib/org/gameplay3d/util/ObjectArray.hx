package org.gameplay3d.util;

import cpp.Lib;
import org.gameplay3d.intern.NativeBinding;
import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
class ObjectArray<T : GameplayObject> extends NativeBinding,
        implements INativeArray<T>,
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

    public function new(nativeObject, objects:Array<T>)
    {
        this.nativeObject = nativeObject;
        this.length = objects.length;
        this.objects = objects;
    }

    public inline function getAt(index:Int):T
    {
        return objects[index];
    }

    /***************************************************************************
     * FACTORY METHODS                                                         *
     **************************************************************************/

    @:generic
    public static function constructArray<T : GameplayObject>(classObj:Class<T>, length, reclaim = true):INativeArray<T>
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

        return new ObjectArray<T>(nativeObject, objects);
    }
}
