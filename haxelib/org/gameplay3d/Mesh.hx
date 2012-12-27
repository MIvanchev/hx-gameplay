package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.util.Handle;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Mesh : public Ref
class Mesh extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: MeshPart* addPart(PrimitiveType primitiveType, Mesh::IndexFormat indexFormat, unsigned int indexCount, bool dynamic = false);
    public function addPart(primitiveType:Int, indexFormat:Int, indexCount:Int, _dynamic:Bool = false):MeshPart
    {
        return MeshPart.wrap(hx_Mesh_addPart(nativeObject, primitiveType, indexFormat, indexCount, _dynamic));
    }

    // DECL: static Mesh* createBoundingBox(const BoundingBox& box);
    public static function createBoundingBox(box:BoundingBox):Mesh
    {
        return Mesh.wrap(hx_Mesh_static_createBoundingBox(box.native()));
    }

    // DECL: static Mesh* createLines(Vector3* points, unsigned int pointCount);
    public static function createLines(points:Array<Vector3>, pointCount:Int):Mesh
    {
        return Mesh.wrap(hx_Mesh_static_createLines(ConversionTools.insertArray(points), pointCount));
    }

    // DECL: static Mesh* createMesh(const VertexFormat& vertexFormat, unsigned int vertexCount, bool dynamic = false);
    public static function createMesh(vertexFormat:VertexFormat, vertexCount:Int, _dynamic:Bool = false):Mesh
    {
        return Mesh.wrap(hx_Mesh_static_createMesh(vertexFormat.native(), vertexCount, _dynamic));
    }

    // DECL: static Mesh* createQuad(const Vector3& p1, const Vector3& p2, const Vector3& p3, const Vector3& p4);
    public static function createQuad_V3X4(p1:Vector3, p2:Vector3, p3:Vector3, p4:Vector3):Mesh
    {
        return Mesh.wrap(hx_Mesh_static_createQuad_V3X4(p1.native(), p2.native(), p3.native(), p4.native()));
    }

    // DECL: static Mesh* createQuad(float x, float y, float width, float height, float s1 = 0.0f, float t1 = 0.0f, float s2 = 1.0f, float t2 = 1.0f);
    public static function createQuad_FltX8(x:Float, y:Float, width:Float, height:Float, s1:Float = 0, t1:Float = 0, s2:Float = 1, t2:Float = 1):Mesh
    {
        return Mesh.wrap(hx_Mesh_static_createQuad_FltX8(x, y, width, height, s1, t1, s2, t2));
    }

    // DECL: static Mesh* createQuadFullscreen();
    public static function createQuadFullscreen():Mesh
    {
        return Mesh.wrap(hx_Mesh_static_createQuadFullscreen());
    }

    // DECL: const BoundingBox& getBoundingBox() const;
    public function getBoundingBox():BoundingBox
    {
        return BoundingBox.wrap(hx_Mesh_getBoundingBox(nativeObject));
    }

    // DECL: const BoundingSphere& getBoundingSphere() const;
    public function getBoundingSphere():BoundingSphere
    {
        return BoundingSphere.wrap(hx_Mesh_getBoundingSphere(nativeObject));
    }

    // DECL: MeshPart* getPart(unsigned int index);
    public function getPart(index:Int):MeshPart
    {
        return MeshPart.wrap(hx_Mesh_getPart(nativeObject, index));
    }

    // DECL: unsigned int getPartCount() const;
    public function getPartCount():Int
    {
        return hx_Mesh_getPartCount(nativeObject);
    }

    // DECL: PrimitiveType getPrimitiveType() const;
    public function getPrimitiveType():Int
    {
        return hx_Mesh_getPrimitiveType(nativeObject);
    }

    // DECL: const char* getUrl() const;
    public function getUrl():String
    {
        return hx_Mesh_getUrl(nativeObject);
    }

    // DECL: VertexBufferHandle getVertexBuffer() const;
    public function getVertexBuffer():Handle
    {
        return Handle.wrap(hx_Mesh_getVertexBuffer(nativeObject));
    }

    // DECL: unsigned int getVertexCount() const;
    public function getVertexCount():Int
    {
        return hx_Mesh_getVertexCount(nativeObject);
    }

    // DECL: const VertexFormat& getVertexFormat() const;
    public function getVertexFormat():VertexFormat
    {
        return VertexFormat.wrap(hx_Mesh_getVertexFormat(nativeObject));
    }

    // DECL: unsigned int getVertexSize() const;
    public function getVertexSize():Int
    {
        return hx_Mesh_getVertexSize(nativeObject);
    }

    // DECL: bool isDynamic() const;
    public function isDynamic():Bool
    {
        return hx_Mesh_isDynamic(nativeObject);
    }

    // DECL: void setBoundingBox(const BoundingBox& box);
    public function setBoundingBox(box:BoundingBox):Void
    {
        hx_Mesh_setBoundingBox(nativeObject, box.native());
    }

    // DECL: void setBoundingSphere(const BoundingSphere& sphere);
    public function setBoundingSphere(sphere:BoundingSphere):Void
    {
        hx_Mesh_setBoundingSphere(nativeObject, sphere.native());
    }

    // DECL: void setPrimitiveType(Mesh::PrimitiveType type);
    public function setPrimitiveType(type:Int):Void
    {
        hx_Mesh_setPrimitiveType(nativeObject, type);
    }

    // DECL: void setVertexData(const float* vertexData, unsigned int vertexStart = 0, unsigned int vertexCount = 0);
    public function setVertexData(vertexData:BytesData, vertexStart:Int = 0, vertexCount:Int = 0):Void
    {
        hx_Mesh_setVertexData(nativeObject, vertexData, vertexStart, vertexCount);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Mesh_addPart:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_addPart", 5);
    static var hx_Mesh_static_createBoundingBox:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_static_createBoundingBox", 1);
    static var hx_Mesh_static_createLines:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_static_createLines", 2);
    static var hx_Mesh_static_createMesh:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_static_createMesh", 3);
    static var hx_Mesh_static_createQuad_V3X4:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_static_createQuad_V3X4", 4);
    static var hx_Mesh_static_createQuad_FltX8:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_static_createQuad_FltX8", -1);
    static var hx_Mesh_static_createQuadFullscreen:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_static_createQuadFullscreen", 0);
    static var hx_Mesh_getBoundingBox:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getBoundingBox", 1);
    static var hx_Mesh_getBoundingSphere:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getBoundingSphere", 1);
    static var hx_Mesh_getPart:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getPart", 2);
    static var hx_Mesh_getPartCount:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getPartCount", 1);
    static var hx_Mesh_getPrimitiveType:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getPrimitiveType", 1);
    static var hx_Mesh_getUrl:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getUrl", 1);
    static var hx_Mesh_getVertexBuffer:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getVertexBuffer", 1);
    static var hx_Mesh_getVertexCount:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getVertexCount", 1);
    static var hx_Mesh_getVertexFormat:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getVertexFormat", 1);
    static var hx_Mesh_getVertexSize:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_getVertexSize", 1);
    static var hx_Mesh_isDynamic:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_isDynamic", 1);
    static var hx_Mesh_setBoundingBox:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_setBoundingBox", 2);
    static var hx_Mesh_setBoundingSphere:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_setBoundingSphere", 2);
    static var hx_Mesh_setPrimitiveType:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_setPrimitiveType", 2);
    static var hx_Mesh_setVertexData:Dynamic = cpp.Lib.load("gameplay", "hx_Mesh_setVertexData", 4);
}

// END
