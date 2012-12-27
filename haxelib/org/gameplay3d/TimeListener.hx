package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.util.Handle;

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
