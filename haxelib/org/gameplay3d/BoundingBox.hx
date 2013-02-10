package org.gameplay3d;

import org.gameplay3d.immutable.IBoundingBox;
import org.gameplay3d.immutable.IBoundingSphere;
import org.gameplay3d.immutable.IFrustum;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IPlane;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.shared.SharedVector3;
import org.gameplay3d.util.INativeArray;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class BoundingBox : public GameplayObject
class BoundingBox extends GameplayObject implements IBoundingBox
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var min(default, null):Vector3;
    public var max(default, null):Vector3;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _empty:BoundingBox;
    var _center:Vector3;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        super.impersonate(nativeObject);
        Macros.impersonateResult(min, hx_BoundingBox_property_min_get(nativeObject));
        Macros.impersonateResult(max, hx_BoundingBox_property_max_get(nativeObject));
        return cast(this);
    }

    // DECL: BoundingBox();
    public static function make():BoundingBox
    {
        return new BoundingBox(constructNativeObject());
    }

    // DECL: BoundingBox(const BoundingBox& copy);
    public static function make_BBox(copy:IBoundingBox):BoundingBox
    {
        return new BoundingBox(constructNativeObject_BBox(copy));
    }

    // DECL: BoundingBox(const Vector3& min, const Vector3& max);
    public static function make_V3X2(min:IVector3, max:IVector3):BoundingBox
    {
        return new BoundingBox(constructNativeObject_V3X2(min, max));
    }

    // DECL: BoundingBox(float minX, float minY, float minZ, float maxX, float maxY, float maxZ);
    public static function make_FltX6(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float):BoundingBox
    {
        return new BoundingBox(constructNativeObject_FltX6(minX, minY, minZ, maxX, maxY, maxZ));
    }

    // DECL: static const BoundingBox& empty();
    public static function empty():IBoundingBox
    {
        return Macros.impersonateResult(_empty, hx_BoundingBox_static_empty());
    }

    // DECL: Vector3 getCenter() const;
    public function getCenter():SharedVector3
    {
        return Macros.impersonateResult(_center, hx_BoundingBox_getCenter(nativeObject));
    }

    // DECL: void getCenter(Vector3* dst) const;
    public function getCenter_V3(dst:Vector3):Void
    {
        hx_BoundingBox_getCenter_V3(nativeObject, dst.native());
    }

    // DECL: void getCorners(Vector3* dst) const;
    public function getCorners(dst:INativeArray<Vector3>):Void
    {
        hx_BoundingBox_getCorners(nativeObject, dst.native());
    }

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Bool
    {
        return hx_BoundingBox_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Bool
    {
        return hx_BoundingBox_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: bool intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:IFrustum):Bool
    {
        return hx_BoundingBox_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float
    {
        return hx_BoundingBox_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float
    {
        return hx_BoundingBox_intersects_Ray(nativeObject, ray.native());
    }

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool
    {
        return hx_BoundingBox_isEmpty(nativeObject);
    }

    // DECL: void merge(const BoundingBox& box);
    public function merge_BBox(box:IBoundingBox):Void
    {
        hx_BoundingBox_merge_BBox(nativeObject, box.native());
    }

    // DECL: void merge(const BoundingSphere& sphere);
    public function merge_BSphr(sphere:IBoundingSphere):Void
    {
        hx_BoundingBox_merge_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const BoundingBox& box);
    public function set_BBox(box:IBoundingBox):Void
    {
        hx_BoundingBox_set_BBox(nativeObject, box.native());
    }

    // DECL: void set(const BoundingSphere& sphere);
    public function set_BSphr(sphere:IBoundingSphere):Void
    {
        hx_BoundingBox_set_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const Vector3& min, const Vector3& max);
    public function set_V3X2(min:IVector3, max:IVector3):Void
    {
        hx_BoundingBox_set_V3X2(nativeObject, min.native(), max.native());
    }

    // DECL: void set(float minX, float minY, float minZ, float maxX, float maxY, float maxZ);
    public function set_FltX6(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float):Void
    {
        hx_BoundingBox_set_FltX6(nativeObject, minX, minY, minZ, maxX, maxY, maxZ);
    }

    // DECL: void transform(const Matrix& matrix);
    public function transform(matrix:IMatrix):Void
    {
        hx_BoundingBox_transform(nativeObject, matrix.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: BoundingBox();
    static function constructNativeObject():Dynamic
    {
        return hx_BoundingBox_Construct();
    }

    // DECL: BoundingBox(const BoundingBox& copy);
    static function constructNativeObject_BBox(copy:IBoundingBox):Dynamic
    {
        return hx_BoundingBox_Construct_BBox(copy.native());
    }

    // DECL: BoundingBox(const Vector3& min, const Vector3& max);
    static function constructNativeObject_V3X2(min:IVector3, max:IVector3):Dynamic
    {
        return hx_BoundingBox_Construct_V3X2(min.native(), max.native());
    }

    // DECL: BoundingBox(float minX, float minY, float minZ, float maxX, float maxY, float maxZ);
    static function constructNativeObject_FltX6(minX:Float, minY:Float, minZ:Float, maxX:Float, maxY:Float, maxZ:Float):Dynamic
    {
        return hx_BoundingBox_Construct_FltX6(minX, minY, minZ, maxX, maxY, maxZ);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_BoundingBox_Construct = NativeInterface.loadMember(BoundingBox, "Construct", 0);
    static var hx_BoundingBox_Construct_BBox = NativeInterface.loadMember(BoundingBox, "Construct_BBox", 1);
    static var hx_BoundingBox_Construct_V3X2 = NativeInterface.loadMember(BoundingBox, "Construct_V3X2", 2);
    static var hx_BoundingBox_Construct_FltX6 = NativeInterface.loadMember(BoundingBox, "Construct_FltX6", -1);
    static var hx_BoundingBox_static_empty = NativeInterface.loadMember(BoundingBox, "static_empty", 0);
    static var hx_BoundingBox_getCenter = NativeInterface.loadMember(BoundingBox, "getCenter", 1);
    static var hx_BoundingBox_getCenter_V3 = NativeInterface.loadMember(BoundingBox, "getCenter_V3", 2);
    static var hx_BoundingBox_getCorners = NativeInterface.loadMember(BoundingBox, "getCorners", 2);
    static var hx_BoundingBox_intersects_BBox = NativeInterface.loadMember(BoundingBox, "intersects_BBox", 2);
    static var hx_BoundingBox_intersects_BSphr = NativeInterface.loadMember(BoundingBox, "intersects_BSphr", 2);
    static var hx_BoundingBox_intersects_Frstm = NativeInterface.loadMember(BoundingBox, "intersects_Frstm", 2);
    static var hx_BoundingBox_intersects_Plane = NativeInterface.loadMember(BoundingBox, "intersects_Plane", 2);
    static var hx_BoundingBox_intersects_Ray = NativeInterface.loadMember(BoundingBox, "intersects_Ray", 2);
    static var hx_BoundingBox_isEmpty = NativeInterface.loadMember(BoundingBox, "isEmpty", 1);
    static var hx_BoundingBox_merge_BBox = NativeInterface.loadMember(BoundingBox, "merge_BBox", 2);
    static var hx_BoundingBox_merge_BSphr = NativeInterface.loadMember(BoundingBox, "merge_BSphr", 2);
    static var hx_BoundingBox_set_BBox = NativeInterface.loadMember(BoundingBox, "set_BBox", 2);
    static var hx_BoundingBox_set_BSphr = NativeInterface.loadMember(BoundingBox, "set_BSphr", 2);
    static var hx_BoundingBox_set_V3X2 = NativeInterface.loadMember(BoundingBox, "set_V3X2", 3);
    static var hx_BoundingBox_set_FltX6 = NativeInterface.loadMember(BoundingBox, "set_FltX6", -1);
    static var hx_BoundingBox_transform = NativeInterface.loadMember(BoundingBox, "transform", 2);
    static var hx_BoundingBox_property_min_get = NativeInterface.loadMember(BoundingBox, "property_min_get", 1);
    static var hx_BoundingBox_property_max_get = NativeInterface.loadMember(BoundingBox, "property_max_get", 1);
}

// END
