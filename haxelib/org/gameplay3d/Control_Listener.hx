package org.gameplay3d;

import dk.bluewolf.gameplay.INativeBinding;

// DECL: class Listener : public GameplayObject
interface Control_Listener implements INativeBinding
{
    // DECL: virtual void controlEvent(Control* control, EventType evt) = 0;
    public function controlEvent(control:Control, evt:Int):Void;
}

// END
