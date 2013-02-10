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
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Frustum : public GameplayObject
class Frustum extends GameplayObject implements IFrustum
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _top:Plane;
    var _bottom:Plane;
    var _left:Plane;
    var _right:Plane;
    var _far:Plane;
    var _near:Plane;

    // DECL: Frustum();
    public static function make():Frustum
    {
        return new Frustum(constructNativeObject());
    }

    // DECL: Frustum(const Frustum& frustum);
    public static function make_Frstm(frustum:IFrustum):Frustum
    {
        return new Frustum(constructNativeObject_Frstm(frustum));
    }

    // DECL: Frustum(const Matrix& matrix);
    public static function make_Mat(matrix:IMatrix):Frustum
    {
        return new Frustum(constructNativeObject_Mat(matrix));
    }

    // DECL: const Plane& getBottom() const;
    public function getBottom():IPlane
    {
        return Macros.impersonateResult(_bottom, hx_Frustum_getBottom(nativeObject));
    }

    // DECL: void getCorners(Vector3* corners) const;
    public function getCorners(corners:NativeArrayFloat):Void
    {
        hx_Frustum_getCorners(nativeObject, corners.native());
    }

    // DECL: const Plane& getFar() const;
    public function getFar():IPlane
    {
        return Macros.impersonateResult(_far, hx_Frustum_getFar(nativeObject));
    }

    // DECL: const Plane& getLeft() const;
    public function getLeft():IPlane
    {
        return Macros.impersonateResult(_left, hx_Frustum_getLeft(nativeObject));
    }

    // DECL: void getMatrix(Matrix* dst) const;
    public function getMatrix(dst:Matrix):Void
    {
        hx_Frustum_getMatrix(nativeObject, dst.native());
    }

    // DECL: const Plane& getNear() const;
    public function getNear():IPlane
    {
          return Macros.impersonateResult(_near, hx_Frustum_getNear(nativeObject));
    }

    // DECL: const Plane& getRight() const;
    public function getRight():IPlane
    {
        return Macros.impersonateResult(_right, hx_Frustum_getRight(nativeObject));
    }

    // DECL: const Plane& getTop() const;
    public function getTop():IPlane
    {
        return Macros.impersonateResult(_top, hx_Frustum_getTop(nativeObject));
    }

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Bool
    {
        return hx_Frustum_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Bool
    {
        return hx_Frustum_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: bool intersects(const Vector3& point) const;
    public function intersects_V3(point:IVector3):Bool
    {
        return hx_Frustum_intersects_V3(nativeObject, point.native());
    }

    // DECL: bool intersects(float x, float y, float z) const;
    public function intersects_FltX3(x:Float, y:Float, z:Float):Bool
    {
        return hx_Frustum_intersects_FltX3(nativeObject, x, y, z);
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float
    {
        return hx_Frustum_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float
    {
        return hx_Frustum_intersects_Ray(nativeObject, ray.native());
    }

    // DECL: void set(const Frustum& frustum);
    public function set_Frstm(frustum:IFrustum):Void
    {
        hx_Frustum_set_Frstm(nativeObject, frustum.native());
    }

    // DECL: void set(const Matrix& matrix);
    public function set_Mat(matrix:IMatrix):Void
    {
        hx_Frustum_set_Mat(nativeObject, matrix.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Frustum();
    static function constructNativeObject():Dynamic
    {
        return hx_Frustum_Construct();
    }

    // DECL: Frustum(const Frustum& frustum);
    static function constructNativeObject_Frstm(frustum:IFrustum):Dynamic
    {
        return hx_Frustum_Construct_Frstm(frustum.native());
    }

    // DECL: Frustum(const Matrix& matrix);
    static function constructNativeObject_Mat(matrix:IMatrix):Dynamic
    {
        return hx_Frustum_Construct_Mat(matrix.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Frustum_Construct = NativeInterface.loadMember(Frustum, "Construct", 0);
    static var hx_Frustum_Construct_Frstm = NativeInterface.loadMember(Frustum, "Construct_Frstm", 1);
    static var hx_Frustum_Construct_Mat = NativeInterface.loadMember(Frustum, "Construct_Mat", 1);
    static var hx_Frustum_getBottom = NativeInterface.loadMember(Frustum, "getBottom", 1);
    static var hx_Frustum_getCorners = NativeInterface.loadMember(Frustum, "getCorners", 2);
    static var hx_Frustum_getFar = NativeInterface.loadMember(Frustum, "getFar", 1);
    static var hx_Frustum_getLeft = NativeInterface.loadMember(Frustum, "getLeft", 1);
    static var hx_Frustum_getMatrix = NativeInterface.loadMember(Frustum, "getMatrix", 2);
    static var hx_Frustum_getNear = NativeInterface.loadMember(Frustum, "getNear", 1);
    static var hx_Frustum_getRight = NativeInterface.loadMember(Frustum, "getRight", 1);
    static var hx_Frustum_getTop = NativeInterface.loadMember(Frustum, "getTop", 1);
    static var hx_Frustum_intersects_BBox = NativeInterface.loadMember(Frustum, "intersects_BBox", 2);
    static var hx_Frustum_intersects_BSphr = NativeInterface.loadMember(Frustum, "intersects_BSphr", 2);
    static var hx_Frustum_intersects_V3 = NativeInterface.loadMember(Frustum, "intersects_V3", 2);
    static var hx_Frustum_intersects_FltX3 = NativeInterface.loadMember(Frustum, "intersects_FltX3", 4);
    static var hx_Frustum_intersects_Plane = NativeInterface.loadMember(Frustum, "intersects_Plane", 2);
    static var hx_Frustum_intersects_Ray = NativeInterface.loadMember(Frustum, "intersects_Ray", 2);
    static var hx_Frustum_set_Frstm = NativeInterface.loadMember(Frustum, "set_Frstm", 2);
    static var hx_Frustum_set_Mat = NativeInterface.loadMember(Frustum, "set_Mat", 2);
}

// END
