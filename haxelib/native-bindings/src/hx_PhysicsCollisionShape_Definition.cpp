#include "HaxeAPI.h"

// DECL: Definition();
value hx_PhysicsCollisionShape_Definition_Construct()
{
    return ObjectToValue(new PhysicsCollisionShape::Definition());
}
DEFINE_PRIM(hx_PhysicsCollisionShape_Definition_Construct, 0);

// DECL: Definition(const Definition& definition);
value hx_PhysicsCollisionShape_Definition_Construct_ColShpDef(value definition)
{
    PhysicsCollisionShape::Definition *_definition;
    ValueToObject(definition, _definition);
    return ObjectToValue(new PhysicsCollisionShape::Definition(*_definition));
}
DEFINE_PRIM(hx_PhysicsCollisionShape_Definition_Construct_ColShpDef, 1);

// DECL: bool isEmpty() const;
value hx_PhysicsCollisionShape_Definition_isEmpty(value thisObj)
{
    PhysicsCollisionShape::Definition *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEmpty());
}
DEFINE_PRIM(hx_PhysicsCollisionShape_Definition_isEmpty, 1);

// END
//
