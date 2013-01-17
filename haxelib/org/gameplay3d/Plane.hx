package org.gameplay3d;

import org.gameplay3d.immutable.IBoundingBox;
import org.gameplay3d.immutable.IBoundingSphere;
import org.gameplay3d.immutable.IFrustum;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IPlane;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Plane : public GameplayObject
class Plane extends GameplayObject
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var INTERSECTS_INTERSECTING = 0;
    public static inline var INTERSECTS_FRONT = 1;
    public static inline var INTERSECTS_BACK = -1;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _normal:Vector3;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            _normal = Vector3.make();
        }
        return cast(this);
    }

    // DECL: Plane();
    public static function make():Plane
    {
        return new Plane(constructNativeObject());
    }

    // DECL: Plane(const Plane& copy);
    public static function make_Plane(copy:IPlane):Plane
    {
        return new Plane(constructNativeObject_Plane(copy));
    }

    // DECL: Plane(const Vector3& normal, float distance);
    public static function make_V3_Flt(normal:IVector3, distance:Float):Plane
    {
        return new Plane(constructNativeObject_V3_Flt(normal, distance));
    }

    // DECL: Plane(float normalX, float normalY, float normalZ, float distance);
    public static function make_FltX4(normalX:Float, normalY:Float, normalZ:Float, distance:Float):Plane
    {
        return new Plane(constructNativeObject_FltX4(normalX, normalY, normalZ, distance));
    }

    // DECL: float distance(const Vector3& point) const;
    public function distance(point:IVector3):Float
    {
        return hx_Plane_distance(nativeObject, point.native());
    }

    // DECL: float getDistance() const;
    public function getDistance():Float
    {
        return hx_Plane_getDistance(nativeObject);
    }

    // DECL: const Vector3& getNormal() const;
    public function getNormal():IVector3
    {
        return _normal.impersonate(hx_Plane_getNormal(nativeObject));
    }

    // DECL: static void intersection(const Plane& p1, const Plane& p2, const Plane& p3, Vector3* point);
    public static function intersection(p1:IPlane, p2:IPlane, p3:IPlane, point:Vector3):Void
    {
        hx_Plane_static_intersection(p1.native(), p2.native(), p3.native(), point.native());
    }

    // DECL: float intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Float
    {
        return hx_Plane_intersects_BBox(nativeObject, box.native());
    }

    // DECL: float intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Float
    {
        return hx_Plane_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: float intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:IFrustum):Float
    {
        return hx_Plane_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float
    {
        return hx_Plane_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float
    {
        return hx_Plane_intersects_Ray(nativeObject, ray.native());
    }

    // DECL: bool isParallel(const Plane& plane) const;
    public function isParallel(plane:IPlane):Bool
    {
        return hx_Plane_isParallel(nativeObject, plane.native());
    }

    // DECL: void set(const Plane& plane);
    public function set_Plane(plane:IPlane):Void
    {
        hx_Plane_set_Plane(nativeObject, plane.native());
    }

    // DECL: void set(const Vector3& normal, float distance);
    public function set_V3_Flt(normal:IVector3, distance:Float):Void
    {
        hx_Plane_set_V3_Flt(nativeObject, normal.native(), distance);
    }

    // DECL: void setDistance(float distance);
    public function setDistance(distance:Float):Void
    {
        hx_Plane_setDistance(nativeObject, distance);
    }

    // DECL: void setNormal(const Vector3& normal);
    public function setNormal_V3(normal:IVector3):Void
    {
        hx_Plane_setNormal_V3(nativeObject, normal.native());
    }

    // DECL: void setNormal(float x, float y, float z);
    public function setNormal_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_Plane_setNormal_FltX3(nativeObject, x, y, z);
    }

    // DECL: void transform(const Matrix& matrix);
    public function transform(matrix:IMatrix):Void
    {
        hx_Plane_transform(nativeObject, matrix.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Plane();
    static function constructNativeObject():Dynamic
    {
        return hx_Plane_Construct();
    }

    // DECL: Plane(const Plane& copy);
    static function constructNativeObject_Plane(copy:IPlane):Dynamic
    {
        return hx_Plane_Construct_Plane(copy.native());
    }

    // DECL: Plane(const Vector3& normal, float distance);
    static function constructNativeObject_V3_Flt(normal:IVector3, distance:Float):Dynamic
    {
        return hx_Plane_Construct_V3_Flt(normal.native(), distance);
    }

    // DECL: Plane(float normalX, float normalY, float normalZ, float distance);
    static function constructNativeObject_FltX4(normalX:Float, normalY:Float, normalZ:Float, distance:Float):Dynamic
    {
        return hx_Plane_Construct_FltX4(normalX, normalY, normalZ, distance);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Plane_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_Construct", 0);
    static var hx_Plane_Construct_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_Construct_Plane", 1);
    static var hx_Plane_Construct_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_Construct_V3_Flt", 2);
    static var hx_Plane_Construct_FltX4:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_Construct_FltX4", 4);
    static var hx_Plane_distance:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_distance", 2);
    static var hx_Plane_getDistance:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_getDistance", 1);
    static var hx_Plane_getNormal:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_getNormal", 1);
    static var hx_Plane_static_intersection:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_static_intersection", 4);
    static var hx_Plane_intersects_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_intersects_BBox", 2);
    static var hx_Plane_intersects_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_intersects_BSphr", 2);
    static var hx_Plane_intersects_Frstm:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_intersects_Frstm", 2);
    static var hx_Plane_intersects_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_intersects_Plane", 2);
    static var hx_Plane_intersects_Ray:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_intersects_Ray", 2);
    static var hx_Plane_isParallel:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_isParallel", 2);
    static var hx_Plane_set_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_set_Plane", 2);
    static var hx_Plane_set_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_set_V3_Flt", 3);
    static var hx_Plane_setDistance:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_setDistance", 2);
    static var hx_Plane_setNormal_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_setNormal_V3", 2);
    static var hx_Plane_setNormal_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_setNormal_FltX3", 4);
    static var hx_Plane_transform:Dynamic = cpp.Lib.load("gameplay", "hx_Plane_transform", 2);
}

// END
