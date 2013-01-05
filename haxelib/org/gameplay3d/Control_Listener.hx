package org.gameplay3d;

// DECL: class Listener
interface Control_Listener
{
    // DECL: virtual void controlEvent(Control* control, EventType evt) = 0;
    public function controlEvent(control:Control, evt:Int):Void;
}

// END
