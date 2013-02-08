package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
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

    // DECL: void setDepthFunction(DepthFunction func);
    public function setDepthFunction(func:Int):Void
    {
        hx_RenderState_StateBlock_setDepthFunction(nativeObject, func);
    }

    // DECL: void setState(const char* name, const char* value);
    public function setState(name:String, value:String):Void
    {
        hx_RenderState_StateBlock_setState(nativeObject, name, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_RenderState_StateBlock_bind = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_bind", 1);
    static var hx_RenderState_StateBlock_static_create = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_static_create", 0);
    static var hx_RenderState_StateBlock_setBlend = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setBlend", 2);
    static var hx_RenderState_StateBlock_setBlendDst = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setBlendDst", 2);
    static var hx_RenderState_StateBlock_setBlendSrc = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setBlendSrc", 2);
    static var hx_RenderState_StateBlock_setCullFace = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setCullFace", 2);
    static var hx_RenderState_StateBlock_setDepthTest = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setDepthTest", 2);
    static var hx_RenderState_StateBlock_setDepthWrite = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setDepthWrite", 2);
    static var hx_RenderState_StateBlock_setDepthFunction = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setDepthFunction", 2);
    static var hx_RenderState_StateBlock_setState = cpp.Lib.load("gameplay", "hx_RenderState_StateBlock_setState", 3);
}

// END
