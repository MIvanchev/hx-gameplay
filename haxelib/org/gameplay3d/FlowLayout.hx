package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class FlowLayout : public Layout
class FlowLayout extends Layout
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Layout::Type getType();
    override public function getType():Int
    {
        return hx_FlowLayout_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_FlowLayout_getType:Dynamic = cpp.Lib.load("gameplay", "hx_FlowLayout_getType", 1);
}

// END
