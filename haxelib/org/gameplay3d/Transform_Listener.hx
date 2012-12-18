package org.gameplay3d;

import dk.bluewolf.gameplay.INativeBinding;

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
