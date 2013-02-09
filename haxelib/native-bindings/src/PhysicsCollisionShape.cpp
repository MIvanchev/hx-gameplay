#include "HaxeAPI.h"

// DECL: static PhysicsCollisionShape::Definition box();
value hx_PhysicsCollisionShape_static_box()
{
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::box()));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_box, 0);

// DECL: static PhysicsCollisionShape::Definition box(const Vector3& extents, const Vector3& center = Vector3::zero(), bool absolute = false);
value hx_PhysicsCollisionShape_static_box_V3X2_Bool(value extents, value center, value absolute)
{
    Vector3 *_extents, *_center;
    bool _absolute = val_get_bool(absolute);
    ValueToObject(extents, _extents);
    ValueToObject(center, _center);
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::box(*_extents, *_center, _absolute)));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_box_V3X2_Bool, 3);

// DECL: static PhysicsCollisionShape::Definition capsule();
value hx_PhysicsCollisionShape_static_capsule()
{
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::capsule()));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_capsule, 0);

// DECL: static PhysicsCollisionShape::Definition capsule(float radius, float height, const Vector3& center = Vector3::zero(), bool absolute = false);
value hx_PhysicsCollisionShape_static_capsule_FltX2_V3_Bool(value radius, value height, value center, value absolute)
{
    float _radius = ValueToFloat(radius);
    float _height = ValueToFloat(height);
    Vector3 *_center;
    bool _absolute = val_get_bool(absolute);
    ValueToObject(center, _center);
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::capsule(_radius, _height, *_center, _absolute)));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_capsule_FltX2_V3_Bool, 4);

// DECL: PhysicsCollisionShape::Type getType() const;
value hx_PhysicsCollisionShape_getType(value thisObj)
{
    PhysicsCollisionShape *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_PhysicsCollisionShape_getType, 1);

// DECL: static PhysicsCollisionShape::Definition heightfield();
value hx_PhysicsCollisionShape_static_heightfield()
{
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::heightfield()));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_heightfield, 0);

// DECL: static PhysicsCollisionShape::Definition heightfield(HeightField* heightfield);
value hx_PhysicsCollisionShape_static_heightfield_HghtFld(value heightfield)
{
    HeightField *_heightfield;
    ValueToObject(heightfield, _heightfield);
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::heightfield(_heightfield)));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_heightfield_HghtFld, 1);

// DECL: static PhysicsCollisionShape::Definition mesh(Mesh* mesh);
value hx_PhysicsCollisionShape_static_mesh(value mesh)
{
    Mesh *_mesh;
    ValueToObject(mesh, _mesh);
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::mesh(_mesh)));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_mesh, 1);

// DECL: static PhysicsCollisionShape::Definition sphere();
value hx_PhysicsCollisionShape_static_sphere()
{
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::sphere()));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_sphere, 0);

// DECL: static PhysicsCollisionShape::Definition sphere(float radius, const Vector3& center = Vector3::zero(), bool absolute = false);
value hx_PhysicsCollisionShape_static_sphere_Flt_V3_Bool(value radius, value center, value absolute)
{
    float _radius = ValueToFloat(radius);
    Vector3 *_center;
    bool _absolute = val_get_bool(absolute);
    ValueToObject(center, _center);
    return ObjectToValue(new PhysicsCollisionShape::Definition(PhysicsCollisionShape::sphere(_radius, *_center, _absolute)));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_static_sphere_Flt_V3_Bool, 3);

// END
//
