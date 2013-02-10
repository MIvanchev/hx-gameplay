package org.gameplay3d.intern.impl;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.Transform_Listener;

// DECL: class Listener : public GameplayObject
class Transform_ListenerImpl extends GameplayObject implements Transform_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void transformChanged(Transform* transform, long cookie) = 0;
    public function transformChanged(transform:Transform, cookie:Int):Void
    {
    }
}

// END
