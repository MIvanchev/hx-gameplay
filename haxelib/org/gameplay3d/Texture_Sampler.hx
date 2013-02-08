package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Sampler : public Ref
class Texture_Sampler extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bind();
    public function bind():Void
    {
        hx_Texture_Sampler_bind(nativeObject);
    }

    // DECL: static Sampler* create(Texture* texture);
    public static function create_Tex(texture:Texture):Texture_Sampler
    {
        return Texture_Sampler.wrap(hx_Texture_Sampler_static_create_Tex(texture.native()));
    }

    // DECL: static Sampler* create(const char* path, bool generateMipmaps = false);
    public static function create_Str_Bool(path:String, generateMipmaps:Bool = false):Texture_Sampler
    {
        return Texture_Sampler.wrap(hx_Texture_Sampler_static_create_Str_Bool(path, generateMipmaps));
    }

    // DECL: Texture* getTexture() const;
    public function getTexture():Texture
    {
        return Texture.wrap(hx_Texture_Sampler_getTexture(nativeObject));
    }

    // DECL: void setFilterMode(Filter minificationFilter, Filter magnificationFilter);
    public function setFilterMode(minificationFilter:Int, magnificationFilter:Int):Void
    {
        hx_Texture_Sampler_setFilterMode(nativeObject, minificationFilter, magnificationFilter);
    }

    // DECL: void setWrapMode(Wrap wrapS, Wrap wrapT);
    public function setWrapMode(wrapS:Int, wrapT:Int):Void
    {
        hx_Texture_Sampler_setWrapMode(nativeObject, wrapS, wrapT);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Texture_Sampler_bind = cpp.Lib.load("gameplay", "hx_Texture_Sampler_bind", 1);
    static var hx_Texture_Sampler_static_create_Tex = cpp.Lib.load("gameplay", "hx_Texture_Sampler_static_create_Tex", 1);
    static var hx_Texture_Sampler_static_create_Str_Bool = cpp.Lib.load("gameplay", "hx_Texture_Sampler_static_create_Str_Bool", 2);
    static var hx_Texture_Sampler_getTexture = cpp.Lib.load("gameplay", "hx_Texture_Sampler_getTexture", 1);
    static var hx_Texture_Sampler_setFilterMode = cpp.Lib.load("gameplay", "hx_Texture_Sampler_setFilterMode", 3);
    static var hx_Texture_Sampler_setWrapMode = cpp.Lib.load("gameplay", "hx_Texture_Sampler_setWrapMode", 3);
}

// END
