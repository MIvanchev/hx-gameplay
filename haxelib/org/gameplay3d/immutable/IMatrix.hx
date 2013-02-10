package org.gameplay3d.immutable;

import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.immutable.IVector4;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.util.INativeArray;

/**
 * TODO
 */
interface IMatrix extends INativeBinding
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var mat(default, null):INativeArray<Float>;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: bool decompose(Vector3* scale, Quaternion* rotation, Vector3* translation) const;
    public function decompose(scale:Vector3, rotation:Quaternion, translation:Vector3):Bool;

    // DECL: float determinant() const;
    public function determinant():Float;

    // DECL: void getBackVector(Vector3* dst) const;
    public function getBackVector(dst:Vector3):Void;

    // DECL: void getDownVector(Vector3* dst) const;
    public function getDownVector(dst:Vector3):Void;

    // DECL: void getForwardVector(Vector3* dst) const;
    public function getForwardVector(dst:Vector3):Void;

    // DECL: void getLeftVector(Vector3* dst) const;
    public function getLeftVector(dst:Vector3):Void;

    // DECL: void getRightVector(Vector3* dst) const;
    public function getRightVector(dst:Vector3):Void;

    // DECL: bool getRotation(Quaternion* rotation) const;
    public function getRotation(rotation:Quaternion):Bool;

    // DECL: void getScale(Vector3* scale) const;
    public function getScale(scale:Vector3):Void;

    // DECL: void getTranslation(Vector3* translation) const;
    public function getTranslation(translation:Vector3):Void;

    // DECL: void getUpVector(Vector3* dst) const;
    public function getUpVector(dst:Vector3):Void;

    // DECL: bool invert(Matrix* dst) const;
    public function invert_Mat(dst:Matrix):Bool;

    // DECL: bool isIdentity() const;
    public function isIdentity():Bool;

    // DECL: void multiply(float scalar, Matrix* dst) const;
    public function multiply_Flt_Mat(scalar:Float, dst:Matrix):Void;

    // DECL: void negate(Matrix* dst) const;
    public function negate_Mat(dst:Matrix):Void;

    // DECL: void rotate(const Quaternion& q, Matrix* dst) const;
    public function rotate_Qtrn_Mat(q:IQuaternion, dst:Matrix):Void;

    // DECL: void rotate(const Vector3& axis, float angle, Matrix* dst) const;
    public function rotate_V3_Flt_Mat(axis:IVector3, angle:Float, dst:Matrix):Void;

    // DECL: void rotateX(float angle, Matrix* dst) const;
    public function rotateX_Flt_Mat(angle:Float, dst:Matrix):Void;

    // DECL: void rotateY(float angle, Matrix* dst) const;
    public function rotateY_Flt_Mat(angle:Float, dst:Matrix):Void;

    // DECL: void rotateZ(float angle, Matrix* dst) const;
    public function rotateZ_Flt_Mat(angle:Float, dst:Matrix):Void;

    // DECL: void scale(const Vector3& s, Matrix* dst) const;
    public function scale_V3_Mat(s:IVector3, dst:Matrix):Void;

    // DECL: void scale(float value, Matrix* dst) const;
    public function scale_Flt_Mat(value:Float, dst:Matrix):Void;

    // DECL: void scale(float xScale, float yScale, float zScale, Matrix* dst) const;
    public function scale_FltX3_Mat(xScale:Float, yScale:Float, zScale:Float, dst:Matrix):Void;

    // DECL: void transformPoint(Vector3* point) const;
    public function transformPoint_V3(point:Vector3):Void;

    // DECL: void transformPoint(const Vector3& point, Vector3* dst) const;
    public function transformPoint_V3X2(point:IVector3, dst:Vector3):Void;

    // DECL: void transformVector(Vector3* vector) const;
    public function transformVector_V3(vector:Vector3):Void;

    // DECL: void transformVector(Vector4* vector) const;
    public function transformVector_V4(vector:Vector4):Void;

    // DECL: void transformVector(const Vector3& vector, Vector3* dst) const;
    public function transformVector_V3X2(vector:IVector3, dst:Vector3):Void;

    // DECL: void transformVector(const Vector4& vector, Vector4* dst) const;
    public function transformVector_V4X2(vector:IVector4, dst:Vector4):Void;

    // DECL: void transformVector(float x, float y, float z, float w, Vector3* dst) const;
    public function transformVector_FltX4_V3(x:Float, y:Float, z:Float, w:Float, dst:Vector3):Void;

    // DECL: void translate(const Vector3& t, Matrix* dst) const;
    public function translate_V3_Mat(t:IVector3, dst:Matrix):Void;

    // DECL: void translate(float x, float y, float z, Matrix* dst) const;
    public function translate_FltX3_Mat(x:Float, y:Float, z:Float, dst:Matrix):Void;

    // DECL: void transpose(Matrix* dst) const;
    public function transpose_Mat(dst:Matrix):Void;
}
