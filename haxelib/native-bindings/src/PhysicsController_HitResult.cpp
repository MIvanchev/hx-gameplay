#include "HaxeAPI.h"

value hx_PhysicsController_HitResult_Construct()
{
    return ObjectToValue(new PhysicsController::HitResult());
}
DEFINE_PRIM(hx_PhysicsController_HitResult_Construct, 0);

/*******************************************************************************
 * PROPERTIES                                                                  *
 ******************************************************************************/

value hx_PhysicsController_HitResult_property_object_get(value thisObj)
{
    PhysicsController::HitResult *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->object, false);
}
DEFINE_PRIM(hx_PhysicsController_HitResult_property_object_get, 1);

value hx_PhysicsController_HitResult_property_point_get(value thisObj)
{
    PhysicsController::HitResult *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->point, false);
}
DEFINE_PRIM(hx_PhysicsController_HitResult_property_point_get, 1);

value hx_PhysicsController_HitResult_property_fraction_get(value thisObj)
{
    PhysicsController::HitResult *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->fraction);
}
DEFINE_PRIM(hx_PhysicsController_HitResult_property_fraction_get, 1);

value hx_PhysicsController_HitResult_property_fraction_set(value thisObj, value _value)
{
    PhysicsController::HitResult *_thisObj;
    float _flt = ValueToFloat(_value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->fraction = _flt;
    return _value;
}
DEFINE_PRIM(hx_PhysicsController_HitResult_property_fraction_set, 2);

value hx_PhysicsController_HitResult_property_normal_get(value thisObj)
{
    PhysicsController::HitResult *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->normal, false);
}
DEFINE_PRIM(hx_PhysicsController_HitResult_property_normal_get, 1);

// END
//
