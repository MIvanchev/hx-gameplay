#include "HaxeAPI.h"

// DECL: void setLimits(float minAngle, float maxAngle, float bounciness = 1.0f);
void hx_PhysicsHingeConstraint_setLimits(value thisObj, value minAngle, value maxAngle, value bounciness)
{
    PhysicsHingeConstraint *_thisObj;
    float _minAngle = ValueToFloat(minAngle);
    float _maxAngle = ValueToFloat(maxAngle);
    float _bounciness = ValueToFloat(bounciness);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setLimits(_minAngle, _maxAngle, _bounciness);
}
DEFINE_PRIM(hx_PhysicsHingeConstraint_setLimits, 4);

// END
//
