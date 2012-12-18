package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Theme: public Ref
class Theme extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Theme* create(const char* url);
    public static function create(url:String):Theme
    {
        return Theme.wrap(hx_Theme_static_create(url));
    }

    // DECL: Theme::Style* getEmptyStyle();
    public function getEmptyStyle():Theme_Style
    {
        return Theme_Style.wrap(hx_Theme_getEmptyStyle(nativeObject));
    }

    // DECL: Theme::Style* getStyle(const char* id) const;
    public function getStyle(id:String):Theme_Style
    {
        return Theme_Style.wrap(hx_Theme_getStyle(nativeObject, id));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Theme_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_static_create", 1);
    static var hx_Theme_getEmptyStyle:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_getEmptyStyle", 1);
    static var hx_Theme_getStyle:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_getStyle", 2);
}

// END
