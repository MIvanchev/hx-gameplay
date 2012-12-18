package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AbsoluteLayout : public Layout
class AbsoluteLayout extends Layout
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Layout::Type getType();
    override public function getType():Int
    {
        return hx_AbsoluteLayout_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AbsoluteLayout_getType:Dynamic = cpp.Lib.load("gameplay", "hx_AbsoluteLayout_getType", 1);
}

// END
