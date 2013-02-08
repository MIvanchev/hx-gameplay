package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Theme::Style : public GameplayObject
class Theme_Style extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Theme* getTheme() const;
    public function getTheme():Theme
    {
        return Theme.wrap(hx_Theme_Style_getTheme(nativeObject));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Theme_Style_getTheme = cpp.Lib.load("gameplay", "hx_Theme_Style_getTheme", 1);
}

// END
