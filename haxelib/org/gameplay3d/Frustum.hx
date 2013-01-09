package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.util.PrimitiveArray;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Frustum : public GameplayObject
class Frustum extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Frustum();
    public static function make():Frustum
    {
        return new Frustum(constructNativeObject());
    }

    // DECL: Frustum(const Frustum& frustum);
    public static function make_Frstm(frustum:Frustum):Frustum
    {
        return new Frustum(constructNativeObject_Frstm(frustum));
    }

    // DECL: Frustum(const Matrix& matrix);
    public static function make_Mat(matrix:Matrix):Frustum
    {
        return new Frustum(constructNativeObject_Mat(matrix));
    }

    // DECL: const Plane& getBottom() const;
    public function getBottom():Plane
    {
        return Plane.wrap(hx_Frustum_getBottom(nativeObject));
    }

    // DECL: void getCorners(Vector3* corners) const;
    public function getCorners(corners:NativeArrayFloat):Void
    {
        hx_Frustum_getCorners(nativeObject, corners.native());
    }

    // DECL: const Plane& getFar() const;
    public function getFar():Plane
    {
        return Plane.wrap(hx_Frustum_getFar(nativeObject));
    }

    // DECL: const Plane& getLeft() const;
    public function getLeft():Plane
    {
        return Plane.wrap(hx_Frustum_getLeft(nativeObject));
    }

    // DECL: void getMatrix(Matrix* dst) const;
    public function getMatrix(dst:Matrix):Void
    {
        hx_Frustum_getMatrix(nativeObject, dst.native());
    }

    // DECL: const Plane& getNear() const;
    public function getNear():Plane
    {
        return Plane.wrap(hx_Frustum_getNear(nativeObject));
    }

    // DECL: const Plane& getRight() const;
    public function getRight():Plane
    {
        return Plane.wrap(hx_Frustum_getRight(nativeObject));
    }

    // DECL: const Plane& getTop() const;
    public function getTop():Plane
    {
        return Plane.wrap(hx_Frustum_getTop(nativeObject));
    }

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:BoundingBox):Bool
    {
        return hx_Frustum_intersects_BBox(nativeObject, box.native());
    }

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:BoundingSphere):Bool
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
    public function intersects_Plane(plane:Plane):Float
    {
        return hx_Frustum_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float
    {
        return hx_Frustum_intersects_Ray(nativeObject, ray.native());
    }

    // DECL: void set(const Frustum& frustum);
    public function set_Frstm(frustum:Frustum):Void
    {
        hx_Frustum_set_Frstm(nativeObject, frustum.native());
    }

    // DECL: void set(const Matrix& matrix);
    public function set_Mat(matrix:Matrix):Void
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
    static function constructNativeObject_Frstm(frustum:Frustum):Dynamic
    {
        return hx_Frustum_Construct_Frstm(frustum.native());
    }

    // DECL: Frustum(const Matrix& matrix);
    static function constructNativeObject_Mat(matrix:Matrix):Dynamic
    {
        return hx_Frustum_Construct_Mat(matrix.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Frustum_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_Construct", 0);
    static var hx_Frustum_Construct_Frstm:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_Construct_Frstm", 1);
    static var hx_Frustum_Construct_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_Construct_Mat", 1);
    static var hx_Frustum_getBottom:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getBottom", 1);
    static var hx_Frustum_getCorners:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getCorners", 2);
    static var hx_Frustum_getFar:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getFar", 1);
    static var hx_Frustum_getLeft:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getLeft", 1);
    static var hx_Frustum_getMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getMatrix", 2);
    static var hx_Frustum_getNear:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getNear", 1);
    static var hx_Frustum_getRight:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getRight", 1);
    static var hx_Frustum_getTop:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_getTop", 1);
    static var hx_Frustum_intersects_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_intersects_BBox", 2);
    static var hx_Frustum_intersects_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_intersects_BSphr", 2);
    static var hx_Frustum_intersects_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_intersects_V3", 2);
    static var hx_Frustum_intersects_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_intersects_FltX3", 4);
    static var hx_Frustum_intersects_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_intersects_Plane", 2);
    static var hx_Frustum_intersects_Ray:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_intersects_Ray", 2);
    static var hx_Frustum_set_Frstm:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_set_Frstm", 2);
    static var hx_Frustum_set_Mat:Dynamic = cpp.Lib.load("gameplay", "hx_Frustum_set_Mat", 2);
}

// END
