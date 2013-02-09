package org.gameplay3d;

import org.gameplay3d.immutable.IBoundingBox;
import org.gameplay3d.immutable.IBoundingSphere;
import org.gameplay3d.immutable.IFrustum;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IPlane;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class BoundingSphere : public GameplayObject
class BoundingSphere extends GameplayObject, implements IBoundingSphere
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var center(default, null):Vector3;
    public var radius(get_radius, set_radius):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _empty:BoundingSphere;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        Macros.impersonateResult(center, hx_BoundingSphere_property_center_get(nativeObject));
        return cast(this);
    }

    // DECL: BoundingSphere();
    public static function make():BoundingSphere
    {
        return new BoundingSphere(constructNativeObject());
    }

    // DECL: BoundingSphere(const BoundingSphere& copy);
    public static function make_BSphr(copy:IBoundingSphere):BoundingSphere
    {
        return new BoundingSphere(constructNativeObject_BSphr(copy));
    }

    // DECL: BoundingSphere(const Vector3& center, float radius);
    public static function make_V3_Flt(center:IVector3, radius:Float):BoundingSphere
    {
        return new BoundingSphere(constructNativeObject_V3_Flt(center, radius));
    }

    // DECL: static const BoundingSphere& empty();
    public static function empty():IBoundingSphere
    {
        return Macros.impersonateResult(_empty, hx_BoundingSphere_static_empty());
    }

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Bool
    {
        return hx_BoundingSphere_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Bool
    {
        return hx_BoundingSphere_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: bool intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:IFrustum):Bool
    {
        return hx_BoundingSphere_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float
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
    public function merge_BBox(box:IBoundingBox):Void
    {
        hx_BoundingSphere_merge_BBox(nativeObject, box.native());
    }

    // DECL: void merge(const BoundingSphere& sphere);
    public function merge_BSphr(sphere:IBoundingSphere):Void
    {
        hx_BoundingSphere_merge_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const BoundingBox& box);
    public function set_BBox(box:IBoundingBox):Void
    {
        hx_BoundingSphere_set_BBox(nativeObject, box.native());
    }

    // DECL: void set(const BoundingSphere& sphere);
    public function set_BSphr(sphere:IBoundingSphere):Void
    {
        hx_BoundingSphere_set_BSphr(nativeObject, sphere.native());
    }

    // DECL: void set(const Vector3& center, float radius);
    public function set_V3_Flt(center:IVector3, radius:Float):Void
    {
        hx_BoundingSphere_set_V3_Flt(nativeObject, center.native(), radius);
    }

    // DECL: void transform(const Matrix& matrix);
    public function transform(matrix:IMatrix):Void
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
    static function constructNativeObject_BSphr(copy:IBoundingSphere):Dynamic
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

    static var hx_BoundingSphere_Construct = NativeInterface.loadMember(BoundingSphere, "Construct", 0);
    static var hx_BoundingSphere_Construct_BSphr = NativeInterface.loadMember(BoundingSphere, "Construct_BSphr", 1);
    static var hx_BoundingSphere_Construct_V3_Flt = NativeInterface.loadMember(BoundingSphere, "Construct_V3_Flt", 2);
    static var hx_BoundingSphere_static_empty = NativeInterface.loadMember(BoundingSphere, "static_empty", 0);
    static var hx_BoundingSphere_intersects_BBox = NativeInterface.loadMember(BoundingSphere, "intersects_BBox", 2);
    static var hx_BoundingSphere_intersects_BSphr = NativeInterface.loadMember(BoundingSphere, "intersects_BSphr", 2);
    static var hx_BoundingSphere_intersects_Frstm = NativeInterface.loadMember(BoundingSphere, "intersects_Frstm", 2);
    static var hx_BoundingSphere_intersects_Plane = NativeInterface.loadMember(BoundingSphere, "intersects_Plane", 2);
    static var hx_BoundingSphere_intersects_Ray = NativeInterface.loadMember(BoundingSphere, "intersects_Ray", 2);
    static var hx_BoundingSphere_isEmpty = NativeInterface.loadMember(BoundingSphere, "isEmpty", 1);
    static var hx_BoundingSphere_merge_BBox = NativeInterface.loadMember(BoundingSphere, "merge_BBox", 2);
    static var hx_BoundingSphere_merge_BSphr = NativeInterface.loadMember(BoundingSphere, "merge_BSphr", 2);
    static var hx_BoundingSphere_set_BBox = NativeInterface.loadMember(BoundingSphere, "set_BBox", 2);
    static var hx_BoundingSphere_set_BSphr = NativeInterface.loadMember(BoundingSphere, "set_BSphr", 2);
    static var hx_BoundingSphere_set_V3_Flt = NativeInterface.loadMember(BoundingSphere, "set_V3_Flt", 3);
    static var hx_BoundingSphere_transform = NativeInterface.loadMember(BoundingSphere, "transform", 2);
    static var hx_BoundingSphere_property_center_get = NativeInterface.loadMember(BoundingSphere, "property_center_get", 1);
    static var hx_BoundingSphere_property_radius_get = NativeInterface.loadMember(BoundingSphere, "property_radius_get", 1);
    static var hx_BoundingSphere_property_radius_set = NativeInterface.loadMember(BoundingSphere, "property_radius_set", 2);
}

// END
