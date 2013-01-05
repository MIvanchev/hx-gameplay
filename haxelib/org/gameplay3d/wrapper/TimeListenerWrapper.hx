package org.gameplay3d.wrapper;

import org.gameplay3d.util.Handle;
import org.gameplay3d.GameplayObject;
import org.gameplay3d.TimeListener;

// DECL: class TimeListener : public GameplayObject
class TimeListenerWrapper extends GameplayObject, implements TimeListener
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):TimeListener;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    function new(target, nativeObject, nativeObjectInitializerParams)
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.target = target;
    }

    // DECL: TimeListener();
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

    static var hx_TimeListener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_TimeListener_Construct", 1);
}

// END
