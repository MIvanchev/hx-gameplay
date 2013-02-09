package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.immutable.IBoundingBox;
import org.gameplay3d.immutable.IBoundingSphere;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.ConversionTools;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Mesh : public Ref
class Mesh extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _boundingBox:BoundingBox;
    var _boundingSphere:BoundingSphere;

    // DECL: MeshPart* addPart(PrimitiveType primitiveType, Mesh::IndexFormat indexFormat, unsigned int indexCount, bool dynamic = false);
    public function addPart(primitiveType:Int, indexFormat:Int, indexCount:Int, _dynamic:Bool = false):MeshPart
    {
        return MeshPart.wrap(hx_Mesh_addPart(nativeObject, primitiveType, indexFormat, indexCount, _dynamic));
    }

    // DECL: static Mesh* createBoundingBox(const BoundingBox& box);
    public static function createBoundingBox(box:IBoundingBox):Mesh
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
    public static function createQuad_V3X4(p1:IVector3, p2:IVector3, p3:IVector3, p4:IVector3):Mesh
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
    public function getBoundingBox():IBoundingBox
    {
        return Macros.impersonateResult(_boundingBox, hx_Mesh_getBoundingBox(nativeObject));
    }

    // DECL: const BoundingSphere& getBoundingSphere() const;
    public function getBoundingSphere():IBoundingSphere
    {
         return Macros.impersonateResult(_boundingSphere, hx_Mesh_getBoundingSphere(nativeObject));
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
    public function setBoundingBox(box:IBoundingBox):Void
    {
        hx_Mesh_setBoundingBox(nativeObject, box.native());
    }

    // DECL: void setBoundingSphere(const BoundingSphere& sphere);
    public function setBoundingSphere(sphere:IBoundingSphere):Void
    {
        hx_Mesh_setBoundingSphere(nativeObject, sphere.native());
    }

    // DECL: void setPrimitiveType(Mesh::PrimitiveType type);
    public function setPrimitiveType(type:Int):Void
    {
        hx_Mesh_setPrimitiveType(nativeObject, type);
    }

    // DECL: void setVertexData(const float* vertexData, unsigned int vertexStart = 0, unsigned int vertexCount = 0);
    public function setVertexData(vertexData:NativeArrayFloat, vertexStart:Int = 0, vertexCount:Int = 0):Void
    {
        hx_Mesh_setVertexData(nativeObject, vertexData.native(), vertexStart, vertexCount);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Mesh_addPart = NativeInterface.loadMember(Mesh, "addPart", 5);
    static var hx_Mesh_static_createBoundingBox = NativeInterface.loadMember(Mesh, "static_createBoundingBox", 1);
    static var hx_Mesh_static_createLines = NativeInterface.loadMember(Mesh, "static_createLines", 2);
    static var hx_Mesh_static_createMesh = NativeInterface.loadMember(Mesh, "static_createMesh", 3);
    static var hx_Mesh_static_createQuad_V3X4 = NativeInterface.loadMember(Mesh, "static_createQuad_V3X4", 4);
    static var hx_Mesh_static_createQuad_FltX8 = NativeInterface.loadMember(Mesh, "static_createQuad_FltX8", -1);
    static var hx_Mesh_static_createQuadFullscreen = NativeInterface.loadMember(Mesh, "static_createQuadFullscreen", 0);
    static var hx_Mesh_getBoundingBox = NativeInterface.loadMember(Mesh, "getBoundingBox", 1);
    static var hx_Mesh_getBoundingSphere = NativeInterface.loadMember(Mesh, "getBoundingSphere", 1);
    static var hx_Mesh_getPart = NativeInterface.loadMember(Mesh, "getPart", 2);
    static var hx_Mesh_getPartCount = NativeInterface.loadMember(Mesh, "getPartCount", 1);
    static var hx_Mesh_getPrimitiveType = NativeInterface.loadMember(Mesh, "getPrimitiveType", 1);
    static var hx_Mesh_getUrl = NativeInterface.loadMember(Mesh, "getUrl", 1);
    static var hx_Mesh_getVertexBuffer = NativeInterface.loadMember(Mesh, "getVertexBuffer", 1);
    static var hx_Mesh_getVertexCount = NativeInterface.loadMember(Mesh, "getVertexCount", 1);
    static var hx_Mesh_getVertexFormat = NativeInterface.loadMember(Mesh, "getVertexFormat", 1);
    static var hx_Mesh_getVertexSize = NativeInterface.loadMember(Mesh, "getVertexSize", 1);
    static var hx_Mesh_isDynamic = NativeInterface.loadMember(Mesh, "isDynamic", 1);
    static var hx_Mesh_setBoundingBox = NativeInterface.loadMember(Mesh, "setBoundingBox", 2);
    static var hx_Mesh_setBoundingSphere = NativeInterface.loadMember(Mesh, "setBoundingSphere", 2);
    static var hx_Mesh_setPrimitiveType = NativeInterface.loadMember(Mesh, "setPrimitiveType", 2);
    static var hx_Mesh_setVertexData = NativeInterface.loadMember(Mesh, "setVertexData", 4);
}

// END
