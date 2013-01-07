#include "HaxeAPI.h"

// DECL: Ray();
value hx_Ray_Construct()
{
    return ObjectToValue(new Ray());
}
DEFINE_PRIM(hx_Ray_Construct, 0);

// DECL: Ray(const Ray& copy);
value hx_Ray_Construct_Ray(value copy)
{
    Ray *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Ray(*_copy));
}
DEFINE_PRIM(hx_Ray_Construct_Ray, 1);

// DECL: Ray(const Vector3& origin, const Vector3& direction);
value hx_Ray_Construct_V3X2(value origin, value direction)
{
    Vector3 *_origin, *_direction;
    ValueToObject(origin, _origin);
    ValueToObject(direction, _direction);
    return ObjectToValue(new Ray(*_origin, *_direction));
}
DEFINE_PRIM(hx_Ray_Construct_V3X2, 2);

// DECL: Ray(float originX, float originY, float originZ, float dirX, float dirY, float dirZ);
value hx_Ray_Construct_FltX6(value *args, int nargs)
{
    const value& originX = *args++;
    const value& originY = *args++;
    const value& originZ = *args++;
    const value& dirX = *args++;
    const value& dirY = *args++;
    const value& dirZ = *args;

    float _originX = ValueToFloat(originX);
    float _originY = ValueToFloat(originY);
    float _originZ = ValueToFloat(originZ);
    float _dirX = ValueToFloat(dirX);
    float _dirY = ValueToFloat(dirY);
    float _dirZ = ValueToFloat(dirZ);
    return ObjectToValue(new Ray(_originX, _originY, _originZ, _dirX, _dirY, _dirZ));
}
DEFINE_PRIM_MULT(hx_Ray_Construct_FltX6);

// DECL: const Vector3& getDirection() const;
value hx_Ray_getDirection(value thisObj)
{
    Ray *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getDirection(), false);
}
DEFINE_PRIM(hx_Ray_getDirection, 1);

// DECL: const Vector3& getOrigin() const;
value hx_Ray_getOrigin(value thisObj)
{
    Ray *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getOrigin(), false);
}
DEFINE_PRIM(hx_Ray_getOrigin, 1);

// DECL: float intersects(const BoundingBox& box) const;
value hx_Ray_intersects_BBox(value thisObj, value box)
{
    Ray *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    return alloc_float(_thisObj->intersects(*_box));
}
DEFINE_PRIM(hx_Ray_intersects_BBox, 2);

// DECL: float intersects(const BoundingSphere& sphere) const;
value hx_Ray_intersects_BSphr(value thisObj, value sphere)
{
    Ray *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    return alloc_float(_thisObj->intersects(*_sphere));
}
DEFINE_PRIM(hx_Ray_intersects_BSphr, 2);

// DECL: float intersects(const Frustum& frustum) const;
value hx_Ray_intersects_Frstm(value thisObj, value frustum)
{
    Ray *_thisObj;
    Frustum *_frustum;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(frustum, _frustum);
    return alloc_float(_thisObj->intersects(*_frustum));
}
DEFINE_PRIM(hx_Ray_intersects_Frstm, 2);

// DECL: float intersects(const Plane& plane) const;
value hx_Ray_intersects_Plane(value thisObj, value plane)
{
    Ray *_thisObj;
    Plane *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    return alloc_float(_thisObj->intersects(*_plane));
}
DEFINE_PRIM(hx_Ray_intersects_Plane, 2);

// DECL: void set(const Ray& ray);
void hx_Ray_set_Ray(value thisObj, value ray)
{
    Ray *_thisObj, *_ray;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(ray, _ray);
    _thisObj->set(*_ray);
}
DEFINE_PRIM(hx_Ray_set_Ray, 2);

// DECL: void set(const Vector3& origin, const Vector3& direction);
void hx_Ray_set_V3X2(value thisObj, value origin, value direction)
{
    Ray *_thisObj;
    Vector3 *_origin, *_direction;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(origin, _origin);
    ValueToObject(direction, _direction);
    _thisObj->set(*_origin, *_direction);
}
DEFINE_PRIM(hx_Ray_set_V3X2, 3);

// DECL: void setDirection(const Vector3& direction);
void hx_Ray_setDirection_V3(value thisObj, value direction)
{
    Ray *_thisObj;
    Vector3 *_direction;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(direction, _direction);
    _thisObj->setDirection(*_direction);
}
DEFINE_PRIM(hx_Ray_setDirection_V3, 2);

// DECL: void setDirection(float x, float y, float z);
void hx_Ray_setDirection_FltX3(value thisObj, value x, value y, value z)
{
    Ray *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDirection(_x, _y, _z);
}
DEFINE_PRIM(hx_Ray_setDirection_FltX3, 4);

// DECL: void setOrigin(const Vector3& origin);
void hx_Ray_setOrigin_V3(value thisObj, value origin)
{
    Ray *_thisObj;
    Vector3 *_origin;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(origin, _origin);
    _thisObj->setOrigin(*_origin);
}
DEFINE_PRIM(hx_Ray_setOrigin_V3, 2);

// DECL: void setOrigin(float x, float y, float z);
void hx_Ray_setOrigin_FltX3(value thisObj, value x, value y, value z)
{
    Ray *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setOrigin(_x, _y, _z);
}
DEFINE_PRIM(hx_Ray_setOrigin_FltX3, 4);

// DECL: void transform(const Matrix& matrix);
void hx_Ray_transform(value thisObj, value matrix)
{
    Ray *_thisObj;
    Matrix *_matrix;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(matrix, _matrix);
    _thisObj->transform(*_matrix);
}
DEFINE_PRIM(hx_Ray_transform, 2);

// END
//
