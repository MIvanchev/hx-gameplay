package org.gameplay3d;

// DECL: class Listener
interface Transform_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void transformChanged(Transform* transform, long cookie) = 0;
    public function transformChanged(transform:Transform, cookie:Int):Void;
}

// END
