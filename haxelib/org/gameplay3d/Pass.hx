package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Pass : public RenderState
class Pass extends RenderState
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bind();
    public function bind():Void
    {
        hx_Pass_bind(nativeObject);
    }

    // DECL: Effect* getEffect() const;
    public function getEffect():Effect
    {
        return Effect.wrap(hx_Pass_getEffect(nativeObject));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Pass_getId(nativeObject);
    }

    // DECL: VertexAttributeBinding* getVertexAttributeBinding() const;
    public function getVertexAttributeBinding():VertexAttributeBinding
    {
        return VertexAttributeBinding.wrap(hx_Pass_getVertexAttributeBinding(nativeObject));
    }

    // DECL: void setVertexAttributeBinding(VertexAttributeBinding* binding);
    public function setVertexAttributeBinding(binding:VertexAttributeBinding):Void
    {
        hx_Pass_setVertexAttributeBinding(nativeObject, binding.native());
    }

    // DECL: void unbind();
    public function unbind():Void
    {
        hx_Pass_unbind(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Pass_bind = NativeInterface.loadMember(Pass, "bind", 1);
    static var hx_Pass_getEffect = NativeInterface.loadMember(Pass, "getEffect", 1);
    static var hx_Pass_getId = NativeInterface.loadMember(Pass, "getId", 1);
    static var hx_Pass_getVertexAttributeBinding = NativeInterface.loadMember(Pass, "getVertexAttributeBinding", 1);
    static var hx_Pass_setVertexAttributeBinding = NativeInterface.loadMember(Pass, "setVertexAttributeBinding", 2);
    static var hx_Pass_unbind = NativeInterface.loadMember(Pass, "unbind", 1);
}

// END
