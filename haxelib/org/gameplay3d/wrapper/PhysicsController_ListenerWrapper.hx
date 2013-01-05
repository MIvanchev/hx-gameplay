package org.gameplay3d.wrapper;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.PhysicsController_Listener;

// DECL: class Listener
class PhysicsController_ListenerWrapper extends GameplayObject, implements PhysicsController_Listener
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):PhysicsController_Listener;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    function new(target, nativeObject, nativeObjectInitializerParams)
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.target = target;
    }

    public static function make(target)
    {
        return new PhysicsController_ListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void statusEvent(EventType type) = 0;
    public function statusEvent(type:Int):Void
    {
        target.statusEvent(type);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:PhysicsController_ListenerWrapper):Dynamic
    {
        return hx_PhysicsController_Listener_Construct(thisObj.statusEvent);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_Listener_Construct", 1);
}

// END
