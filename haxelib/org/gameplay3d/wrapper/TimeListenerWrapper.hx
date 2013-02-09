package org.gameplay3d.wrapper;

import org.gameplay3d.intern.ListenerWrapper;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.TimeListener;

// DECL: class TimeListener : public GameplayObject
class TimeListenerWrapper extends ListenerWrapper<TimeListener>, implements TimeListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: (none)
    public static function make(target)
    {
        return new TimeListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void timeEvent(long timeDiff, void* cookie) = 0;
    public function timeEvent(timeDiff:Int, cookie:Handle):Void
    {
        target.timeEvent(timeDiff, cookie);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function timeEventWrapper(timeDiff, cookie)
    {
        timeEvent(timeDiff, Handle.wrap(cookie));
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:TimeListenerWrapper):Dynamic
    {
        return hx_TimeListener_Construct(thisObj.timeEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_TimeListener_Construct = NativeInterface.loadMember(TimeListener, "Construct", 1);
}

// END
