package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.util.Utilities;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class MeshBatch : public GameplayObject
class MeshBatch extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void add(T* vertices, unsigned int vertexCount, unsigned short* indices = NULL, unsigned int indexCount = 0);
    public function add(vertices:BytesData, vertexCount:Int, indices:NativeArrayUshort = null, indexCount:Int = 0):Void
    {
        hx_MeshBatch_add(nativeObject, vertices, vertexCount, indices.native(), indexCount);
    }

    // DECL: static MeshBatch* create(const VertexFormat& vertexFormat, Mesh::PrimitiveType primitiveType, Material* material, bool indexed, unsigned int initialCapacity = 1024, unsigned int growSize = 1024);
    public static function create_Frmt_Int_Mtrl_Bool_IntX2(vertexFormat:VertexFormat, primitiveType:Int, material:Material, indexed:Bool, initialCapacity:Int = 1024, growSize:Int = 1024):MeshBatch
    {
        return MeshBatch.wrap(hx_MeshBatch_static_create_Frmt_Int_Mtrl_Bool_IntX2(vertexFormat.native(), primitiveType, material.native(), indexed, initialCapacity, growSize));
    }

    // DECL: static MeshBatch* create(const VertexFormat& vertexFormat, Mesh::PrimitiveType primitiveType, const char* materialPath, bool indexed, unsigned int initialCapacity = 1024, unsigned int growSize = 1024);
    public static function create_Frmt_Int_Str_Bool_IntX2(vertexFormat:VertexFormat, primitiveType:Int, materialPath:String, indexed:Bool, initialCapacity:Int = 1024, growSize:Int = 1024):MeshBatch
    {
        return MeshBatch.wrap(hx_MeshBatch_static_create_Frmt_Int_Str_Bool_IntX2(vertexFormat.native(), primitiveType, materialPath, indexed, initialCapacity, growSize));
    }

    // DECL: void draw();
    public function draw():Void
    {
        hx_MeshBatch_draw(nativeObject);
    }

    // DECL: void finish();
    public function finish():Void
    {
        hx_MeshBatch_finish(nativeObject);
    }

    // DECL: unsigned int getCapacity() const;
    public function getCapacity():Int
    {
        return hx_MeshBatch_getCapacity(nativeObject);
    }

    // DECL: inline Material* getMaterial() const;
    public function getMaterial():Material
    {
        return Material.wrap(hx_MeshBatch_getMaterial(nativeObject));
    }

    // DECL: void setCapacity(unsigned int capacity);
    public function setCapacity(capacity:Int):Void
    {
        hx_MeshBatch_setCapacity(nativeObject, capacity);
    }

    // DECL: void start();
    public function start():Void
    {
        hx_MeshBatch_start(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_MeshBatch_add:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_add", 5);
    static var hx_MeshBatch_static_create_Frmt_Int_Mtrl_Bool_IntX2:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_static_create_Frmt_Int_Mtrl_Bool_IntX2", -1);
    static var hx_MeshBatch_static_create_Frmt_Int_Str_Bool_IntX2:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_static_create_Frmt_Int_Str_Bool_IntX2", -1);
    static var hx_MeshBatch_draw:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_draw", 1);
    static var hx_MeshBatch_finish:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_finish", 1);
    static var hx_MeshBatch_getCapacity:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_getCapacity", 1);
    static var hx_MeshBatch_getMaterial:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_getMaterial", 1);
    static var hx_MeshBatch_setCapacity:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_setCapacity", 2);
    static var hx_MeshBatch_start:Dynamic = cpp.Lib.load("gameplay", "hx_MeshBatch_start", 1);
}

// END
