package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IQuaternion;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.impl.AnimationTarget_ScriptTarget;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.shared.SharedVector3;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.Transform_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Transform : public AnimationTarget, public ScriptTarget
class Transform extends AnimationTarget_ScriptTarget
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var ANIMATE_SCALE_UNIT = 0;
    public static inline var ANIMATE_SCALE = 1;
    public static inline var ANIMATE_SCALE_X = 2;
    public static inline var ANIMATE_SCALE_Y = 3;
    public static inline var ANIMATE_SCALE_Z = 4;
    public static inline var ANIMATE_ROTATE = 8;
    public static inline var ANIMATE_TRANSLATE = 9;
    public static inline var ANIMATE_TRANSLATE_X = 10;
    public static inline var ANIMATE_TRANSLATE_Y = 11;
    public static inline var ANIMATE_TRANSLATE_Z = 12;
    public static inline var ANIMATE_ROTATE_TRANSLATE = 16;
    public static inline var ANIMATE_SCALE_ROTATE_TRANSLATE = 17;
    public static inline var ANIMATE_SCALE_TRANSLATE = 18;
    public static inline var ANIMATE_SCALE_ROTATE = 19;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _scale:Vector3;
    var _translation:Vector3;
    var _backVector:Vector3;
    var _downVector:Vector3;
    var _forwardVector:Vector3;
    var _leftVector:Vector3;
    var _rightVector:Vector3;
    var _upVector:Vector3;
    var _matrix:Matrix;
    var _rotation:Quaternion;

    // DECL: Transform();
    public static function make():Transform
    {
        return new Transform(constructNativeObject());
    }

    // DECL: Transform(const Transform& copy);
    public static function make_Trans(copy:Transform):Transform
    {
        return new Transform(constructNativeObject_Trans(copy));
    }

    // DECL: Transform(const Vector3& scale, const Matrix& rotation, const Vector3& translation);
    public static function make_V3_Mat_V3(scale:IVector3, rotation:IMatrix, translation:IVector3):Transform
    {
        return new Transform(constructNativeObject_V3_Mat_V3(scale, rotation, translation));
    }

    // DECL: Transform(const Vector3& scale, const Quaternion& rotation, const Vector3& translation);
    public static function make_V3_Qtrn_V3(scale:IVector3, rotation:IQuaternion, translation:IVector3):Transform
    {
        return new Transform(constructNativeObject_V3_Qtrn_V3(scale, rotation, translation));
    }

    // DECL: void addListener(Transform::Listener* listener, long cookie = 0);
    public function addListener(listener:Transform_ListenerWrapper, cookie:Int = 0):Void
    {
        hx_Transform_addListener(nativeObject, listener.native(), cookie);
    }

    // DECL: unsigned int getAnimationPropertyComponentCount(int propertyId) const;
    override public function getAnimationPropertyComponentCount(propertyId:Int):Int
    {
        return hx_Transform_getAnimationPropertyComponentCount(nativeObject, propertyId);
    }

    // DECL: void getAnimationPropertyValue(int propertyId, AnimationValue* value);
    override public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void
    {
        hx_Transform_getAnimationPropertyValue(nativeObject, propertyId, value.native());
    }

    // DECL: Vector3 getBackVector() const;
    public function getBackVector():SharedVector3
    {
        return Macros.impersonateResult(_backVector, hx_Transform_getBackVector(nativeObject));
    }

    // DECL: void getBackVector(Vector3* dst) const;
    public function getBackVector_V3(dst:Vector3):Void
    {
        hx_Transform_getBackVector_V3(nativeObject, dst.native());
    }

    // DECL: Vector3 getDownVector() const;
    public function getDownVector():SharedVector3
    {
        return Macros.impersonateResult(_downVector, hx_Transform_getDownVector(nativeObject));
    }

    // DECL: void getDownVector(Vector3* dst) const;
    public function getDownVector_V3(dst:Vector3):Void
    {
        hx_Transform_getDownVector_V3(nativeObject, dst.native());
    }

    // DECL: Vector3 getForwardVector() const;
    public function getForwardVector():SharedVector3
    {
        return Macros.impersonateResult(_forwardVector, hx_Transform_getForwardVector(nativeObject));
    }

    // DECL: void getForwardVector(Vector3* dst) const;
    public function getForwardVector_V3(dst:Vector3):Void
    {
        hx_Transform_getForwardVector_V3(nativeObject, dst.native());
    }

    // DECL: Vector3 getLeftVector() const;
    public function getLeftVector():SharedVector3
    {
        return Macros.impersonateResult(_leftVector, hx_Transform_getLeftVector(nativeObject));
    }

    // DECL: void getLeftVector(Vector3* dst) const;
    public function getLeftVector_V3(dst:Vector3):Void
    {
        hx_Transform_getLeftVector_V3(nativeObject, dst.native());
    }

    // DECL: const Matrix& getMatrix() const;
    public function getMatrix():IMatrix
    {
        return Macros.impersonateResult(_matrix, hx_Transform_getMatrix(nativeObject));
    }

    // DECL: Vector3 getRightVector() const;
    public function getRightVector():SharedVector3
    {
        return Macros.impersonateResult(_rightVector, hx_Transform_getRightVector(nativeObject));
    }

    // DECL: void getRightVector(Vector3* dst) const;
    public function getRightVector_V3(dst:Vector3):Void
    {
        hx_Transform_getRightVector_V3(nativeObject, dst.native());
    }

    // DECL: const Quaternion& getRotation() const;
    public function getRotation():IQuaternion
    {
        return Macros.impersonateResult(_rotation, hx_Transform_getRotation(nativeObject));
    }

    // DECL: float getRotation(Vector3* axis) const;
    public function getRotation_V3(axis:Vector3):Float
    {
        return hx_Transform_getRotation_V3(nativeObject, axis.native());
    }

    // DECL: void getRotation(Matrix* rotation) const;
    public function getRotation_Mat(rotation:Matrix):Void
    {
        hx_Transform_getRotation_Mat(nativeObject, rotation.native());
    }

    // DECL: void getRotation(Quaternion* rotation) const;
    public function getRotation_Qtrn(rotation:Quaternion):Void
    {
        hx_Transform_getRotation_Qtrn(nativeObject, rotation.native());
    }

    // DECL: const Vector3& getScale() const;
    public function getScale():IVector3
    {
        return Macros.impersonateResult(_scale, hx_Transform_getScale(nativeObject));
    }

    // DECL: void getScale(Vector3* scale) const;
    public function getScale_V3(scale:Vector3):Void
    {
        hx_Transform_getScale_V3(nativeObject, scale.native());
    }

    // DECL: float getScaleX() const;
    public function getScaleX():Float
    {
        return hx_Transform_getScaleX(nativeObject);
    }

    // DECL: float getScaleY() const;
    public function getScaleY():Float
    {
        return hx_Transform_getScaleY(nativeObject);
    }

    // DECL: float getScaleZ() const;
    public function getScaleZ():Float
    {
        return hx_Transform_getScaleZ(nativeObject);
    }

    // DECL: const Vector3& getTranslation() const;
    public function getTranslation():IVector3
    {
        return Macros.impersonateResult(_translation, hx_Transform_getTranslation(nativeObject));
    }

    // DECL: void getTranslation(Vector3* translation) const;
    public function getTranslation_V3(translation:Vector3):Void
    {
        hx_Transform_getTranslation_V3(nativeObject, translation.native());
    }

    // DECL: float getTranslationX() const;
    public function getTranslationX():Float
    {
        return hx_Transform_getTranslationX(nativeObject);
    }

    // DECL: float getTranslationY() const;
    public function getTranslationY():Float
    {
        return hx_Transform_getTranslationY(nativeObject);
    }

    // DECL: float getTranslationZ() const;
    public function getTranslationZ():Float
    {
        return hx_Transform_getTranslationZ(nativeObject);
    }

    // DECL: Vector3 getUpVector() const;
    public function getUpVector():SharedVector3
    {
        return Macros.impersonateResult(_upVector, hx_Transform_getUpVector(nativeObject));
    }

    // DECL: void getUpVector(Vector3* dst) const;
    public function getUpVector_V3(dst:Vector3):Void
    {
        hx_Transform_getUpVector_V3(nativeObject, dst.native());
    }

    // DECL: static bool isTransformChangedSuspended();
    public static function isTransformChangedSuspended():Bool
    {
        return hx_Transform_static_isTransformChangedSuspended();
    }

    // DECL: void removeListener(Transform::Listener* listener);
    public function removeListener(listener:Transform_ListenerWrapper):Void
    {
        hx_Transform_removeListener(nativeObject, listener.native());
    }

    // DECL: static void resumeTransformChanged();
    public static function resumeTransformChanged():Void
    {
        hx_Transform_static_resumeTransformChanged();
    }

    // DECL: void rotate(const Matrix& rotation);
    public function rotate_Mat(rotation:IMatrix):Void
    {
        hx_Transform_rotate_Mat(nativeObject, rotation.native());
    }

    // DECL: void rotate(const Quaternion& rotation);
    public function rotate_Qtrn(rotation:IQuaternion):Void
    {
        hx_Transform_rotate_Qtrn(nativeObject, rotation.native());
    }

    // DECL: void rotate(const Vector3& axis, float angle);
    public function rotate_V3_Flt(axis:IVector3, angle:Float):Void
    {
        hx_Transform_rotate_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void rotate(float qx, float qy, float qz, float qw);
    public function rotate_FltX4(qx:Float, qy:Float, qz:Float, qw:Float):Void
    {
        hx_Transform_rotate_FltX4(nativeObject, qx, qy, qz, qw);
    }

    // DECL: void rotateX(float angle);
    public function rotateX(angle:Float):Void
    {
        hx_Transform_rotateX(nativeObject, angle);
    }

    // DECL: void rotateY(float angle);
    public function rotateY(angle:Float):Void
    {
        hx_Transform_rotateY(nativeObject, angle);
    }

    // DECL: void rotateZ(float angle);
    public function rotateZ(angle:Float):Void
    {
        hx_Transform_rotateZ(nativeObject, angle);
    }

    // DECL: void scale(const Vector3& scale);
    public function scale_V3(scale:IVector3):Void
    {
        hx_Transform_scale_V3(nativeObject, scale.native());
    }

    // DECL: void scale(float scale);
    public function scale_Flt(scale:Float):Void
    {
        hx_Transform_scale_Flt(nativeObject, scale);
    }

    // DECL: void scale(float sx, float sy, float sz);
    public function scale_FltX3(sx:Float, sy:Float, sz:Float):Void
    {
        hx_Transform_scale_FltX3(nativeObject, sx, sy, sz);
    }

    // DECL: void scaleX(float sx);
    public function scaleX(sx:Float):Void
    {
        hx_Transform_scaleX(nativeObject, sx);
    }

    // DECL: void scaleY(float sy);
    public function scaleY(sy:Float):Void
    {
        hx_Transform_scaleY(nativeObject, sy);
    }

    // DECL: void scaleZ(float sz);
    public function scaleZ(sz:Float):Void
    {
        hx_Transform_scaleZ(nativeObject, sz);
    }

    // DECL: void set(const Transform& transform);
    public function set_Trans(transform:Transform):Void
    {
        hx_Transform_set_Trans(nativeObject, transform.native());
    }

    // DECL: void set(const Vector3& scale, const Matrix& rotation, const Vector3& translation);
    public function set_V3_Mat_V3(scale:IVector3, rotation:IMatrix, translation:IVector3):Void
    {
        hx_Transform_set_V3_Mat_V3(nativeObject, scale.native(), rotation.native(), translation.native());
    }

    // DECL: void set(const Vector3& scale, const Quaternion& rotation, const Vector3& translation);
    public function set_V3_Qtrn_V3(scale:IVector3, rotation:IQuaternion, translation:IVector3):Void
    {
        hx_Transform_set_V3_Qtrn_V3(nativeObject, scale.native(), rotation.native(), translation.native());
    }

    // DECL: void set(const Vector3& scale, const Vector3& axis, float angle, const Vector3& translation);
    public function set_V3X2_Flt_V3(scale:IVector3, axis:IVector3, angle:Float, translation:IVector3):Void
    {
        hx_Transform_set_V3X2_Flt_V3(nativeObject, scale.native(), axis.native(), angle, translation.native());
    }

    // DECL: void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
    override public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_Transform_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    // DECL: void setIdentity();
    public function setIdentity():Void
    {
        hx_Transform_setIdentity(nativeObject);
    }

    // DECL: void setRotation(const Matrix& rotation);
    public function setRotation_Mat(rotation:IMatrix):Void
    {
        hx_Transform_setRotation_Mat(nativeObject, rotation.native());
    }

    // DECL: void setRotation(const Quaternion& rotation);
    public function setRotation_Qtrn(rotation:IQuaternion):Void
    {
        hx_Transform_setRotation_Qtrn(nativeObject, rotation.native());
    }

    // DECL: void setRotation(const Vector3& axis, float angle);
    public function setRotation_V3_Flt(axis:IVector3, angle:Float):Void
    {
        hx_Transform_setRotation_V3_Flt(nativeObject, axis.native(), angle);
    }

    // DECL: void setRotation(float qx, float qy, float qz, float qw);
    public function setRotation_FltX4(qx:Float, qy:Float, qz:Float, qw:Float):Void
    {
        hx_Transform_setRotation_FltX4(nativeObject, qx, qy, qz, qw);
    }

    // DECL: void setScale(const Vector3& scale);
    public function setScale_V3(scale:IVector3):Void
    {
        hx_Transform_setScale_V3(nativeObject, scale.native());
    }

    // DECL: void setScale(float scale);
    public function setScale_Flt(scale:Float):Void
    {
        hx_Transform_setScale_Flt(nativeObject, scale);
    }

    // DECL: void setScale(float sx, float sy, float sz);
    public function setScale_FltX3(sx:Float, sy:Float, sz:Float):Void
    {
        hx_Transform_setScale_FltX3(nativeObject, sx, sy, sz);
    }

    // DECL: void setScaleX(float sx);
    public function setScaleX(sx:Float):Void
    {
        hx_Transform_setScaleX(nativeObject, sx);
    }

    // DECL: void setScaleY(float sy);
    public function setScaleY(sy:Float):Void
    {
        hx_Transform_setScaleY(nativeObject, sy);
    }

    // DECL: void setScaleZ(float sz);
    public function setScaleZ(sz:Float):Void
    {
        hx_Transform_setScaleZ(nativeObject, sz);
    }

    // DECL: void setTranslation(const Vector3& translation);
    public function setTranslation_V3(translation:IVector3):Void
    {
        hx_Transform_setTranslation_V3(nativeObject, translation.native());
    }

    // DECL: void setTranslation(float tx, float ty, float tz);
    public function setTranslation_FltX3(tx:Float, ty:Float, tz:Float):Void
    {
        hx_Transform_setTranslation_FltX3(nativeObject, tx, ty, tz);
    }

    // DECL: void setTranslationX(float tx);
    public function setTranslationX(tx:Float):Void
    {
        hx_Transform_setTranslationX(nativeObject, tx);
    }

    // DECL: void setTranslationY(float ty);
    public function setTranslationY(ty:Float):Void
    {
        hx_Transform_setTranslationY(nativeObject, ty);
    }

    // DECL: void setTranslationZ(float tz);
    public function setTranslationZ(tz:Float):Void
    {
        hx_Transform_setTranslationZ(nativeObject, tz);
    }

    // DECL: static void suspendTransformChanged();
    public static function suspendTransformChanged():Void
    {
        hx_Transform_static_suspendTransformChanged();
    }

    // DECL: void transformPoint(Vector3* point);
    public function transformPoint_V3(point:Vector3):Void
    {
        hx_Transform_transformPoint_V3(nativeObject, point.native());
    }

    // DECL: void transformPoint(const Vector3& point, Vector3* dst);
    public function transformPoint_V3X2(point:IVector3, dst:Vector3):Void
    {
        hx_Transform_transformPoint_V3X2(nativeObject, point.native(), dst.native());
    }

    // DECL: void transformVector(Vector3* vector);
    public function transformVector_V3(vector:Vector3):Void
    {
        hx_Transform_transformVector_V3(nativeObject, vector.native());
    }

    // DECL: void transformVector(const Vector3& transformVector, Vector3* dst);
    public function transformVector_V3X2(transformVector:IVector3, dst:Vector3):Void
    {
        hx_Transform_transformVector_V3X2(nativeObject, transformVector.native(), dst.native());
    }

    // DECL: void transformVector(float x, float y, float z, float w, Vector3* dst);
    public function transformVector_FltX4_V3(x:Float, y:Float, z:Float, w:Float, dst:Vector3):Void
    {
        hx_Transform_transformVector_FltX4_V3(nativeObject, x, y, z, w, dst.native());
    }

    // DECL: void translate(const Vector3& translation);
    public function translate_V3(translation:IVector3):Void
    {
        hx_Transform_translate_V3(nativeObject, translation.native());
    }

    // DECL: void translate(float tx, float ty, float tz);
    public function translate_FltX3(tx:Float, ty:Float, tz:Float):Void
    {
        hx_Transform_translate_FltX3(nativeObject, tx, ty, tz);
    }

    // DECL: void translateForward(float amount);
    public function translateForward(amount:Float):Void
    {
        hx_Transform_translateForward(nativeObject, amount);
    }

    // DECL: void translateLeft(float amount);
    public function translateLeft(amount:Float):Void
    {
        hx_Transform_translateLeft(nativeObject, amount);
    }

    // DECL: void translateSmooth(const Vector3& target, float elapsedTime, float responseTime);
    public function translateSmooth(target:IVector3, elapsedTime:Float, responseTime:Float):Void
    {
        hx_Transform_translateSmooth(nativeObject, target.native(), elapsedTime, responseTime);
    }

    // DECL: void translateUp(float amount);
    public function translateUp(amount:Float):Void
    {
        hx_Transform_translateUp(nativeObject, amount);
    }

    // DECL: void translateX(float tx);
    public function translateX(tx:Float):Void
    {
        hx_Transform_translateX(nativeObject, tx);
    }

    // DECL: void translateY(float ty);
    public function translateY(ty:Float):Void
    {
        hx_Transform_translateY(nativeObject, ty);
    }

    // DECL: void translateZ(float tz);
    public function translateZ(tz:Float):Void
    {
        hx_Transform_translateZ(nativeObject, tz);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Transform();
    static function constructNativeObject():Dynamic
    {
        return hx_Transform_Construct();
    }

    // DECL: Transform(const Transform& copy);
    static function constructNativeObject_Trans(copy:Transform):Dynamic
    {
        return hx_Transform_Construct_Trans(copy.nativeObject);
    }

    // DECL: Transform(const Vector3& scale, const Matrix& rotation, const Vector3& translation);
    static function constructNativeObject_V3_Mat_V3(scale:IVector3, rotation:IMatrix, translation:IVector3):Dynamic
    {
        return hx_Transform_Construct_V3_Mat_V3(scale.nativeObject, rotation.nativeObject, translation.nativeObject);
    }

    // DECL: Transform(const Vector3& scale, const Quaternion& rotation, const Vector3& translation);
    static function constructNativeObject_V3_Qtrn_V3(scale:IVector3, rotation:IQuaternion, translation:IVector3):Dynamic
    {
        return hx_Transform_Construct_V3_Qtrn_V3(scale.nativeObject, rotation.nativeObject, translation.nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Transform_Construct = NativeInterface.loadMember(Transform, "Construct", 0);
    static var hx_Transform_Construct_Trans = NativeInterface.loadMember(Transform, "Construct_Trans", 1);
    static var hx_Transform_Construct_V3_Mat_V3 = NativeInterface.loadMember(Transform, "Construct_V3_Mat_V3", 3);
    static var hx_Transform_Construct_V3_Qtrn_V3 = NativeInterface.loadMember(Transform, "Construct_V3_Qtrn_V3", 3);
    static var hx_Transform_addListener = NativeInterface.loadMember(Transform, "addListener", 3);
    static var hx_Transform_getAnimationPropertyComponentCount = NativeInterface.loadMember(Transform, "getAnimationPropertyComponentCount", 2);
    static var hx_Transform_getAnimationPropertyValue = NativeInterface.loadMember(Transform, "getAnimationPropertyValue", 3);
    static var hx_Transform_getBackVector = NativeInterface.loadMember(Transform, "getBackVector", 1);
    static var hx_Transform_getBackVector_V3 = NativeInterface.loadMember(Transform, "getBackVector_V3", 2);
    static var hx_Transform_getDownVector = NativeInterface.loadMember(Transform, "getDownVector", 1);
    static var hx_Transform_getDownVector_V3 = NativeInterface.loadMember(Transform, "getDownVector_V3", 2);
    static var hx_Transform_getForwardVector = NativeInterface.loadMember(Transform, "getForwardVector", 1);
    static var hx_Transform_getForwardVector_V3 = NativeInterface.loadMember(Transform, "getForwardVector_V3", 2);
    static var hx_Transform_getLeftVector = NativeInterface.loadMember(Transform, "getLeftVector", 1);
    static var hx_Transform_getLeftVector_V3 = NativeInterface.loadMember(Transform, "getLeftVector_V3", 2);
    static var hx_Transform_getMatrix = NativeInterface.loadMember(Transform, "getMatrix", 1);
    static var hx_Transform_getRightVector = NativeInterface.loadMember(Transform, "getRightVector", 1);
    static var hx_Transform_getRightVector_V3 = NativeInterface.loadMember(Transform, "getRightVector_V3", 2);
    static var hx_Transform_getRotation = NativeInterface.loadMember(Transform, "getRotation", 1);
    static var hx_Transform_getRotation_V3 = NativeInterface.loadMember(Transform, "getRotation_V3", 2);
    static var hx_Transform_getRotation_Mat = NativeInterface.loadMember(Transform, "getRotation_Mat", 2);
    static var hx_Transform_getRotation_Qtrn = NativeInterface.loadMember(Transform, "getRotation_Qtrn", 2);
    static var hx_Transform_getScale = NativeInterface.loadMember(Transform, "getScale", 1);
    static var hx_Transform_getScale_V3 = NativeInterface.loadMember(Transform, "getScale_V3", 2);
    static var hx_Transform_getScaleX = NativeInterface.loadMember(Transform, "getScaleX", 1);
    static var hx_Transform_getScaleY = NativeInterface.loadMember(Transform, "getScaleY", 1);
    static var hx_Transform_getScaleZ = NativeInterface.loadMember(Transform, "getScaleZ", 1);
    static var hx_Transform_getTranslation = NativeInterface.loadMember(Transform, "getTranslation", 1);
    static var hx_Transform_getTranslation_V3 = NativeInterface.loadMember(Transform, "getTranslation_V3", 2);
    static var hx_Transform_getTranslationX = NativeInterface.loadMember(Transform, "getTranslationX", 1);
    static var hx_Transform_getTranslationY = NativeInterface.loadMember(Transform, "getTranslationY", 1);
    static var hx_Transform_getTranslationZ = NativeInterface.loadMember(Transform, "getTranslationZ", 1);
    static var hx_Transform_getUpVector = NativeInterface.loadMember(Transform, "getUpVector", 1);
    static var hx_Transform_getUpVector_V3 = NativeInterface.loadMember(Transform, "getUpVector_V3", 2);
    static var hx_Transform_static_isTransformChangedSuspended = NativeInterface.loadMember(Transform, "static_isTransformChangedSuspended", 0);
    static var hx_Transform_removeListener = NativeInterface.loadMember(Transform, "removeListener", 2);
    static var hx_Transform_static_resumeTransformChanged = NativeInterface.loadMember(Transform, "static_resumeTransformChanged", 0);
    static var hx_Transform_rotate_Mat = NativeInterface.loadMember(Transform, "rotate_Mat", 2);
    static var hx_Transform_rotate_Qtrn = NativeInterface.loadMember(Transform, "rotate_Qtrn", 2);
    static var hx_Transform_rotate_V3_Flt = NativeInterface.loadMember(Transform, "rotate_V3_Flt", 3);
    static var hx_Transform_rotate_FltX4 = NativeInterface.loadMember(Transform, "rotate_FltX4", 5);
    static var hx_Transform_rotateX = NativeInterface.loadMember(Transform, "rotateX", 2);
    static var hx_Transform_rotateY = NativeInterface.loadMember(Transform, "rotateY", 2);
    static var hx_Transform_rotateZ = NativeInterface.loadMember(Transform, "rotateZ", 2);
    static var hx_Transform_scale_V3 = NativeInterface.loadMember(Transform, "scale_V3", 2);
    static var hx_Transform_scale_Flt = NativeInterface.loadMember(Transform, "scale_Flt", 2);
    static var hx_Transform_scale_FltX3 = NativeInterface.loadMember(Transform, "scale_FltX3", 4);
    static var hx_Transform_scaleX = NativeInterface.loadMember(Transform, "scaleX", 2);
    static var hx_Transform_scaleY = NativeInterface.loadMember(Transform, "scaleY", 2);
    static var hx_Transform_scaleZ = NativeInterface.loadMember(Transform, "scaleZ", 2);
    static var hx_Transform_set_Trans = NativeInterface.loadMember(Transform, "set_Trans", 2);
    static var hx_Transform_set_V3_Mat_V3 = NativeInterface.loadMember(Transform, "set_V3_Mat_V3", 4);
    static var hx_Transform_set_V3_Qtrn_V3 = NativeInterface.loadMember(Transform, "set_V3_Qtrn_V3", 4);
    static var hx_Transform_set_V3X2_Flt_V3 = NativeInterface.loadMember(Transform, "set_V3X2_Flt_V3", 5);
    static var hx_Transform_setAnimationPropertyValue = NativeInterface.loadMember(Transform, "setAnimationPropertyValue", 4);
    static var hx_Transform_setIdentity = NativeInterface.loadMember(Transform, "setIdentity", 1);
    static var hx_Transform_setRotation_Mat = NativeInterface.loadMember(Transform, "setRotation_Mat", 2);
    static var hx_Transform_setRotation_Qtrn = NativeInterface.loadMember(Transform, "setRotation_Qtrn", 2);
    static var hx_Transform_setRotation_V3_Flt = NativeInterface.loadMember(Transform, "setRotation_V3_Flt", 3);
    static var hx_Transform_setRotation_FltX4 = NativeInterface.loadMember(Transform, "setRotation_FltX4", 5);
    static var hx_Transform_setScale_V3 = NativeInterface.loadMember(Transform, "setScale_V3", 2);
    static var hx_Transform_setScale_Flt = NativeInterface.loadMember(Transform, "setScale_Flt", 2);
    static var hx_Transform_setScale_FltX3 = NativeInterface.loadMember(Transform, "setScale_FltX3", 4);
    static var hx_Transform_setScaleX = NativeInterface.loadMember(Transform, "setScaleX", 2);
    static var hx_Transform_setScaleY = NativeInterface.loadMember(Transform, "setScaleY", 2);
    static var hx_Transform_setScaleZ = NativeInterface.loadMember(Transform, "setScaleZ", 2);
    static var hx_Transform_setTranslation_V3 = NativeInterface.loadMember(Transform, "setTranslation_V3", 2);
    static var hx_Transform_setTranslation_FltX3 = NativeInterface.loadMember(Transform, "setTranslation_FltX3", 4);
    static var hx_Transform_setTranslationX = NativeInterface.loadMember(Transform, "setTranslationX", 2);
    static var hx_Transform_setTranslationY = NativeInterface.loadMember(Transform, "setTranslationY", 2);
    static var hx_Transform_setTranslationZ = NativeInterface.loadMember(Transform, "setTranslationZ", 2);
    static var hx_Transform_static_suspendTransformChanged = NativeInterface.loadMember(Transform, "static_suspendTransformChanged", 0);
    static var hx_Transform_transformPoint_V3 = NativeInterface.loadMember(Transform, "transformPoint_V3", 2);
    static var hx_Transform_transformPoint_V3X2 = NativeInterface.loadMember(Transform, "transformPoint_V3X2", 3);
    static var hx_Transform_transformVector_V3 = NativeInterface.loadMember(Transform, "transformVector_V3", 2);
    static var hx_Transform_transformVector_V3X2 = NativeInterface.loadMember(Transform, "transformVector_V3X2", 3);
    static var hx_Transform_transformVector_FltX4_V3 = NativeInterface.loadMember(Transform, "transformVector_FltX4_V3", -1);
    static var hx_Transform_translate_V3 = NativeInterface.loadMember(Transform, "translate_V3", 2);
    static var hx_Transform_translate_FltX3 = NativeInterface.loadMember(Transform, "translate_FltX3", 4);
    static var hx_Transform_translateForward = NativeInterface.loadMember(Transform, "translateForward", 2);
    static var hx_Transform_translateLeft = NativeInterface.loadMember(Transform, "translateLeft", 2);
    static var hx_Transform_translateSmooth = NativeInterface.loadMember(Transform, "translateSmooth", 4);
    static var hx_Transform_translateUp = NativeInterface.loadMember(Transform, "translateUp", 2);
    static var hx_Transform_translateX = NativeInterface.loadMember(Transform, "translateX", 2);
    static var hx_Transform_translateY = NativeInterface.loadMember(Transform, "translateY", 2);
    static var hx_Transform_translateZ = NativeInterface.loadMember(Transform, "translateZ", 2);
    static var hx_Transform_Listener_Construct = NativeInterface.loadMember(Transform_Listener, "Construct", 1);
}

// END
