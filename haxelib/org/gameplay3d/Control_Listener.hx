package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;

// DECL: class Listener : public GameplayObject
interface Control_Listener implements INativeBinding
{
    // DECL: virtual void controlEvent(Control* control, EventType evt) = 0;
    public function controlEvent(control:Control, evt:Int):Void;
}

// END
