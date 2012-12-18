package org.gameplay3d;

import dk.bluewolf.gameplay.Handle;
import dk.bluewolf.gameplay.INativeBinding;

// DECL: class TimeListener : public GameplayObject
interface TimeListener implements INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void timeEvent(long timeDiff, void* cookie) = 0;
    public function timeEvent(timeDiff:Int, cookie:Handle):Void;
}

// END
