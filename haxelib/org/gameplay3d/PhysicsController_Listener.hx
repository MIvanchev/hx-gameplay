package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;

// DECL: class Listener
interface PhysicsController_Listener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void statusEvent(EventType type) = 0;
    public function statusEvent(type:Int):Void;
}

// END
