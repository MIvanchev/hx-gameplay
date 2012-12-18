package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class StateBlock : public Ref
class RenderState_StateBlock extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bind();
    public function bind():Void
    {
        hx_RenderState_StateBlock_bind(nativeObject);
    }

    // DECL: static StateBlock* create();
    public static function create():RenderState_StateBlock
    {
        return RenderState_StateBlock.wrap(hx_RenderState_StateBlock_static_create());
    }

    // DECL: void setBlend(bool enabled);
    public function setBlend(enabled:Bool):Void
    {
        hx_RenderState_StateBlock_setBlend(nativeObject, enabled);
    }

    // DECL: void setBlendDst(Blend blend);
    public function setBlendDst(blend:Int):Void
    {
        hx_RenderState_StateBlock_setBlendDst(nativeObject, blend);
    }

    // DECL: void setBlendSrc(Blend blend);
    public function setBlendSrc(blend:Int):Void
    {
        hx_RenderState_StateBlock_setBlendSrc(nativeObject, blend);
    }

    // DECL: void setCullFace(bool enabled);
    public function setCullFace(enabled:Bool):Void
    {
        hx_RenderState_StateBlock_setCullFace(nativeObject, enabled);
    }

    // DECL: void setDepthTest(bool enabled);
    public function setDepthTest(enabled:Bool):Void
    {
        hx_RenderState_StateBlock_setDepthTest(nativeObject, enabled);
    }

    // DECL: void setDepthWrite(bool enabled);
    public function setDepthWrite(enabled:Bool):Void
    {
        hx_RenderState_StateBlock_setDepthWrite(nativeObject, enabled);
    }

    // DECL: void setState(const char* name, const char* value);
    public function setState(name:String, value:String):Void
    {
        hx_RenderState_StateBlock_setState(nativeObject, name, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_RenderState_StateBlock_bind:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_bind", 1);
    static var hx_RenderState_StateBlock_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_static_create", 0);
    static var hx_RenderState_StateBlock_setBlend:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setBlend", 2);
    static var hx_RenderState_StateBlock_setBlendDst:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setBlendDst", 2);
    static var hx_RenderState_StateBlock_setBlendSrc:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setBlendSrc", 2);
    static var hx_RenderState_StateBlock_setCullFace:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setCullFace", 2);
    static var hx_RenderState_StateBlock_setDepthTest:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setDepthTest", 2);
    static var hx_RenderState_StateBlock_setDepthWrite:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setDepthWrite", 2);
    static var hx_RenderState_StateBlock_setState:Dynamic = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setState", 3);
}

// END
