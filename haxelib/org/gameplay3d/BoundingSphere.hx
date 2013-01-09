package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class BoundingSphere : public GameplayObject
class BoundingSphere extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var center(get_center, never):Vector3;
    public var radius(get_radius, set_radius):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: BoundingSphere();
    public static function make():BoundingSphere
    {
        return new BoundingSphere(constructNativeObject());
    }

    // DECL: BoundingSphere(const BoundingSphere& copy);
    public static function make_BSphr(copy:BoundingSphere):BoundingSphere
    {
        return new BoundingSphere(constructNativeObject_BSphr(copy));
    }

    // DECL: BoundingSphere(const Vector3& center, float radius);
    public static function make_V3_Flt(center:IVector3, radius:Float):BoundingSphere
    {
        return new BoundingSphere(constructNativeObject_V3_Flt(center, radius));
    }

    // DECL: static const BoundingSphere& empty();
    public static function empty():BoundingSphere
    {
        return BoundingSphere.wrap(hx_BoundingSphere_static_empty());
    }

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:BoundingBox):Bool
    {
        return hx_BoundingSphere_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:BoundingSphere):Bool
    {
        return hx_BoundingSphere_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: bool intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:Frustum):Bool
    {
        return hx_BoundingSphere_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:Plane):Float
    {
        return hx_BoundingSphere_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float
    {
        return hx_BoundingSphere_intersects_Ray(nativeObject, ray.native());
    }

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool
    {
        return hx_BoundingSphere_isEmpty(nativeObject);
    }

    // DECL: void merge(const BoundingBox& box);
    public function merge_BBox(box:BoundingBox):Void
    {
        hx_BoundingSphere_merge_BBox(nativeObject, box.native());
    }

    // DECL: void merge(const BoundingSphere& sphere);
    public function merge_BSphr(sphere:BoundingSphere):Void
    {
        hx_BoundingSphere_merge_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const BoundingBox& box);
    public function set_BBox(box:BoundingBox):Void
    {
        hx_BoundingSphere_set_BBox(nativeObject, box.native());
    }

    // DECL: void set(const BoundingSphere& sphere);
    public function set_BSphr(sphere:BoundingSphere):Void
    {
        hx_BoundingSphere_set_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const Vector3& center, float radius);
    public function set_V3_Flt(center:IVector3, radius:Float):Void
    {
        hx_BoundingSphere_set_V3_Flt(nativeObject, center.native(), radius);
    }

    // DECL: void transform(const Matrix& matrix);
    public function transform(matrix:Matrix):Void
    {
        hx_BoundingSphere_transform(nativeObject, matrix.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: BoundingSphere();
    static function constructNativeObject():Dynamic
    {
        return hx_BoundingSphere_Construct();
    }

    // DECL: BoundingSphere(const BoundingSphere& copy);
    static function constructNativeObject_BSphr(copy:BoundingSphere):Dynamic
    {
        return hx_BoundingSphere_Construct_BSphr(copy.native());
    }

    // DECL: BoundingSphere(const Vector3& center, float radius);
    static function constructNativeObject_V3_Flt(center:IVector3, radius:Float):Dynamic
    {
        return hx_BoundingSphere_Construct_V3_Flt(center.native(), radius);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_center():Vector3
    {
        return Vector3.wrap(hx_BoundingSphere_property_center_get(nativeObject));
    }

    function get_radius():Float
    {
        return hx_BoundingSphere_property_radius_get(nativeObject);
    }

    function set_radius(value:Float):Float
    {
        return hx_BoundingSphere_property_radius_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_BoundingSphere_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_Construct", 0);
    static var hx_BoundingSphere_Construct_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_Construct_BSphr", 1);
    static var hx_BoundingSphere_Construct_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_Construct_V3_Flt", 2);
    static var hx_BoundingSphere_static_empty:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_static_empty", 0);
    static var hx_BoundingSphere_intersects_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_BBox", 2);
    static var hx_BoundingSphere_intersects_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_BSphr", 2);
    static var hx_BoundingSphere_intersects_Frstm:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_Frstm", 2);
    static var hx_BoundingSphere_intersects_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_Plane", 2);
    static var hx_BoundingSphere_intersects_Ray:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_intersects_Ray", 2);
    static var hx_BoundingSphere_isEmpty:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_isEmpty", 1);
    static var hx_BoundingSphere_merge_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_merge_BBox", 2);
    static var hx_BoundingSphere_merge_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_merge_BSphr", 2);
    static var hx_BoundingSphere_set_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_set_BBox", 2);
    static var hx_BoundingSphere_set_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_set_BSphr", 2);
    static var hx_BoundingSphere_set_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_set_V3_Flt", 3);
    static var hx_BoundingSphere_transform:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_transform", 2);
    static var hx_BoundingSphere_property_center_get:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_property_center_get", 1);
    static var hx_BoundingSphere_property_radius_get:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_property_radius_get", 1);
    static var hx_BoundingSphere_property_radius_set:Dynamic = cpp.Lib.load("gameplay", "hx_BoundingSphere_property_radius_set", 2);
}

// END
