package org.gameplay3d.wrapper;

import org.gameplay3d.Control;
import org.gameplay3d.Control_Listener;
import org.gameplay3d.GameplayObject;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class Control_ListenerWrapper extends GameplayObject, implements Control_Listener
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):Control_Listener;

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
        return new Control_ListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void controlEvent(Control* control, EventType evt) = 0;
    public function controlEvent(control:Control, evt:Int):Void
    {
        target.controlEvent(control, evt);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function controlEventWrapper(control, evt)
    {
        controlEvent(Control.wrap(control), evt);
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:Control_ListenerWrapper):Dynamic
    {
        return hx_Control_Listener_Construct(thisObj.controlEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Control_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Control_Listener_Construct", 1);
}

// END
