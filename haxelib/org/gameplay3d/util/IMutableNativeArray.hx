package org.gameplay3d.util;

/**
 * TODO
 */
interface IMutableNativeArray<T> implements INativeArray<T>
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    /**
     * TODO
     */
    public function setAt(element:Int, value:T):Void;
}
