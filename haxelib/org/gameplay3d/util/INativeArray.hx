package org.gameplay3d.util;

import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
interface INativeArray<T> extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    /**
     * TODO
     */
    public var length(default, null):Int;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    /**
     * TODO
     */
    public function getAt(index:Int):T;
}
