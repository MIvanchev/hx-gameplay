#include "HaxeAPI.h"

// DECL: Plane();
value hx_Plane_Construct()
{
    return ObjectToValue(new Plane());
}
DEFINE_PRIM(hx_Plane_Construct, 0);

// DECL: Plane(const Plane& copy);
value hx_Plane_Construct_Plane(value copy)
{
    Plane *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new Plane(*_copy));
}
DEFINE_PRIM(hx_Plane_Construct_Plane, 1);

// DECL: Plane(const Vector3& normal, float distance);
value hx_Plane_Construct_V3_Flt(value normal, value distance)
{
    Vector3 *_normal;
    float _distance = ValueToFloat(distance);
    ValueToObject(normal, _normal);
    return ObjectToValue(new Plane(*_normal, _distance));
}
DEFINE_PRIM(hx_Plane_Construct_V3_Flt, 2);

// DECL: Plane(float normalX, float normalY, float normalZ, float distance);
value hx_Plane_Construct_FltX4(value normalX, value normalY, value normalZ, value distance)
{
    float _normalX = ValueToFloat(normalX);
    float _normalY = ValueToFloat(normalY);
    float _normalZ = ValueToFloat(normalZ);
    float _distance = ValueToFloat(distance);
    return ObjectToValue(new Plane(_normalX, _normalY, _normalZ, _distance));
}
DEFINE_PRIM(hx_Plane_Construct_FltX4, 4);

// DECL: float distance(const Vector3& point) const;
value hx_Plane_distance(value thisObj, value point)
{
    Plane *_thisObj;
    Vector3 *_point;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    return alloc_float(_thisObj->distance(*_point));
}
DEFINE_PRIM(hx_Plane_distance, 2);

// DECL: float getDistance() const;
value hx_Plane_getDistance(value thisObj)
{
    Plane *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getDistance());
}
DEFINE_PRIM(hx_Plane_getDistance, 1);

// DECL: const Vector3& getNormal() const;
value hx_Plane_getNormal(value thisObj)
{
    Plane *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getNormal(), false);
}
DEFINE_PRIM(hx_Plane_getNormal, 1);

// DECL: static void intersection(const Plane& p1, const Plane& p2, const Plane& p3, Vector3* point);
void hx_Plane_static_intersection(value p1, value p2, value p3, value point)
{
    Plane *_p1, *_p2, *_p3;
    Vector3 *_point;
    ValueToObject(p1, _p1);
    ValueToObject(p2, _p2);
    ValueToObject(p3, _p3);
    ValueToObject(point, _point);
    Plane::intersection(*_p1, *_p2, *_p3, _point);
}
DEFINE_PRIM(hx_Plane_static_intersection, 4);

// DECL: float intersects(const BoundingBox& box) const;
value hx_Plane_intersects_BBox(value thisObj, value box)
{
    Plane *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    return alloc_float(_thisObj->intersects(*_box));
}
DEFINE_PRIM(hx_Plane_intersects_BBox, 2);

// DECL: float intersects(const BoundingSphere& sphere) const;
value hx_Plane_intersects_BSphr(value thisObj, value sphere)
{
    Plane *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    return alloc_float(_thisObj->intersects(*_sphere));
}
DEFINE_PRIM(hx_Plane_intersects_BSphr, 2);

// DECL: float intersects(const Frustum& frustum) const;
value hx_Plane_intersects_Frstm(value thisObj, value frustum)
{
    Plane *_thisObj;
    Frustum *_frustum;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(frustum, _frustum);
    return alloc_float(_thisObj->intersects(*_frustum));
}
DEFINE_PRIM(hx_Plane_intersects_Frstm, 2);

// DECL: float intersects(const Plane& plane) const;
value hx_Plane_intersects_Plane(value thisObj, value plane)
{
    Plane *_thisObj, *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    return alloc_float(_thisObj->intersects(*_plane));
}
DEFINE_PRIM(hx_Plane_intersects_Plane, 2);

// DECL: float intersects(const Ray& ray) const;
value hx_Plane_intersects_Ray(value thisObj, value ray)
{
    Plane *_thisObj;
    Ray *_ray;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(ray, _ray);
    return alloc_float(_thisObj->intersects(*_ray));
}
DEFINE_PRIM(hx_Plane_intersects_Ray, 2);

// DECL: bool isParallel(const Plane& plane) const;
value hx_Plane_isParallel(value thisObj, value plane)
{
    Plane *_thisObj, *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    return alloc_bool(_thisObj->isParallel(*_plane));
}
DEFINE_PRIM(hx_Plane_isParallel, 2);

// DECL: void set(const Plane& plane);
void hx_Plane_set_Plane(value thisObj, value plane)
{
    Plane *_thisObj, *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    _thisObj->set(*_plane);
}
DEFINE_PRIM(hx_Plane_set_Plane, 2);

// DECL: void set(const Vector3& normal, float distance);
void hx_Plane_set_V3_Flt(value thisObj, value normal, value distance)
{
    Plane *_thisObj;
    Vector3 *_normal;
    float _distance = ValueToFloat(distance);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(normal, _normal);
    _thisObj->set(*_normal, _distance);
}
DEFINE_PRIM(hx_Plane_set_V3_Flt, 3);

// DECL: void setDistance(float distance);
void hx_Plane_setDistance(value thisObj, value distance)
{
    Plane *_thisObj;
    float _distance = ValueToFloat(distance);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDistance(_distance);
}
DEFINE_PRIM(hx_Plane_setDistance, 2);

// DECL: void setNormal(const Vector3& normal);
void hx_Plane_setNormal_V3(value thisObj, value normal)
{
    Plane *_thisObj;
    Vector3 *_normal;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(normal, _normal);
    _thisObj->setNormal(*_normal);
}
DEFINE_PRIM(hx_Plane_setNormal_V3, 2);

// DECL: void setNormal(float x, float y, float z);
void hx_Plane_setNormal_FltX3(value thisObj, value x, value y, value z)
{
    Plane *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setNormal(_x, _y, _z);
}
DEFINE_PRIM(hx_Plane_setNormal_FltX3, 4);

// DECL: void transform(const Matrix& matrix);
void hx_Plane_transform(value thisObj, value matrix)
{
    Plane *_thisObj;
    Matrix *_matrix;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(matrix, _matrix);
    _thisObj->transform(*_matrix);
}
DEFINE_PRIM(hx_Plane_transform, 2);

// END
//
