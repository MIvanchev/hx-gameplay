package org.gameplay3d;

import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.immutable.ITheme_UVs;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class ThemeImage : public Ref
class Theme_ThemeImage extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _color:Vector4;
    var _region:Rectangle;
    var _uvs:Theme_UVs;

    // DECL: const Vector4& getColor() const;
    public function getColor():IVector4
    {
        return Macros.impersonateResult(_color, hx_Theme_ThemeImage_getColor(nativeObject));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Theme_ThemeImage_getId(nativeObject);
    }

    // DECL: const Rectangle& getRegion() const;
    public function getRegion():IRectangle
    {
        return Macros.impersonateResult(_region, hx_Theme_ThemeImage_getRegion(nativeObject));
    }

    // DECL: const UVs& getUVs() const;
    public function getUVs():ITheme_UVs
    {
        return Macros.impersonateResult(_uvs, hx_Theme_ThemeImage_getUVs(nativeObject));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Theme_ThemeImage_getColor = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getColor", 1);
    static var hx_Theme_ThemeImage_getId = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getId", 1);
    static var hx_Theme_ThemeImage_getRegion = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getRegion", 1);
    static var hx_Theme_ThemeImage_getUVs = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getUVs", 1);
}

// END
