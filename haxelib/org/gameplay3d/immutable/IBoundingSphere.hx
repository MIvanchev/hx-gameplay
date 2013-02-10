package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.Vector3;

/**
 * TODO
 */
interface IBoundingSphere extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var center(default, null):Vector3;
    public var radius(get_radius, null):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: bool intersects(const BoundingBox& box) const;
    public function intersects_BBox(box:IBoundingBox):Bool;

    // DECL: bool intersects(const BoundingSphere& sphere) const;
    public function intersects_BSphr(sphere:IBoundingSphere):Bool;

    // DECL: bool intersects(const Frustum& frustum) const;
    public function intersects_Frstm(frustum:IFrustum):Bool;

    // DECL: float intersects(const Plane& plane) const;
    public function intersects_Plane(plane:IPlane):Float;

    // DECL: float intersects(const Ray& ray) const;
    public function intersects_Ray(ray:Ray):Float;

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool;
}
