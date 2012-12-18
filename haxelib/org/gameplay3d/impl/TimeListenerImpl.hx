package org.gameplay3d.impl;

import dk.bluewolf.gameplay.Handle;
import org.gameplay3d.GameplayObject;
import org.gameplay3d.TimeListener;

// DECL: class TimeListener : public GameplayObject
class TimeListenerImpl extends GameplayObject, implements TimeListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void timeEvent(long timeDiff, void* cookie) = 0;
    public function timeEvent(timeDiff:Int, cookie:Handle):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:TimeListenerImpl):Dynamic
    {
        var wrapper =
            function(timeDiff:Int, cookie:Dynamic)
            {
                thisObj.timeEvent(timeDiff, Handle.wrap(cookie));
            }
        return hx_TimeListener_Construct(wrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_TimeListener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_TimeListener_Construct", 1);
}

// END
