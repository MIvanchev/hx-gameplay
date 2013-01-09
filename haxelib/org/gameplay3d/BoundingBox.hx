package org.gameplay3d;

import org.gameplay3d.util.INativeArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class BoundingBox : public GameplayObject
class BoundingBox extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var min(get_min, never):Vector3;
    public var max(get_max, never):Vector3;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: BoundingBox();
    public static function make():BoundingBox
    {
        return new BoundingBox(constructNativeObject());
    }

    // DECL: BoundingBox(const BoundingBox& copy);
    public static function make_BBox(copy:BoundingBox):BoundingBox
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
    public static function empty():BoundingBox
    {
        return BoundingBox.wrap(hx_BoundingBox_static_empty());
    }

    // DECL: Vector3 getCenter() const;
    public function getCenter():Vector3
    {
        return Vector3.wrap(hx_BoundingBox_getCenter(nativeObject));
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
    public function intersects_BBox(box:BoundingBox):Bool
    {
        return hx_BoundingBox_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:BoundingSphere):Bool
    {
        return hx_BoundingBox_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: bool intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:Frustum):Bool
    {
        return hx_BoundingBox_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:Plane):Float
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
    public function merge_BBox(box:BoundingBox):Void
    {
        hx_BoundingBox_merge_BBox(nativeObject, box.native());
    }

    // DECL: void merge(const BoundingSphere& sphere);
    public function merge_BSphr(sphere:BoundingSphere):Void
    {
        hx_BoundingBox_merge_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const BoundingBox& box);
    public function set_BBox(box:BoundingBox):Void
    {
        hx_BoundingBox_set_BBox(nativeObject, box.native());
    }

    // DECL: void set(const BoundingSphere& sphere);
    public function set_BSphr(sphere:BoundingSphere):Void
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
    public function transform(matrix:Matrix):Void
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
    static function constructNativeObject_BBox(copy:BoundingBox):Dynamic
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
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_min():Vector3
    {
        return Vector3.wrap(hx_BoundingBox_property_min_get(nativeObject));
    }

    function get_max():Vector3
    {
        return Vector3.wrap(hx_BoundingBox_property_max_get(nativeObject));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_BoundingBox_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_Construct", 0);
    static var hx_BoundingBox_Construct_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_Construct_BBox", 1);
    static var hx_BoundingBox_Construct_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_Construct_V3X2", 2);
    static var hx_BoundingBox_Construct_FltX6:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_Construct_FltX6", -1);
    static var hx_BoundingBox_static_empty:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_static_empty", 0);
    static var hx_BoundingBox_getCenter:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_getCenter", 1);
    static var hx_BoundingBox_getCenter_V3:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_getCenter_V3", 2);
    static var hx_BoundingBox_getCorners:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_getCorners", 2);
    static var hx_BoundingBox_intersects_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_intersects_BBox", 2);
    static var hx_BoundingBox_intersects_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_intersects_BSphr", 2);
    static var hx_BoundingBox_intersects_Frstm:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_intersects_Frstm", 2);
    static var hx_BoundingBox_intersects_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_intersects_Plane", 2);
    static var hx_BoundingBox_intersects_Ray:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_intersects_Ray", 2);
    static var hx_BoundingBox_isEmpty:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_isEmpty", 1);
    static var hx_BoundingBox_merge_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_merge_BBox", 2);
    static var hx_BoundingBox_merge_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_merge_BSphr", 2);
    static var hx_BoundingBox_set_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_set_BBox", 2);
    static var hx_BoundingBox_set_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_set_BSphr", 2);
    static var hx_BoundingBox_set_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_set_V3X2", 3);
    static var hx_BoundingBox_set_FltX6:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_set_FltX6", -1);
    static var hx_BoundingBox_transform:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_transform", 2);
    static var hx_BoundingBox_property_min_get:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_property_min_get", 1);
    static var hx_BoundingBox_property_max_get:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingBox_property_max_get", 1);
}

// END
