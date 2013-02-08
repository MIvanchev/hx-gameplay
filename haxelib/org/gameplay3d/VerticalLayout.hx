package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class VerticalLayout : public Layout
class VerticalLayout extends Layout
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: bool getBottomToTop();
    public function getBottomToTop():Bool
    {
        return hx_VerticalLayout_getBottomToTop(nativeObject);
    }

    // DECL: Layout::Type getType();
    override public function getType():Int
    {
        return hx_VerticalLayout_getType(nativeObject);
    }

    // DECL: void setBottomToTop(bool bottomToTop);
    public function setBottomToTop(bottomToTop:Bool):Void
    {
        hx_VerticalLayout_setBottomToTop(nativeObject, bottomToTop);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_VerticalLayout_getBottomToTop = cpp.Lib.load("gameplay", "hx_VerticalLayout_getBottomToTop", 1);
    static var hx_VerticalLayout_getType = cpp.Lib.load("gameplay", "hx_VerticalLayout_getType", 1);
    static var hx_VerticalLayout_setBottomToTop = cpp.Lib.load("gameplay", "hx_VerticalLayout_setBottomToTop", 2);
}

// END
