package org.gameplay3d.wrapper;

import org.gameplay3d.Control;
import org.gameplay3d.Control_Listener;
import org.gameplay3d.intern.ListenerWrapper;

using org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class Control_ListenerWrapper extends ListenerWrapper<Control_Listener>, implements Control_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: (none)
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

    static var hx_Control_Listener_Construct = cpp.Lib.load("gameplay", "hx_Control_Listener_Construct", 1);
}

// END
