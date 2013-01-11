package org.gameplay3d;

import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.INativeBinding;

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

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        if (this.nativeObject == null)
        {
            _color = Vector4.make();
            _region = Rectangle.make();
        }
        return super.impersonate(nativeObject);
    }

    // DECL: const Vector4& getColor() const;
    public function getColor():IVector4
    {
        return _color.impersonate(hx_Theme_ThemeImage_getColor(nativeObject));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Theme_ThemeImage_getId(nativeObject);
    }

    // DECL: const Rectangle& getRegion() const;
    public function getRegion():IRectangle
    {
        return _region.impersonate(hx_Theme_ThemeImage_getRegion(nativeObject));
    }

    // DECL: const UVs& getUVs() const;
    public function getUVs():Theme_UVs
    {
        return Theme_UVs.wrap(hx_Theme_ThemeImage_getUVs(nativeObject));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Theme_ThemeImage_getColor:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getColor", 1);
    static var hx_Theme_ThemeImage_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getId", 1);
    static var hx_Theme_ThemeImage_getRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getRegion", 1);
    static var hx_Theme_ThemeImage_getUVs:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_ThemeImage_getUVs", 1);
}

// END
