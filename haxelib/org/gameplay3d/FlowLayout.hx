package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
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

    static var hx_FlowLayout_getType = cpp.Lib.load("gameplay", "hx_FlowLayout_getType", 1);
}

// END
