package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class RenderTarget : public Ref
class RenderTarget extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static RenderTarget* create(const char* id, Texture* texture);
    public static function create_Str_Tex(id:String, texture:Texture):RenderTarget
    {
        return RenderTarget.wrap(hx_RenderTarget_static_create_Str_Tex(id, texture.native()));
    }

    // DECL: static RenderTarget* create(const char* id, unsigned int width, unsigned int height);
    public static function create_Str_IntX2(id:String, width:Int, height:Int):RenderTarget
    {
        return RenderTarget.wrap(hx_RenderTarget_static_create_Str_IntX2(id, width, height));
    }

    // DECL: unsigned int getHeight() const;
    public function getHeight():Int
    {
        return hx_RenderTarget_getHeight(nativeObject);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_RenderTarget_getId(nativeObject);
    }

    // DECL: static RenderTarget* getRenderTarget(const char* id);
    public static function getRenderTarget(id:String):RenderTarget
    {
        return RenderTarget.wrap(hx_RenderTarget_static_getRenderTarget(id));
    }

    // DECL: Texture* getTexture() const;
    public function getTexture():Texture
    {
        return Texture.wrap(hx_RenderTarget_getTexture(nativeObject));
    }

    // DECL: unsigned int getWidth() const;
    public function getWidth():Int
    {
        return hx_RenderTarget_getWidth(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_RenderTarget_static_create_Str_Tex:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_static_create_Str_Tex", 2);
    static var hx_RenderTarget_static_create_Str_IntX2:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_static_create_Str_IntX2", 3);
    static var hx_RenderTarget_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_getHeight", 1);
    static var hx_RenderTarget_getId:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_getId", 1);
    static var hx_RenderTarget_static_getRenderTarget:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_static_getRenderTarget", 1);
    static var hx_RenderTarget_getTexture:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_getTexture", 1);
    static var hx_RenderTarget_getWidth:Dynamic = cpp.Lib.load("gameplay", "hx_RenderTarget_getWidth", 1);
}

// END
