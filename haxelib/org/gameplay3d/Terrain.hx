package org.gameplay3d;

import org.gameplay3d.immutable.IBoundingBox;
import org.gameplay3d.intern.impl.Transform_ListenerImpl;
import org.gameplay3d.intern.INativeBinding;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Terrain : public Ref, public Transform::Listener
class Terrain extends Transform_ListenerImpl, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _boundingBox:BoundingBox;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            _boundingBox = BoundingBox.make();
        }
        return cast(this);
    }

    // DECL: static Terrain* create(HeightField* heightfield, const Vector3& scale = Vector3::one(), unsigned int patchSize = 32,
    public static function create_HghtFld_V3_IntX2_Flt_Str(heightfield:HeightField, scale:Vector3, patchSize:Int, detailLevels:Int, skirtScale:Float, normalMapPath:String):Terrain
    {
        return hx_Terrain_static_create_HghtFld_V3_IntX2_Flt_Str(heightfield.native(), scale.native(), patchSize, detailLevels, skirtScale, normalMapPath);
    }

    // DECL: static Terrain* create(Properties* properties);
    public static function create_Prop(properties:Properties):Terrain
    {
        return hx_Terrain_static_create_Prop(properties.native());
    }

    // DECL: static Terrain* create(const char* path);
    public static function create_Str(path:String):Terrain
    {
        return hx_Terrain_static_create_Str(path);
    }

    // DECL: void draw(bool wireframe = false);
    public function draw(wireframe:Bool):Void
    {
        hx_Terrain_draw(nativeObject, wireframe);
    }

    // DECL: const BoundingBox& getBoundingBox() const;
    public function getBoundingBox():IBoundingBox
    {
        return _boundingBox.impersonate(hx_Terrain_getBoundingBox(nativeObject));
    }

    // DECL: float getHeight(float x, float z) const;
    public function getHeight(x:Float, z:Float):Float
    {
        return hx_Terrain_getHeight(nativeObject, x, z);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_Terrain_getNode(nativeObject));
    }

    // DECL: unsigned int getPatchCount() const;
    public function getPatchCount():Int
    {
        return hx_Terrain_getPatchCount(nativeObject);
    }

    // DECL: unsigned int getTriangleCount() const;
    public function getTriangleCount():Int
    {
        return hx_Terrain_getTriangleCount(nativeObject);
    }

    // DECL: unsigned int getVisiblePatchCount() const;
    public function getVisiblePatchCount():Int
    {
        return hx_Terrain_getVisiblePatchCount(nativeObject);
    }

    // DECL: unsigned int getVisibleTriangleCount() const;
    public function getVisibleTriangleCount():Int
    {
        return hx_Terrain_getVisibleTriangleCount(nativeObject);
    }

    // DECL: bool isFlagSet(Flags flag) const;
    public function isFlagSet(flag:Int):Bool
    {
        return hx_Terrain_isFlagSet(nativeObject, flag);
    }

    // DECL: void setFlag(Flags flag, bool on);
    public function setFlag(flag:Int, on:Bool):Void
    {
        hx_Terrain_setFlag(nativeObject, flag, on);
    }

    // DECL: bool setLayer(int index,
    public function setLayer(index:Int, texturePath:String, textureRepeat:Vector2, blendPath:String, blendChannel:Int, row:Int, column:Int):Bool
    {
        return hx_Terrain_setLayer(nativeObject, index, texturePath, textureRepeat.native(), blendPath, blendChannel, row, column);
    }

    // DECL: void transformChanged(Transform* transform, long cookie);
    override public function transformChanged(transform:Transform, cookie:Int):Void
    {
        hx_Terrain_transformChanged(nativeObject, transform.native(), cookie);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Terrain_static_create_HghtFld_V3_IntX2_Flt_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_static_create_HghtFld_V3_IntX2_Flt_Str", -1);
    static var hx_Terrain_static_create_Prop:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_static_create_Prop", 1);
    static var hx_Terrain_static_create_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_static_create_Str", 1);
    static var hx_Terrain_draw:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_draw", 2);
    static var hx_Terrain_getBoundingBox:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getBoundingBox", 1);
    static var hx_Terrain_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getHeight", 3);
    static var hx_Terrain_getNode:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getNode", 1);
    static var hx_Terrain_getPatchCount:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getPatchCount", 1);
    static var hx_Terrain_getTriangleCount:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getTriangleCount", 1);
    static var hx_Terrain_getVisiblePatchCount:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getVisiblePatchCount", 1);
    static var hx_Terrain_getVisibleTriangleCount:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_getVisibleTriangleCount", 1);
    static var hx_Terrain_isFlagSet:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_isFlagSet", 2);
    static var hx_Terrain_setFlag:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_setFlag", 3);
    static var hx_Terrain_setLayer:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_setLayer", -1);
    static var hx_Terrain_transformChanged:Dynamic = cpp.Lib.load("gameplay", "hx_Terrain_transformChanged", 3);
}

// END
