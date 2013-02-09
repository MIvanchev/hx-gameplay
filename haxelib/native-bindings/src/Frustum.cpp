#include "HaxeAPI.h"

// DECL: Frustum();
value hx_Frustum_Construct()
{
    return ObjectToValue(new Frustum());
}
DEFINE_PRIM(hx_Frustum_Construct, 0);

// DECL: Frustum(const Frustum& frustum);
value hx_Frustum_Construct_Frstm(value frustum)
{
    Frustum *_frustum;
    ValueToObject(frustum, _frustum);
    return ObjectToValue(new Frustum(*_frustum));
}
DEFINE_PRIM(hx_Frustum_Construct_Frstm, 1);

// DECL: Frustum(const Matrix& matrix);
value hx_Frustum_Construct_Mat(value matrix)
{
    Matrix *_matrix;
    ValueToObject(matrix, _matrix);
    return ObjectToValue(new Frustum(*_matrix));
}
DEFINE_PRIM(hx_Frustum_Construct_Mat, 1);

// DECL: const Plane& getBottom() const;
value hx_Frustum_getBottom(value thisObj)
{
    Frustum *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBottom(), false);
}
DEFINE_PRIM(hx_Frustum_getBottom, 1);

// DECL: void getCorners(Vector3* corners) const;
void hx_Frustum_getCorners(value thisObj, value corners)
{
    Frustum *_thisObj;
    Vector3 *_corners;
    ValueToObject(thisObj, _thisObj);
    ValueToArray(corners, _corners);
    _thisObj->getCorners(_corners);
}
DEFINE_PRIM(hx_Frustum_getCorners, 2);

// DECL: const Plane& getFar() const;
value hx_Frustum_getFar(value thisObj)
{
    Frustum *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getFar(), false);
}
DEFINE_PRIM(hx_Frustum_getFar, 1);

// DECL: const Plane& getLeft() const;
value hx_Frustum_getLeft(value thisObj)
{
    Frustum *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getLeft(), false);
}
DEFINE_PRIM(hx_Frustum_getLeft, 1);

// DECL: void getMatrix(Matrix* dst) const;
void hx_Frustum_getMatrix(value thisObj, value dst)
{
    Frustum *_thisObj;
    Matrix *_dst;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    _thisObj->getMatrix(_dst);
}
DEFINE_PRIM(hx_Frustum_getMatrix, 2);

// DECL: const Plane& getNear() const;
value hx_Frustum_getNear(value thisObj)
{
    Frustum *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getNear(), false);
}
DEFINE_PRIM(hx_Frustum_getNear, 1);

// DECL: const Plane& getRight() const;
value hx_Frustum_getRight(value thisObj)
{
    Frustum *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getRight(), false);
}
DEFINE_PRIM(hx_Frustum_getRight, 1);

// DECL: const Plane& getTop() const;
value hx_Frustum_getTop(value thisObj)
{
    Frustum *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getTop(), false);
}
DEFINE_PRIM(hx_Frustum_getTop, 1);

// DECL: bool intersects(const BoundingBox& box) const;
value hx_Frustum_intersects_BBox(value thisObj, value box)
{
    Frustum *_thisObj;
    BoundingBox *_box;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(box, _box);
    return alloc_bool(_thisObj->intersects(*_box));
}
DEFINE_PRIM(hx_Frustum_intersects_BBox, 2);

// DECL: bool intersects(const BoundingSphere& sphere) const;
value hx_Frustum_intersects_BSphr(value thisObj, value sphere)
{
    Frustum *_thisObj;
    BoundingSphere *_sphere;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(sphere, _sphere);
    return alloc_bool(_thisObj->intersects(*_sphere));
}
DEFINE_PRIM(hx_Frustum_intersects_BSphr, 2);

// DECL: bool intersects(const Vector3& point) const;
value hx_Frustum_intersects_V3(value thisObj, value point)
{
    Frustum *_thisObj;
    Vector3 *_point;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(point, _point);
    return alloc_bool(_thisObj->intersects(*_point));
}
DEFINE_PRIM(hx_Frustum_intersects_V3, 2);

// DECL: bool intersects(float x, float y, float z) const;
value hx_Frustum_intersects_FltX3(value thisObj, value x, value y, value z)
{
    Frustum *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->intersects(_x, _y, _z));
}
DEFINE_PRIM(hx_Frustum_intersects_FltX3, 4);

// DECL: float intersects(const Plane& plane) const;
value hx_Frustum_intersects_Plane(value thisObj, value plane)
{
    Frustum *_thisObj;
    Plane *_plane;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(plane, _plane);
    return alloc_float(_thisObj->intersects(*_plane));
}
DEFINE_PRIM(hx_Frustum_intersects_Plane, 2);

// DECL: float intersects(const Ray& ray) const;
value hx_Frustum_intersects_Ray(value thisObj, value ray)
{
    Frustum *_thisObj;
    Ray *_ray;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(ray, _ray);
    return alloc_float(_thisObj->intersects(*_ray));
}
DEFINE_PRIM(hx_Frustum_intersects_Ray, 2);

// DECL: void set(const Frustum& frustum);
void hx_Frustum_set_Frstm(value thisObj, value frustum)
{
    Frustum *_thisObj, *_frustum;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(frustum, _frustum);
    _thisObj->set(*_frustum);
}
DEFINE_PRIM(hx_Frustum_set_Frstm, 2);

// DECL: void set(const Matrix& matrix);
void hx_Frustum_set_Mat(value thisObj, value matrix)
{
    Frustum *_thisObj;
    Matrix *_matrix;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(matrix, _matrix);
    _thisObj->set(*_matrix);
}
DEFINE_PRIM(hx_Frustum_set_Mat, 2);

// END
//
