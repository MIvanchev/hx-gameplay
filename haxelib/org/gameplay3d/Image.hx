package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Image : public Ref
class Image extends GameplayObject implements Ref
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

    static var hx_Image_static_create = NativeInterface.loadMember(Image, "static_create", 1);
    static var hx_Image_getData = NativeInterface.loadMember(Image, "getData", 1);
    static var hx_Image_getFormat = NativeInterface.loadMember(Image, "getFormat", 1);
    static var hx_Image_getHeight = NativeInterface.loadMember(Image, "getHeight", 1);
    static var hx_Image_getWidth = NativeInterface.loadMember(Image, "getWidth", 1);
}

// END
