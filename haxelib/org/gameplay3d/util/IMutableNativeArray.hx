package org.gameplay3d.util;

/**
 * TODO
 */
interface IMutableNativeArray<T> extends INativeArray<T>
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    /**
     * TODO
     */
    public function setAt(element:Int, value:T):Void;
}
