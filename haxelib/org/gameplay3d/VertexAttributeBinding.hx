package org.gameplay3d;

import haxe.io.BytesData;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class VertexAttributeBinding : public Ref
class VertexAttributeBinding extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void bind();
    public function bind():Void
    {
        hx_VertexAttributeBinding_bind(nativeObject);
    }

    // DECL: static VertexAttributeBinding* create(Mesh* mesh, Effect* effect);
    public static function create_Mesh_Eff(mesh:Mesh, effect:Effect):VertexAttributeBinding
    {
        return VertexAttributeBinding.wrap(hx_VertexAttributeBinding_static_create_Mesh_Eff(mesh.native(), effect.native()));
    }

    // DECL: static VertexAttributeBinding* create(const VertexFormat& vertexFormat, void* vertexPointer, Effect* effect);
    public static function create_Frmt_Dat_Eff(vertexFormat:VertexFormat, vertexPointer:BytesData, effect:Effect):VertexAttributeBinding
    {
        return VertexAttributeBinding.wrap(hx_VertexAttributeBinding_static_create_Frmt_Dat_Eff(vertexFormat.native(), vertexPointer, effect.native()));
    }

    // DECL: void unbind();
    public function unbind():Void
    {
        hx_VertexAttributeBinding_unbind(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_VertexAttributeBinding_bind:Dynamic = cpp.Lib.load("gameplay", "hx_VertexAttributeBinding_bind", 1);
    static var hx_VertexAttributeBinding_static_create_Mesh_Eff:Dynamic = cpp.Lib.load("gameplay", "hx_VertexAttributeBinding_static_create_Mesh_Eff", 2);
    static var hx_VertexAttributeBinding_static_create_Frmt_Dat_Eff:Dynamic = cpp.Lib.load("gameplay", "hx_VertexAttributeBinding_static_create_Frmt_Dat_Eff", 3);
    static var hx_VertexAttributeBinding_unbind:Dynamic = cpp.Lib.load("gameplay", "hx_VertexAttributeBinding_unbind", 1);
}

// END
