package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Ray
class Ray extends GameplayObject
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var INTERSECTS_NONE = -1;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _direction:Vector3;
    var _origin:Vector3;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        if (this.nativeObject == null)
        {
            _direction = Vector3.make();
            _origin = Vector3.make();
        }
        return super.impersonate(nativeObject);
    }

    // DECL: Ray();
    public static function make():Ray
    {
        return new Ray(constructNativeObject());
    }

    // DECL: Ray(const Ray& copy);
    public static function make_Ray(copy:Ray):Ray
    {
        return new Ray(constructNativeObject_Ray(copy));
    }

    // DECL: Ray(const Vector3& origin, const Vector3& direction);
    public static function make_V3X2(origin:IVector3, direction:IVector3):Ray
    {
        return new Ray(constructNativeObject_V3X2(origin, direction));
    }

    // DECL: Ray(float originX, float originY, float originZ, float dirX, float dirY, float dirZ);
    public static function make_FltX6(originX:Float, originY:Float, originZ:Float, dirX:Float, dirY:Float, dirZ:Float):Ray
    {
        return new Ray(constructNativeObject_FltX6(originX, originY, originZ, dirX, dirY, dirZ));
    }

    // DECL: const Vector3& getDirection() const;
    public function getDirection():IVector3
    {
        return _direction.impersonate(hx_Ray_getDirection(nativeObject));
    }

    // DECL: const Vector3& getOrigin() const;
    public function getOrigin():IVector3
    {
        return _origin.impersonate(hx_Ray_getOrigin(nativeObject));
    }

    // DECL: float intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:BoundingBox):Float
    {
        return hx_Ray_intersects_BBox(nativeObject, box.native());
    }

    // DECL: float intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:BoundingSphere):Float
    {
        return hx_Ray_intersects_BSphr(nativeObject, sphere.native());
    }

    // DECL: float intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:Frustum):Float
    {
        return hx_Ray_intersects_Frstm(nativeObject, frustum.native());
    }

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:Plane):Float
    {
        return hx_Ray_intersects_Plane(nativeObject, plane.native());
    }

    // DECL: void set(const Ray& ray);
    public function set_Ray(ray:Ray):Void
    {
        hx_Ray_set_Ray(nativeObject, ray.native());
    }

    // DECL: void set(const Vector3& origin, const Vector3& direction);
    public function set_V3X2(origin:IVector3, direction:IVector3):Void
    {
        hx_Ray_set_V3X2(nativeObject, origin.native(), direction.native());
    }

    // DECL: void setDirection(const Vector3& direction);
    public function setDirection_V3(direction:IVector3):Void
    {
        hx_Ray_setDirection_V3(nativeObject, direction.native());
    }

    // DECL: void setDirection(float x, float y, float z);
    public function setDirection_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_Ray_setDirection_FltX3(nativeObject, x, y, z);
    }

    // DECL: void setOrigin(const Vector3& origin);
    public function setOrigin_V3(origin:IVector3):Void
    {
        hx_Ray_setOrigin_V3(nativeObject, origin.native());
    }

    // DECL: void setOrigin(float x, float y, float z);
    public function setOrigin_FltX3(x:Float, y:Float, z:Float):Void
    {
        hx_Ray_setOrigin_FltX3(nativeObject, x, y, z);
    }

    // DECL: void transform(const Matrix& matrix);
    public function transform(matrix:IMatrix):Void
    {
        hx_Ray_transform(nativeObject, matrix.native());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Ray();
    static function constructNativeObject():Dynamic
    {
        return hx_Ray_Construct();
    }

    // DECL: Ray(const Ray& copy);
    static function constructNativeObject_Ray(copy:Ray):Dynamic
    {
        return hx_Ray_Construct_Ray(copy.native());
    }

    // DECL: Ray(const Vector3& origin, const Vector3& direction);
    static function constructNativeObject_V3X2(origin:IVector3, direction:IVector3):Dynamic
    {
        return hx_Ray_Construct_V3X2(origin.native(), direction.native());
    }

    // DECL: Ray(float originX, float originY, float originZ, float dirX, float dirY, float dirZ);
    static function constructNativeObject_FltX6(originX:Float, originY:Float, originZ:Float, dirX:Float, dirY:Float, dirZ:Float):Dynamic
    {
        return hx_Ray_Construct_FltX6(originX, originY, originZ, dirX, dirY, dirZ);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Ray_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_Construct", 0);
    static var hx_Ray_Construct_Ray:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_Construct_Ray", 1);
    static var hx_Ray_Construct_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_Construct_V3X2", 2);
    static var hx_Ray_Construct_FltX6:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_Construct_FltX6", -1);
    static var hx_Ray_getDirection:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_getDirection", 1);
    static var hx_Ray_getOrigin:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_getOrigin", 1);
    static var hx_Ray_intersects_BBox:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_intersects_BBox", 2);
    static var hx_Ray_intersects_BSphr:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_intersects_BSphr", 2);
    static var hx_Ray_intersects_Frstm:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_intersects_Frstm", 2);
    static var hx_Ray_intersects_Plane:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_intersects_Plane", 2);
    static var hx_Ray_set_Ray:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_set_Ray", 2);
    static var hx_Ray_set_V3X2:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_set_V3X2", 3);
    static var hx_Ray_setDirection_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_setDirection_V3", 2);
    static var hx_Ray_setDirection_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_setDirection_FltX3", 4);
    static var hx_Ray_setOrigin_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_setOrigin_V3", 2);
    static var hx_Ray_setOrigin_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_setOrigin_FltX3", 4);
    static var hx_Ray_transform:Dynamic = cpp.Lib.load("gameplay", "hx_Ray_transform", 2);
}

// END
