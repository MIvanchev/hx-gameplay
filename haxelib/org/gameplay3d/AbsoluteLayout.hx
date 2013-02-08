package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
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

    static var hx_AbsoluteLayout_getType = NativeInterface.loadMember(AbsoluteLayout, "getType", 1);
}

// END
