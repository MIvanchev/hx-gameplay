package org.gameplay3d;

import org.gameplay3d.immutable.IFrustum;
import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.impl.Transform_ListenerImpl;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Camera : public Ref, public Transform::Listener
class Camera extends Transform_ListenerImpl, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _inverseViewMatrix:Matrix;
    var _inverseViewProjectionMatrix:Matrix;
    var _projectionMatrix:Matrix;
    var _viewMatrix:Matrix;
    var _viewProjectionMatrix:Matrix;
    var _frustum:Frustum;

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            _inverseViewMatrix = Matrix.make();
            _inverseViewProjectionMatrix = Matrix.make();
            _projectionMatrix = Matrix.make();
            _viewMatrix = Matrix.make();
            _viewProjectionMatrix = Matrix.make();
            _frustum = Frustum.make();
        }
        return cast(this);
    }

    // DECL: static Camera* createOrthographic(float zoomX, float zoomY, float aspectRatio, float nearPlane, float farPlane);
    public static function createOrthographic(zoomX:Float, zoomY:Float, aspectRatio:Float, nearPlane:Float, farPlane:Float):Camera
    {
        return Camera.wrap(hx_Camera_static_createOrthographic(zoomX, zoomY, aspectRatio, nearPlane, farPlane));
    }

    // DECL: static Camera* createPerspective(float fieldOfView, float aspectRatio, float nearPlane, float farPlane);
    public static function createPerspective(fieldOfView:Float, aspectRatio:Float, nearPlane:Float, farPlane:Float):Camera
    {
        return Camera.wrap(hx_Camera_static_createPerspective(fieldOfView, aspectRatio, nearPlane, farPlane));
    }

    // DECL: float getAspectRatio() const;
    public function getAspectRatio():Float
    {
        return hx_Camera_getAspectRatio(nativeObject);
    }

    // DECL: Camera::Type getCameraType() const;
    public function getCameraType():Int
    {
        return hx_Camera_getCameraType(nativeObject);
    }

    // DECL: float getFarPlane() const;
    public function getFarPlane():Float
    {
        return hx_Camera_getFarPlane(nativeObject);
    }

    // DECL: float getFieldOfView() const;
    public function getFieldOfView():Float
    {
        return hx_Camera_getFieldOfView(nativeObject);
    }

    // DECL: const Frustum& getFrustum() const;
    public function getFrustum():IFrustum
    {
        return _frustum.impersonate(hx_Camera_getFrustum(nativeObject));
    }

    // DECL: const Matrix& getInverseViewMatrix() const;
    public function getInverseViewMatrix():IMatrix
    {
        return _inverseViewMatrix.impersonate(hx_Camera_getInverseViewMatrix(nativeObject));
    }

    // DECL: const Matrix& getInverseViewProjectionMatrix() const;
    public function getInverseViewProjectionMatrix():IMatrix
    {
        return _inverseViewProjectionMatrix.impersonate(hx_Camera_getInverseViewProjectionMatrix(nativeObject));
    }

    // DECL: float getNearPlane() const;
    public function getNearPlane():Float
    {
        return hx_Camera_getNearPlane(nativeObject);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_Camera_getNode(nativeObject));
    }

    // DECL: const Matrix& getProjectionMatrix() const;
    public function getProjectionMatrix():IMatrix
    {
        return _projectionMatrix.impersonate(hx_Camera_getProjectionMatrix(nativeObject));
    }

    // DECL: const Matrix& getViewMatrix() const;
    public function getViewMatrix():IMatrix
    {
        return _viewMatrix.impersonate(hx_Camera_getViewMatrix(nativeObject));
    }

    // DECL: const Matrix& getViewProjectionMatrix() const;
    public function getViewProjectionMatrix():IMatrix
    {
        return _viewProjectionMatrix.impersonate(hx_Camera_getViewProjectionMatrix(nativeObject));
    }

    // DECL: float getZoomX() const;
    public function getZoomX():Float
    {
        return hx_Camera_getZoomX(nativeObject);
    }

    // DECL: float getZoomY() const;
    public function getZoomY():Float
    {
        return hx_Camera_getZoomY(nativeObject);
    }

    // DECL: void pickRay(const Rectangle& viewport, float x, float y, Ray* dst) const;
    public function pickRay(viewport:IRectangle, x:Float, y:Float, dst:Ray):Void
    {
        hx_Camera_pickRay(nativeObject, viewport.native(), x, y, dst.native());
    }

    // DECL: void project(const Rectangle& viewport, const Vector3& position, float* x, float* y, float* depth = NULL) const;
    public function project(viewport:IRectangle, position:IVector3, x:OutParameter<Float>, y:OutParameter<Float>, depth:OutParameter<Float> = null):Void
    {
        var _x = new NativeOutParameter();
        var _y = new NativeOutParameter();
        var _depth =
            if (depth == null)
                null;
            else
                new NativeOutParameter();
        hx_Camera_project(nativeObject, viewport.native(), position.native(), _x.native(), _y.native(), _depth.native());
        x.value = _x.value;
        y.value = _y.value;
        if (depth != null)
            depth.value = _depth.value;
    }

    // DECL: void setAspectRatio(float aspectRatio);
    public function setAspectRatio(aspectRatio:Float):Void
    {
        hx_Camera_setAspectRatio(nativeObject, aspectRatio);
    }

    // DECL: void setFarPlane(float farPlane);
    public function setFarPlane(farPlane:Float):Void
    {
        hx_Camera_setFarPlane(nativeObject, farPlane);
    }

    // DECL: void setFieldOfView(float fieldOfView);
    public function setFieldOfView(fieldOfView:Float):Void
    {
        hx_Camera_setFieldOfView(nativeObject, fieldOfView);
    }

    // DECL: void setNearPlane(float nearPlane);
    public function setNearPlane(nearPlane:Float):Void
    {
        hx_Camera_setNearPlane(nativeObject, nearPlane);
    }

    // DECL: void setZoomX(float zoomX);
    public function setZoomX(zoomX:Float):Void
    {
        hx_Camera_setZoomX(nativeObject, zoomX);
    }

    // DECL: void setZoomY(float zoomY);
    public function setZoomY(zoomY:Float):Void
    {
        hx_Camera_setZoomY(nativeObject, zoomY);
    }

    // DECL: void unproject(const Rectangle& viewport, float x, float y, float depth, Vector3* dst) const;
    public function unproject(viewport:IRectangle, x:Float, y:Float, depth:Float, dst:Vector3):Void
    {
        hx_Camera_unproject(nativeObject, viewport.native(), x, y, depth, dst.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Camera_static_createOrthographic:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_static_createOrthographic", 5);
    static var hx_Camera_static_createPerspective:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_static_createPerspective", 4);
    static var hx_Camera_getAspectRatio:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getAspectRatio", 1);
    static var hx_Camera_getCameraType:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getCameraType", 1);
    static var hx_Camera_getFarPlane:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getFarPlane", 1);
    static var hx_Camera_getFieldOfView:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getFieldOfView", 1);
    static var hx_Camera_getFrustum:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getFrustum", 1);
    static var hx_Camera_getInverseViewMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getInverseViewMatrix", 1);
    static var hx_Camera_getInverseViewProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getInverseViewProjectionMatrix", 1);
    static var hx_Camera_getNearPlane:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getNearPlane", 1);
    static var hx_Camera_getNode:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getNode", 1);
    static var hx_Camera_getProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getProjectionMatrix", 1);
    static var hx_Camera_getViewMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getViewMatrix", 1);
    static var hx_Camera_getViewProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getViewProjectionMatrix", 1);
    static var hx_Camera_getZoomX:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getZoomX", 1);
    static var hx_Camera_getZoomY:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_getZoomY", 1);
    static var hx_Camera_pickRay:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_pickRay", 5);
    static var hx_Camera_project:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_project", -1);
    static var hx_Camera_setAspectRatio:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_setAspectRatio", 2);
    static var hx_Camera_setFarPlane:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_setFarPlane", 2);
    static var hx_Camera_setFieldOfView:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_setFieldOfView", 2);
    static var hx_Camera_setNearPlane:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_setNearPlane", 2);
    static var hx_Camera_setZoomX:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_setZoomX", 2);
    static var hx_Camera_setZoomY:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_setZoomY", 2);
    static var hx_Camera_unproject:Dynamic = cpp.Lib.load("gameplay", "hx_Camera_unproject", -1);
}

// END
