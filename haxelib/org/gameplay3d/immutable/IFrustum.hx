package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.util.PrimitiveArray;

/**
 * TODO
 */
interface IFrustum extends INativeBinding
{

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: const Plane& getBottom() const;
    public function getBottom():IPlane;

    // DECL: void getCorners(Vector3* corners) const;
    public function getCorners(corners:NativeArrayFloat):Void;

    // DECL: const Plane& getFar() const;
    public function getFar():IPlane;

    // DECL: const Plane& getLeft() const;
    public function getLeft():IPlane;

    // DECL: void getMatrix(Matrix* dst) const;
    public function getMatrix(dst:Matrix):Void;

    // DECL: const Plane& getNear() const;
    public function getNear():IPlane;

    // DECL: const Plane& getRight() const;
    public function getRight():IPlane;

    // DECL: const Plane& getTop() const;
    public function getTop():IPlane;

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Bool;

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Bool;

    // DECL: bool intersects(const Vector3& point) const;
    public function intersects_V3(point:IVector3):Bool;

    // DECL: bool intersects(float x, float y, float z) const;
    public function intersects_FltX3(x:Float, y:Float, z:Float):Bool;

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float;

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float;
}
