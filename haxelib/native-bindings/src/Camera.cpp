#include "HaxeAPI.h"

// DECL: static Camera* create(Properties* properties);
value hx_Camera_static_create(value properties)
{
    Properties *_properties;
    ValueToObject(properties, _properties);
    return ReferenceToValue(Camera::create(_properties));
}
DEFINE_PRIM(hx_Camera_static_create, 1);

// DECL: static Camera* createOrthographic(float zoomX, float zoomY, float aspectRatio, float nearPlane, float farPlane);
value hx_Camera_static_createOrthographic(value zoomX, value zoomY, value aspectRatio, value nearPlane, value farPlane)
{
    float _zoomX = ValueToFloat(zoomX);
    float _zoomY = ValueToFloat(zoomY);
    float _aspectRatio = ValueToFloat(aspectRatio);
    float _nearPlane = ValueToFloat(nearPlane);
    float _farPlane = ValueToFloat(farPlane);
    return ReferenceToValue(Camera::createOrthographic(_zoomX, _zoomY, _aspectRatio, _nearPlane, _farPlane));
}
DEFINE_PRIM(hx_Camera_static_createOrthographic, 5);

// DECL: static Camera* createPerspective(float fieldOfView, float aspectRatio, float nearPlane, float farPlane);
value hx_Camera_static_createPerspective(value fieldOfView, value aspectRatio, value nearPlane, value farPlane)
{
    float _fieldOfView = ValueToFloat(fieldOfView);
    float _aspectRatio = ValueToFloat(aspectRatio);
    float _nearPlane = ValueToFloat(nearPlane);
    float _farPlane = ValueToFloat(farPlane);
    return ReferenceToValue(Camera::createPerspective(_fieldOfView, _aspectRatio, _nearPlane, _farPlane));
}
DEFINE_PRIM(hx_Camera_static_createPerspective, 4);

// DECL: float getAspectRatio() const;
value hx_Camera_getAspectRatio(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getAspectRatio());
}
DEFINE_PRIM(hx_Camera_getAspectRatio, 1);

// DECL: Camera::Type getCameraType() const;
value hx_Camera_getCameraType(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getCameraType());
}
DEFINE_PRIM(hx_Camera_getCameraType, 1);

// DECL: float getFarPlane() const;
value hx_Camera_getFarPlane(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFarPlane());
}
DEFINE_PRIM(hx_Camera_getFarPlane, 1);

// DECL: float getFieldOfView() const;
value hx_Camera_getFieldOfView(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFieldOfView());
}
DEFINE_PRIM(hx_Camera_getFieldOfView, 1);

// DECL: const Frustum& getFrustum() const;
value hx_Camera_getFrustum(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getFrustum(), false);
}
DEFINE_PRIM(hx_Camera_getFrustum, 1);

// DECL: const Matrix& getInverseViewMatrix() const;
value hx_Camera_getInverseViewMatrix(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseViewMatrix(), false);
}
DEFINE_PRIM(hx_Camera_getInverseViewMatrix, 1);

// DECL: const Matrix& getInverseViewProjectionMatrix() const;
value hx_Camera_getInverseViewProjectionMatrix(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInverseViewProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Camera_getInverseViewProjectionMatrix, 1);

// DECL: float getNearPlane() const;
value hx_Camera_getNearPlane(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getNearPlane());
}
DEFINE_PRIM(hx_Camera_getNearPlane, 1);

// DECL: Node* getNode() const;
value hx_Camera_getNode(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true);
}
DEFINE_PRIM(hx_Camera_getNode, 1);

// DECL: const Matrix& getProjectionMatrix() const;
value hx_Camera_getProjectionMatrix(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Camera_getProjectionMatrix, 1);

// DECL: const Matrix& getViewMatrix() const;
value hx_Camera_getViewMatrix(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getViewMatrix(), false);
}
DEFINE_PRIM(hx_Camera_getViewMatrix, 1);

// DECL: const Matrix& getViewProjectionMatrix() const;
value hx_Camera_getViewProjectionMatrix(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getViewProjectionMatrix(), false);
}
DEFINE_PRIM(hx_Camera_getViewProjectionMatrix, 1);

// DECL: float getZoomX() const;
value hx_Camera_getZoomX(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getZoomX());
}
DEFINE_PRIM(hx_Camera_getZoomX, 1);

// DECL: float getZoomY() const;
value hx_Camera_getZoomY(value thisObj)
{
    Camera *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getZoomY());
}
DEFINE_PRIM(hx_Camera_getZoomY, 1);

// DECL: void pickRay(const Rectangle& viewport, float x, float y, Ray* dst) const;
void hx_Camera_pickRay(value thisObj, value viewport, value x, value y, value dst)
{
    Camera *_thisObj;
    Rectangle *_viewport;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    Ray *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(viewport, _viewport);
    ValueToObject(dst, _dst);
    _thisObj->pickRay(*_viewport, _x, _y, _dst);
}
DEFINE_PRIM(hx_Camera_pickRay, 5);

// DECL: void project(const Rectangle& viewport, const Vector3& position, float* x, float* y, float* depth = NULL) const;
void hx_Camera_project(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& viewport = *args++;
    const value& position = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& depth = *args;

    Camera *_thisObj;
    Rectangle *_viewport;
    Vector3 *_position;
    float _x;
    float _y;
    float _depth;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(viewport, _viewport);
    ValueToObject(position, _position);
    _thisObj->project(*_viewport, *_position, &_x, &_y, &_depth);

    SetOutParameterValue(x, alloc_float(_x));
    SetOutParameterValue(y, alloc_float(_y));
    SetOutParameterValue(depth, alloc_float(_depth));

}
DEFINE_PRIM_MULT(hx_Camera_project);

// DECL: void setAspectRatio(float aspectRatio);
void hx_Camera_setAspectRatio(value thisObj, value aspectRatio)
{
    Camera *_thisObj;
    float _aspectRatio = ValueToFloat(aspectRatio);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAspectRatio(_aspectRatio);
}
DEFINE_PRIM(hx_Camera_setAspectRatio, 2);

// DECL: void setFarPlane(float farPlane);
void hx_Camera_setFarPlane(value thisObj, value farPlane)
{
    Camera *_thisObj;
    float _farPlane = ValueToFloat(farPlane);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFarPlane(_farPlane);
}
DEFINE_PRIM(hx_Camera_setFarPlane, 2);

// DECL: void setFieldOfView(float fieldOfView);
void hx_Camera_setFieldOfView(value thisObj, value fieldOfView)
{
    Camera *_thisObj;
    float _fieldOfView = ValueToFloat(fieldOfView);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFieldOfView(_fieldOfView);
}
DEFINE_PRIM(hx_Camera_setFieldOfView, 2);

// DECL: void setNearPlane(float nearPlane);
void hx_Camera_setNearPlane(value thisObj, value nearPlane)
{
    Camera *_thisObj;
    float _nearPlane = ValueToFloat(nearPlane);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setNearPlane(_nearPlane);
}
DEFINE_PRIM(hx_Camera_setNearPlane, 2);

// DECL: void setZoomX(float zoomX);
void hx_Camera_setZoomX(value thisObj, value zoomX)
{
    Camera *_thisObj;
    float _zoomX = ValueToFloat(zoomX);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setZoomX(_zoomX);
}
DEFINE_PRIM(hx_Camera_setZoomX, 2);

// DECL: void setZoomY(float zoomY);
void hx_Camera_setZoomY(value thisObj, value zoomY)
{
    Camera *_thisObj;
    float _zoomY = ValueToFloat(zoomY);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setZoomY(_zoomY);
}
DEFINE_PRIM(hx_Camera_setZoomY, 2);

// DECL: void unproject(const Rectangle& viewport, float x, float y, float depth, Vector3* dst) const;
void hx_Camera_unproject(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& viewport = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& depth = *args++;
    const value& dst = *args;

    Camera *_thisObj;
    Rectangle *_viewport;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _depth = ValueToFloat(depth);
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(viewport, _viewport);
    ValueToObject(dst, _dst);
    _thisObj->unproject(*_viewport, _x, _y, _depth, _dst);
}
DEFINE_PRIM_MULT(hx_Camera_unproject);

// END
//
