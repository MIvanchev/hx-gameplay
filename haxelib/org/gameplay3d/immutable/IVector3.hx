package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
interface IVector3 extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, null):Float;
    public var y(get_y, null):Float;
    public var z(get_z, null):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float distance(const Vector3& v) const;
    public function distance(v:IVector3):Float;

    // DECL: float distanceSquared(const Vector3& v) const;
    public function distanceSquared(v:IVector3):Float;

    // DECL: float dot(const Vector3& v) const;
    public function dot_V3(v:IVector3):Float;

    // DECL: bool isOne() const;
    public function isOne():Bool;

    // DECL: bool isZero() const;
    public function isZero():Bool;

    // DECL: float length() const;
    public function length():Float;

    // DECL: float lengthSquared() const;
    public function lengthSquared():Float;

    // DECL: void normalize(Vector3* dst) const;
    public function normalize_V3(dst:Vector3):Void;
}
