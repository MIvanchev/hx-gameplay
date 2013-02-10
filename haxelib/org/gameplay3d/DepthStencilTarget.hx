package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class DepthStencilTarget : public Ref
class DepthStencilTarget extends GameplayObject implements Ref
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

    static var hx_DepthStencilTarget_static_create = NativeInterface.loadMember(DepthStencilTarget, "static_create", 4);
    static var hx_DepthStencilTarget_static_getDepthStencilTarget = NativeInterface.loadMember(DepthStencilTarget, "static_getDepthStencilTarget", 1);
    static var hx_DepthStencilTarget_getFormat = NativeInterface.loadMember(DepthStencilTarget, "getFormat", 1);
    static var hx_DepthStencilTarget_getHeight = NativeInterface.loadMember(DepthStencilTarget, "getHeight", 1);
    static var hx_DepthStencilTarget_getId = NativeInterface.loadMember(DepthStencilTarget, "getId", 1);
    static var hx_DepthStencilTarget_getWidth = NativeInterface.loadMember(DepthStencilTarget, "getWidth", 1);
}

// END
