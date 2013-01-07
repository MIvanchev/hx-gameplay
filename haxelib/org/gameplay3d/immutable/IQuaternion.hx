package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
interface IQuaternion implements INativeBinding
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

    // DECL: void conjugate(Quaternion* dst) const;
    public function conjugate_Qtrn(dst:Quaternion):Void;

    // DECL: bool inverse(Quaternion* dst) const;
    public function inverse_Qtrn(dst:Quaternion):Bool;

    // DECL: bool isIdentity() const;
    public function isIdentity():Bool;

    // DECL: bool isZero() const;
    public function isZero():Bool;

    // DECL: void normalize(Quaternion* dst) const;
    public function normalize_Qtrn(dst:Quaternion):Void;

    // DECL: float toAxisAngle(Vector3* e) const;
    public function toAxisAngle(e:Vector3):Float;
}

// END
