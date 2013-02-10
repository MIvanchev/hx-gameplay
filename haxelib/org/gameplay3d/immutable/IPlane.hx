package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.Vector3;

/**
 * TODO
 */
interface IPlane extends INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float distance(const Vector3& point) const;
    public function distance(point:IVector3):Float;

    // DECL: float getDistance() const;
    public function getDistance():Float;

    // DECL: const Vector3& getNormal() const;
    public function getNormal():IVector3;

    // DECL: float intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Float;

    // DECL: float intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Float;

    // DECL: float intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:IFrustum):Float;

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float;

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float;

    // DECL: bool isParallel(const Plane& plane) const;
    public function isParallel(plane:IPlane):Bool;
}
