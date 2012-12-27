package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;

// DECL: class Listener : public GameplayObject
interface Transform_Listener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void transformChanged(Transform* transform, long cookie) = 0;
    public function transformChanged(transform:Transform, cookie:Int):Void;
}

// END
