package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
interface IVector2 extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, null):Float;
    public var y(get_y, null):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float distance(const Vector2& v) const;
    public function distance(v:IVector2):Float;

    // DECL: float distanceSquared(const Vector2& v) const;
    public function distanceSquared(v:IVector2):Float;

    // DECL: float dot(const Vector2& v) const;
    public function dot_V2(v:IVector2):Float;

    // DECL: bool isOne() const;
    public function isOne():Bool;

    // DECL: bool isZero() const;
    public function isZero():Bool;

    // DECL: float length() const;
    public function length():Float;

    // DECL: float lengthSquared() const;
    public function lengthSquared():Float;

    // DECL: void normalize(Vector2* dst) const;
    public function normalize_V2(dst:Vector2):Void;
}
