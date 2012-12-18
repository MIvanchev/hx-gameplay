#include "HaxeAPI.h"

// DECL: BoundingBox();
value hx_BoundingBox_Construct()
{
    return ObjectToValue(new BoundingBox());
}
DEFINE_PRIM(hx_BoundingBox_Construct, 0);

// DECL: BoundingBox(const BoundingBox& copy);
value hx_BoundingBox_Construct_BBox(value copy)
{
    BoundingBox *_copy;
    ValueToObject(copy, _copy);
    return ObjectToValue(new BoundingBox(*_copy));
}
DEFINE_PRIM(hx_BoundingBox_Construct_BBox, 1);

// DECL: BoundingBox(const Vector3& min, const Vector3& max);
value hx_BoundingBox_Construct_V3X2(value min, value max)
{
    Vector3 *_min, *_max;
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    return ObjectToValue(new BoundingBox(*_min, *_max));
}
DEFINE_PRIM(hx_BoundingBox_Construct_V3X2, 2);

// DECL: BoundingBox(float minX, float minY, float minZ, float maxX, float maxY, float maxZ);
value hx_BoundingBox_Construct_FltX6(value *args, int nargs)
{
    const value& minX = *args++;
    const value& minY = *args++;
    const value& minZ = *args++;
    const value& maxX = *args++;
    const value& maxY = *args++;
    const value& maxZ = *args;

    float _minX = ValueToFloat(minX);
    float _minY = ValueToFloat(minY);
    float _minZ = ValueToFloat(minZ);
    float _maxX = ValueToFloat(maxX);
    float _maxY = ValueToFloat(maxY);
    float _maxZ = ValueToFloat(maxZ);
    return ObjectToValue(new BoundingBox(_minX, _minY, _minZ, _maxX, _maxY, _maxZ));
}
DEFINE_PRIM_MULT(hx_BoundingBox_Construct_FltX6);

// DECL: static const BoundingBox& empty();
value hx_BoundingBox_static_empty()
{
    return ObjectToValue(new BoundingBox(BoundingBox::empty()));
}
DEFINE_PRIM(hx_BoundingBox_static_empty, 0);

// DECL: Vector3 getCenter() const;
value hx_BoundingBox_getCenter(value thisObj)
{
    BoundingBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(new Vector3(_thisObj->getCenter()));
}
DEFINE_PRIM(hx_BoundingBox_getCenter, 1);

// DECL: void getCenter(Vector3* dst) const;
void hx_BoundingBox_getCenter_V3(value thisObj, value dst)
{
    BoundingBox *_thisObj;
    Vector3 *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getCenter(_dst);
}
DEFINE_PRIM(hx_BoundingBox_getCenter_V3, 2);

// DECL: void getCorners(Vector3* dst) const;
void hx_BoundingBox_getCorners(value thisObj, value dst)
{
    BoundingBox *_thisObj;
    ValueToObject(thisObj, _thisObj);

    Vector3 points[8];
    _thisObj->getCorners(points);

    value _dst = alloc_array(8);
    for (int index = 0; index < 8; index++)
        val_array_set_i(_dst, index, ObjectToValue(new Vector3(points[index])));

    SetOutParameterValue(dst, _dst);
}
DEFINE_PRIM(hx_BoundingBox_getCorners, 2);

// DECL: bool intersects(const BoundingBox& box) const;
value hx_BoundingBox_intersects_BBox(value thisObj, value box)
{
    BoundingBox *_thisObj, *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    return alloc_bool(_thisObj->intersects(*_box));
}
DEFINE_PRIM(hx_BoundingBox_intersects_BBox, 2);

// DECL: bool intersects(const BoundingSphere& sphere) const;
value hx_BoundingBox_intersects_BSphr(value thisObj, value sphere)
{
    BoundingBox *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    return alloc_bool(_thisObj->intersects(*_sphere));
}
DEFINE_PRIM(hx_BoundingBox_intersects_BSphr, 2);

// DECL: bool intersects(const Frustum& frustum) const;
value hx_BoundingBox_intersects_Frstm(value thisObj, value frustum)
{
    BoundingBox *_thisObj;
    Frustum *_frustum;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(frustum, _frustum);
    return alloc_bool(_thisObj->intersects(*_frustum));
}
DEFINE_PRIM(hx_BoundingBox_intersects_Frstm, 2);

// DECL: float intersects(const Plane& plane) const;
value hx_BoundingBox_intersects_Plane(value thisObj, value plane)
{
    BoundingBox *_thisObj;
    Plane *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    return alloc_float(_thisObj->intersects(*_plane));
}
DEFINE_PRIM(hx_BoundingBox_intersects_Plane, 2);

// DECL: float intersects(const Ray& ray) const;
value hx_BoundingBox_intersects_Ray(value thisObj, value ray)
{
    BoundingBox *_thisObj;
    Ray *_ray;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(ray, _ray);
    return alloc_float(_thisObj->intersects(*_ray));
}
DEFINE_PRIM(hx_BoundingBox_intersects_Ray, 2);

// DECL: bool isEmpty() const;
value hx_BoundingBox_isEmpty(value thisObj)
{
    BoundingBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEmpty());
}
DEFINE_PRIM(hx_BoundingBox_isEmpty, 1);

// DECL: void merge(const BoundingBox& box);
void hx_BoundingBox_merge_BBox(value thisObj, value box)
{
    BoundingBox *_thisObj, *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    _thisObj->merge(*_box);
}
DEFINE_PRIM(hx_BoundingBox_merge_BBox, 2);

// DECL: void merge(const BoundingSphere& sphere);
void hx_BoundingBox_merge_BSphr(value thisObj, value sphere)
{
    BoundingBox *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    _thisObj->merge(*_sphere);
}
DEFINE_PRIM(hx_BoundingBox_merge_BSphr, 2);

// DECL: void set(const BoundingBox& box);
void hx_BoundingBox_set_BBox(value thisObj, value box)
{
    BoundingBox *_thisObj, *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    _thisObj->set(*_box);
}
DEFINE_PRIM(hx_BoundingBox_set_BBox, 2);

// DECL: void set(const BoundingSphere& sphere);
void hx_BoundingBox_set_BSphr(value thisObj, value sphere)
{
    BoundingBox *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    _thisObj->set(*_sphere);
}
DEFINE_PRIM(hx_BoundingBox_set_BSphr, 2);

// DECL: void set(const Vector3& min, const Vector3& max);
void hx_BoundingBox_set_V3X2(value thisObj, value min, value max)
{
    BoundingBox *_thisObj;
    Vector3 *_min, *_max;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(min, _min);
    ValueToObject(max, _max);
    _thisObj->set(*_min, *_max);
}
DEFINE_PRIM(hx_BoundingBox_set_V3X2, 3);

// DECL: void set(float minX, float minY, float minZ, float maxX, float maxY, float maxZ);
void hx_BoundingBox_set_FltX6(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& minX = *args++;
    const value& minY = *args++;
    const value& minZ = *args++;
    const value& maxX = *args++;
    const value& maxY = *args++;
    const value& maxZ = *args;

    BoundingBox *_thisObj;
    float _minX = ValueToFloat(minX);
    float _minY = ValueToFloat(minY);
    float _minZ = ValueToFloat(minZ);
    float _maxX = ValueToFloat(maxX);
    float _maxY = ValueToFloat(maxY);
    float _maxZ = ValueToFloat(maxZ);
    ValueToObject(thisObj, _thisObj);
    _thisObj->set(_minX, _minY, _minZ, _maxX, _maxY, _maxZ);
}
DEFINE_PRIM_MULT(hx_BoundingBox_set_FltX6);

// DECL: void transform(const Matrix& matrix);
void hx_BoundingBox_transform(value thisObj, value matrix)
{
    BoundingBox *_thisObj;
    Matrix *_matrix;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(matrix, _matrix);
    _thisObj->transform(*_matrix);
}
DEFINE_PRIM(hx_BoundingBox_transform, 2);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_BoundingBox_property_min_get(value thisObj)
{
    BoundingBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(new Vector3(_thisObj->min));
}
DEFINE_PRIM(hx_BoundingBox_property_min_get, 1);

value hx_BoundingBox_property_min_set(value thisObj, value _value)
{
    BoundingBox *_thisObj;
    Vector3 *_val;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(_value, _val);
    _thisObj->min.set(*_val);
    return _value;
}
DEFINE_PRIM(hx_BoundingBox_property_min_set, 2);

value hx_BoundingBox_property_max_get(value thisObj)
{
    BoundingBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(new Vector3(_thisObj->max));
}
DEFINE_PRIM(hx_BoundingBox_property_max_get, 1);

value hx_BoundingBox_property_max_set(value thisObj, value _value)
{
    BoundingBox *_thisObj;
    Vector3 *_val;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(_value, _val);
    _thisObj->max.set(*_val);
    return _value;
}
DEFINE_PRIM(hx_BoundingBox_property_max_set, 2);

// END
//
