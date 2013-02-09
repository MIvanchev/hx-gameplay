package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Texture : public Ref
class Texture extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Texture* create(Format format, unsigned int width, unsigned int height, unsigned char* data, bool generateMipmaps = false);
    public static function create_IntX3_Dat_Bool(format:Int, width:Int, height:Int, data:BytesData, generateMipmaps:Bool = false):Texture
    {
        return Texture.wrap(hx_Texture_static_create_IntX3_Dat_Bool(format, width, height, data, generateMipmaps));
    }

    // DECL: static Texture* create(Image* image, bool generateMipmaps = false);
    public static function create_Img_Bool(image:Image, generateMipmaps:Bool = false):Texture
    {
        return Texture.wrap(hx_Texture_static_create_Img_Bool(image.native(), generateMipmaps));
    }

    // DECL: static Texture* create(TextureHandle handle, int width, int height, Format format = UNKNOWN);
    public static function create_Hndl_IntX3(handle:Handle, width:Int, height:Int, format:Int = Texture_Format.UNKNOWN):Texture
    {
        return Texture.wrap(hx_Texture_static_create_Hndl_IntX3(handle.native(), width, height, format));
    }

    // DECL: static Texture* create(const char* path, bool generateMipmaps = false);
    public static function create_Str_Bool(path:String, generateMipmaps:Bool = false):Texture
    {
        return Texture.wrap(hx_Texture_static_create_Str_Bool(path, generateMipmaps));
    }

    // DECL: void generateMipmaps();
    public function generateMipmaps():Void
    {
        hx_Texture_generateMipmaps(nativeObject);
    }

    // DECL: Format getFormat() const;
    public function getFormat():Int
    {
        return hx_Texture_getFormat(nativeObject);
    }

    // DECL: TextureHandle getHandle() const;
    public function getHandle():Handle
    {
        return Handle.wrap(hx_Texture_getHandle(nativeObject));
    }

    // DECL: unsigned int getHeight() const;
    public function getHeight():Int
    {
        return hx_Texture_getHeight(nativeObject);
    }

    // DECL: const char* getPath() const;
    public function getPath():String
    {
        return hx_Texture_getPath(nativeObject);
    }

    // DECL: unsigned int getWidth() const;
    public function getWidth():Int
    {
        return hx_Texture_getWidth(nativeObject);
    }

    // DECL: bool isCompressed() const;
    public function isCompressed():Bool
    {
        return hx_Texture_isCompressed(nativeObject);
    }

    // DECL: bool isMipmapped() const;
    public function isMipmapped():Bool
    {
        return hx_Texture_isMipmapped(nativeObject);
    }

    // DECL: void setFilterMode(Filter minificationFilter, Filter magnificationFilter);
    public function setFilterMode(minificationFilter:Int, magnificationFilter:Int):Void
    {
        hx_Texture_setFilterMode(nativeObject, minificationFilter, magnificationFilter);
    }

    // DECL: void setWrapMode(Wrap wrapS, Wrap wrapT);
    public function setWrapMode(wrapS:Int, wrapT:Int):Void
    {
        hx_Texture_setWrapMode(nativeObject, wrapS, wrapT);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Texture_static_create_IntX3_Dat_Bool = NativeInterface.loadMember(Texture, "static_create_IntX3_Dat_Bool", 5);
    static var hx_Texture_static_create_Img_Bool = NativeInterface.loadMember(Texture, "static_create_Img_Bool", 2);
    static var hx_Texture_static_create_Hndl_IntX3 = NativeInterface.loadMember(Texture, "static_create_Hndl_IntX3", 4);
    static var hx_Texture_static_create_Str_Bool = NativeInterface.loadMember(Texture, "static_create_Str_Bool", 2);
    static var hx_Texture_generateMipmaps = NativeInterface.loadMember(Texture, "generateMipmaps", 1);
    static var hx_Texture_getFormat = NativeInterface.loadMember(Texture, "getFormat", 1);
    static var hx_Texture_getHandle = NativeInterface.loadMember(Texture, "getHandle", 1);
    static var hx_Texture_getHeight = NativeInterface.loadMember(Texture, "getHeight", 1);
    static var hx_Texture_getPath = NativeInterface.loadMember(Texture, "getPath", 1);
    static var hx_Texture_getWidth = NativeInterface.loadMember(Texture, "getWidth", 1);
    static var hx_Texture_isCompressed = NativeInterface.loadMember(Texture, "isCompressed", 1);
    static var hx_Texture_isMipmapped = NativeInterface.loadMember(Texture, "isMipmapped", 1);
    static var hx_Texture_setFilterMode = NativeInterface.loadMember(Texture, "setFilterMode", 3);
    static var hx_Texture_setWrapMode = NativeInterface.loadMember(Texture, "setWrapMode", 3);
}

// END
