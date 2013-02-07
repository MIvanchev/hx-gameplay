package org.gameplay3d.intern;

import org.gameplay3d.GameplayObject;

/**
 * TODO
 */
class ListenerWrapper<T> extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):T;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    function new(target:T, nativeObject:Dynamic, nativeObjectInitializerParams:Array<Dynamic>)
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.target = target;
    }
}
