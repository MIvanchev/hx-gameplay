package org.gameplay3d.impl;

import org.gameplay3d.Control;
import org.gameplay3d.Control_Listener;
import org.gameplay3d.GameplayObject;

// DECL: class Listener : public GameplayObject
class Control_ListenerImpl extends GameplayObject, implements Control_Listener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void controlEvent(Control* control, EventType evt) = 0;
    public function controlEvent(control:Control, evt:Int):Void
    {
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: (none)
    static function constructNativeObject(thisObj:Control_ListenerImpl):Dynamic
    {
        return hx_Control_Listener_Construct(thisObj.controlEvent);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Control_Listener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Control_Listener_Construct", 1);
}

// END
