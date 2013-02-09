package org.gameplay3d;
import org.gameplay3d.util.NativeInterface;

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

    static var hx_Texture_Sampler_bind = NativeInterface.loadMember(Texture_Sampler, "bind", 1);
    static var hx_Texture_Sampler_static_create_Tex = NativeInterface.loadMember(Texture_Sampler, "static_create_Tex", 1);
    static var hx_Texture_Sampler_static_create_Str_Bool = NativeInterface.loadMember(Texture_Sampler, "static_create_Str_Bool", 2);
    static var hx_Texture_Sampler_getTexture = NativeInterface.loadMember(Texture_Sampler, "getTexture", 1);
    static var hx_Texture_Sampler_setFilterMode = NativeInterface.loadMember(Texture_Sampler, "setFilterMode", 3);
    static var hx_Texture_Sampler_setWrapMode = NativeInterface.loadMember(Texture_Sampler, "setWrapMode", 3);
}

// END
