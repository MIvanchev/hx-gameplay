package org.gameplay3d;

import haxe.io.BytesData;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class MeshPart : public GameplayObject
class MeshPart extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: IndexBufferHandle getIndexBuffer() const;
    public function getIndexBuffer():Handle
    {
        return Handle.wrap(hx_MeshPart_getIndexBuffer(nativeObject));
    }

    // DECL: unsigned int getIndexCount() const;
    public function getIndexCount():Int
    {
        return hx_MeshPart_getIndexCount(nativeObject);
    }

    // DECL: Mesh::IndexFormat getIndexFormat() const;
    public function getIndexFormat():Int
    {
        return hx_MeshPart_getIndexFormat(nativeObject);
    }

    // DECL: unsigned int getMeshIndex() const;
    public function getMeshIndex():Int
    {
        return hx_MeshPart_getMeshIndex(nativeObject);
    }

    // DECL: Mesh::PrimitiveType getPrimitiveType() const;
    public function getPrimitiveType():Int
    {
        return hx_MeshPart_getPrimitiveType(nativeObject);
    }

    // DECL: bool isDynamic() const;
    public function isDynamic():Bool
    {
        return hx_MeshPart_isDynamic(nativeObject);
    }

    // DECL: void setIndexData(const void* indexData, unsigned int indexStart, unsigned int indexCount);
    public function setIndexData(indexData:BytesData, indexStart:Int, indexCount:Int):Void
    {
        hx_MeshPart_setIndexData(nativeObject, indexData, indexStart, indexCount);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_MeshPart_getIndexBuffer = NativeInterface.loadMember(MeshPart, "getIndexBuffer", 1);
    static var hx_MeshPart_getIndexCount = NativeInterface.loadMember(MeshPart, "getIndexCount", 1);
    static var hx_MeshPart_getIndexFormat = NativeInterface.loadMember(MeshPart, "getIndexFormat", 1);
    static var hx_MeshPart_getMeshIndex = NativeInterface.loadMember(MeshPart, "getMeshIndex", 1);
    static var hx_MeshPart_getPrimitiveType = NativeInterface.loadMember(MeshPart, "getPrimitiveType", 1);
    static var hx_MeshPart_isDynamic = NativeInterface.loadMember(MeshPart, "isDynamic", 1);
    static var hx_MeshPart_setIndexData = NativeInterface.loadMember(MeshPart, "setIndexData", 4);
}

// END
