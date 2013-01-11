package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class DepthStencilTarget : public Ref
class DepthStencilTarget extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static DepthStencilTarget* create(const char* id, Format format, unsigned int width, unsigned int height);
    public static function create(id:String, format:Int, width:Int, height:Int):DepthStencilTarget
    {
        return DepthStencilTarget.wrap(hx_DepthStencilTarget_static_create(id, format, width, height));
    }

    // DECL: static DepthStencilTarget* getDepthStencilTarget(const char* id);
    public static function getDepthStencilTarget(id:String):DepthStencilTarget
    {
        return DepthStencilTarget.wrap(hx_DepthStencilTarget_static_getDepthStencilTarget(id));
    }

    // DECL: Format getFormat() const;
    public function getFormat():Int
    {
        return hx_DepthStencilTarget_getFormat(nativeObject);
    }

    // DECL: unsigned int getHeight() const;
    public function getHeight():Int
    {
        return hx_DepthStencilTarget_getHeight(nativeObject);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_DepthStencilTarget_getId(nativeObject);
    }

    // DECL: unsigned int getWidth() const;
    public function getWidth():Int
    {
        return hx_DepthStencilTarget_getWidth(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_DepthStencilTarget_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_DepthStencilTarget_static_create", 4);
    static var hx_DepthStencilTarget_static_getDepthStencilTarget:Dynamic = cpp.Lib.load("gameplay", "hx_DepthStencilTarget_static_getDepthStencilTarget", 1);
    static var hx_DepthStencilTarget_getFormat:Dynamic = cpp.Lib.load("gameplay", "hx_DepthStencilTarget_getFormat", 1);
    static var hx_DepthStencilTarget_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_DepthStencilTarget_getHeight", 1);
    static var hx_DepthStencilTarget_getId:Dynamic = cpp.Lib.load("gameplay", "hx_DepthStencilTarget_getId", 1);
    static var hx_DepthStencilTarget_getWidth:Dynamic = cpp.Lib.load("gameplay", "hx_DepthStencilTarget_getWidth", 1);
}

// END
