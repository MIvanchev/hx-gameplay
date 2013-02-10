package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Theme: public Ref
class Theme extends GameplayObject implements Ref
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

    static var hx_Theme_static_create = NativeInterface.loadMember(Theme, "static_create", 1);
    static var hx_Theme_getEmptyStyle = NativeInterface.loadMember(Theme, "getEmptyStyle", 1);
    static var hx_Theme_getStyle = NativeInterface.loadMember(Theme, "getStyle", 2);
}

// END
