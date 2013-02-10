package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.shared.SharedVector3;
import org.gameplay3d.util.INativeArray;
import org.gameplay3d.Vector3;

/**
 * TODO
 */
interface IBoundingBox extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var min(default, null):Vector3;
    public var max(default, null):Vector3;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Vector3 getCenter() const;
    public function getCenter():SharedVector3;

    // DECL: void getCenter(Vector3* dst) const;
    public function getCenter_V3(dst:Vector3):Void;

    // DECL: void getCorners(Vector3* dst) const;
    public function getCorners(dst:INativeArray<Vector3>):Void;

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
