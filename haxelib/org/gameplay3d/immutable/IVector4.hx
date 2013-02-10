package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
interface IVector4 extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, null):Float;
    public var y(get_y, null):Float;
    public var z(get_z, null):Float;
    public var w(get_w, null):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float distance(const Vector4& v) const;
    public function distance(v:IVector4):Float;

    // DECL: float distanceSquared(const Vector4& v) const;
    public function distanceSquared(v:IVector4):Float;

    // DECL: float dot(const Vector4& v) const;
    public function dot_V4(v:IVector4):Float;

    // DECL: bool isOne() const;
    public function isOne():Bool;

    // DECL: bool isZero() const;
    public function isZero():Bool;

    // DECL: float length() const;
    public function length():Float;

    // DECL: float lengthSquared() const;
    public function lengthSquared():Float;

    // DECL: void normalize(Vector4* dst) const;
    public function normalize_V4(dst:Vector4):Void;
}
