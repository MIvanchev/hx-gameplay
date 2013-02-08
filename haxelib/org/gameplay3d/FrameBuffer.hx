package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class FrameBuffer : public Ref
class FrameBuffer extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bind();
    public function bind():Void
    {
        hx_FrameBuffer_bind(nativeObject);
    }

    // DECL: static void bindDefault();
    public static function bindDefault():Void
    {
        hx_FrameBuffer_static_bindDefault();
    }

    // DECL: static FrameBuffer* create(const char* id);
    public static function create_Str(id:String):FrameBuffer
    {
        return FrameBuffer.wrap(hx_FrameBuffer_static_create_Str(id));
    }

    // DECL: static FrameBuffer* create(const char* id, unsigned int width, unsigned int height);
    public static function create_Str_IntX2(id:String, width:Int, height:Int):FrameBuffer
    {
        return FrameBuffer.wrap(hx_FrameBuffer_static_create_Str_IntX2(id, width, height));
    }

    // DECL: DepthStencilTarget* getDepthStencilTarget() const;
    public function getDepthStencilTarget():DepthStencilTarget
    {
        return DepthStencilTarget.wrap(hx_FrameBuffer_getDepthStencilTarget(nativeObject));
    }

    // DECL: static FrameBuffer* getFrameBuffer(const char* id);
    public static function getFrameBuffer(id:String):FrameBuffer
    {
        return FrameBuffer.wrap(hx_FrameBuffer_static_getFrameBuffer(id));
    }

    // DECL: unsigned int getHeight() const;
    public function getHeight():Int
    {
        return hx_FrameBuffer_getHeight(nativeObject);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_FrameBuffer_getId(nativeObject);
    }

    // DECL: static unsigned int getMaxRenderTargets();
    public static function getMaxRenderTargets():Int
    {
        return hx_FrameBuffer_static_getMaxRenderTargets();
    }

    // DECL: RenderTarget* getRenderTarget(unsigned int index = 0) const;
    public function getRenderTarget(index:Int = 0):RenderTarget
    {
        return RenderTarget.wrap(hx_FrameBuffer_getRenderTarget(nativeObject, index));
    }

    // DECL: unsigned int getWidth() const;
    public function getWidth():Int
    {
        return hx_FrameBuffer_getWidth(nativeObject);
    }

    // DECL: void setDepthStencilTarget(DepthStencilTarget* target);
    public function setDepthStencilTarget(target:DepthStencilTarget):Void
    {
        hx_FrameBuffer_setDepthStencilTarget(nativeObject, target.native());
    }

    // DECL: void setRenderTarget(RenderTarget* target, unsigned int index = 0);
    public function setRenderTarget(target:RenderTarget, index:Int = 0):Void
    {
        hx_FrameBuffer_setRenderTarget(nativeObject, target.native(), index);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_FrameBuffer_bind = cpp.Lib.load("gameplay", "hx_FrameBuffer_bind", 1);
    static var hx_FrameBuffer_static_bindDefault = cpp.Lib.load("gameplay", "hx_FrameBuffer_static_bindDefault", 0);
    static var hx_FrameBuffer_static_create_Str = cpp.Lib.load("gameplay", "hx_FrameBuffer_static_create_Str", 1);
    static var hx_FrameBuffer_static_create_Str_IntX2 = cpp.Lib.load("gameplay", "hx_FrameBuffer_static_create_Str_IntX2", 3);
    static var hx_FrameBuffer_getDepthStencilTarget = cpp.Lib.load("gameplay", "hx_FrameBuffer_getDepthStencilTarget", 1);
    static var hx_FrameBuffer_static_getFrameBuffer = cpp.Lib.load("gameplay", "hx_FrameBuffer_static_getFrameBuffer", 1);
    static var hx_FrameBuffer_getHeight = cpp.Lib.load("gameplay", "hx_FrameBuffer_getHeight", 1);
    static var hx_FrameBuffer_getId = cpp.Lib.load("gameplay", "hx_FrameBuffer_getId", 1);
    static var hx_FrameBuffer_static_getMaxRenderTargets = cpp.Lib.load("gameplay", "hx_FrameBuffer_static_getMaxRenderTargets", 0);
    static var hx_FrameBuffer_getRenderTarget = cpp.Lib.load("gameplay", "hx_FrameBuffer_getRenderTarget", 2);
    static var hx_FrameBuffer_getWidth = cpp.Lib.load("gameplay", "hx_FrameBuffer_getWidth", 1);
    static var hx_FrameBuffer_setDepthStencilTarget = cpp.Lib.load("gameplay", "hx_FrameBuffer_setDepthStencilTarget", 2);
    static var hx_FrameBuffer_setRenderTarget = cpp.Lib.load("gameplay", "hx_FrameBuffer_setRenderTarget", 3);
}

// END
