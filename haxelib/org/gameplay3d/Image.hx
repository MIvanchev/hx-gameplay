package org.gameplay3d;

import haxe.io.BytesData;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Image : public Ref
class Image extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Image* create(const char* path);
    public static function create(path:String):Image
    {
        return Image.wrap(hx_Image_static_create(path));
    }

    // DECL: inline unsigned char* getData() const;
    public function getData():BytesData
    {
        return hx_Image_getData(nativeObject);
    }

    // DECL: inline Format getFormat() const;
    public function getFormat():Int
    {
        return hx_Image_getFormat(nativeObject);
    }

    // DECL: inline unsigned int getHeight() const;
    public function getHeight():Int
    {
        return hx_Image_getHeight(nativeObject);
    }

    // DECL: inline unsigned int getWidth() const;
    public function getWidth():Int
    {
        return hx_Image_getWidth(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Image_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Image_static_create", 1);
    static var hx_Image_getData:Dynamic = cpp.Lib.load("gameplay", "hx_Image_getData", 1);
    static var hx_Image_getFormat:Dynamic = cpp.Lib.load("gameplay", "hx_Image_getFormat", 1);
    static var hx_Image_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Image_getHeight", 1);
    static var hx_Image_getWidth:Dynamic = cpp.Lib.load("gameplay", "hx_Image_getWidth", 1);
}

// END
