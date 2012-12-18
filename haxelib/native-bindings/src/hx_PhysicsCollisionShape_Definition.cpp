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

// END
//
