#include "HaxeAPI.h"

// DECL: BoundingSphere();
value hx_BoundingSphere_Construct()
{
    return ObjectToValue(new BoundingSphere());
}
DEFINE_PRIM(hx_BoundingSphere_Construct, 0);

// DECL: BoundingSphere(const BoundingSphere& copy);
value hx_BoundingSphere_Construct_BSphr(value copy)
{
    BoundingSphere *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new BoundingSphere(*_copy));
}
DEFINE_PRIM(hx_BoundingSphere_Construct_BSphr, 1);

// DECL: BoundingSphere(const Vector3& center, float radius);
value hx_BoundingSphere_Construct_V3_Flt(value center, value radius)
{
    Vector3 *_center;
    float _radius = ValueToFloat(radius);
    ValueToObject(center, _center);
    return ObjectToValue(new BoundingSphere(*_center, _radius));
}
DEFINE_PRIM(hx_BoundingSphere_Construct_V3_Flt, 2);

// DECL: static const BoundingSphere& empty();
value hx_BoundingSphere_static_empty()
{
    return ObjectToValue(&BoundingSphere::empty(), false);
}
DEFINE_PRIM(hx_BoundingSphere_static_empty, 0);

// DECL: bool intersects(const BoundingBox& box) const;
value hx_BoundingSphere_intersects_BBox(value thisObj, value box)
{
    BoundingSphere *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    return alloc_bool(_thisObj->intersects(*_box));
}
DEFINE_PRIM(hx_BoundingSphere_intersects_BBox, 2);

// DECL: bool intersects(const BoundingSphere& sphere) const;
value hx_BoundingSphere_intersects_BSphr(value thisObj, value sphere)
{
    BoundingSphere *_thisObj, *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    return alloc_bool(_thisObj->intersects(*_sphere));
}
DEFINE_PRIM(hx_BoundingSphere_intersects_BSphr, 2);

// DECL: bool intersects(const Frustum& frustum) const;
value hx_BoundingSphere_intersects_Frstm(value thisObj, value frustum)
{
    BoundingSphere *_thisObj;
    Frustum *_frustum;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(frustum, _frustum);
    return alloc_bool(_thisObj->intersects(*_frustum));
}
DEFINE_PRIM(hx_BoundingSphere_intersects_Frstm, 2);

// DECL: float intersects(const Plane& plane) const;
value hx_BoundingSphere_intersects_Plane(value thisObj, value plane)
{
    BoundingSphere *_thisObj;
    Plane *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    return alloc_float(_thisObj->intersects(*_plane));
}
DEFINE_PRIM(hx_BoundingSphere_intersects_Plane, 2);

// DECL: float intersects(const Ray& ray) const;
value hx_BoundingSphere_intersects_Ray(value thisObj, value ray)
{
    BoundingSphere *_thisObj;
    Ray *_ray;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(ray, _ray);
    return alloc_float(_thisObj->intersects(*_ray));
}
DEFINE_PRIM(hx_BoundingSphere_intersects_Ray, 2);

// DECL: bool isEmpty() const;
value hx_BoundingSphere_isEmpty(value thisObj)
{
    BoundingSphere *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEmpty());
}
DEFINE_PRIM(hx_BoundingSphere_isEmpty, 1);

// DECL: void merge(const BoundingBox& box);
void hx_BoundingSphere_merge_BBox(value thisObj, value box)
{
    BoundingSphere *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    _thisObj->merge(*_box);
}
DEFINE_PRIM(hx_BoundingSphere_merge_BBox, 2);

// DECL: void merge(const BoundingSphere& sphere);
void hx_BoundingSphere_merge_BSphr(value thisObj, value sphere)
{
    BoundingSphere *_thisObj, *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    _thisObj->merge(*_sphere);
}
DEFINE_PRIM(hx_BoundingSphere_merge_BSphr, 2);

// DECL: void set(const BoundingBox& box);
void hx_BoundingSphere_set_BBox(value thisObj, value box)
{
    BoundingSphere *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    _thisObj->set(*_box);
}
DEFINE_PRIM(hx_BoundingSphere_set_BBox, 2);

// DECL: void set(const BoundingSphere& sphere);
void hx_BoundingSphere_set_BSphr(value thisObj, value sphere)
{
    BoundingSphere *_thisObj, *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    _thisObj->set(*_sphere);
}
DEFINE_PRIM(hx_BoundingSphere_set_BSphr, 2);

// DECL: void set(const Vector3& center, float radius);
void hx_BoundingSphere_set_V3_Flt(value thisObj, value center, value radius)
{
    BoundingSphere *_thisObj;
    Vector3 *_center;
    float _radius = ValueToFloat(radius);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(center, _center);
    _thisObj->set(*_center, _radius);
}
DEFINE_PRIM(hx_BoundingSphere_set_V3_Flt, 3);

// DECL: void transform(const Matrix& matrix);
void hx_BoundingSphere_transform(value thisObj, value matrix)
{
    BoundingSphere *_thisObj;
    Matrix *_matrix;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(matrix, _matrix);
    _thisObj->transform(*_matrix);
}
DEFINE_PRIM(hx_BoundingSphere_transform, 2);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_BoundingSphere_property_center_get(value thisObj)
{
    BoundingSphere *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->center, false);
}
DEFINE_PRIM(hx_BoundingSphere_property_center_get, 1);

value hx_BoundingSphere_property_radius_get(value thisObj)
{
    BoundingSphere *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->radius);
}
DEFINE_PRIM(hx_BoundingSphere_property_radius_get, 1);

value hx_BoundingSphere_property_radius_set(value thisObj, value _value)
{
    BoundingSphere *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->radius = _flt);
}
DEFINE_PRIM(hx_BoundingSphere_property_radius_set, 2);

// END
//
