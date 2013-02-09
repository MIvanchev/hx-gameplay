#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxePhysicsController_HitFilter : public PhysicsController::HitFilter
{
private:

    AutoGCRoot clbkFilter;
    AutoGCRoot clbkHit;

public:

    HaxePhysicsController_HitFilter(
                const value& _clbkFilter,
                const value& _clbkHit
            )
        : clbkFilter(_clbkFilter), clbkHit(_clbkHit)
    {
    }

    bool filter(PhysicsCollisionObject* object)
    {
        const value& result =
            val_call1(
                clbkFilter.get(),
                ObjectToValue(object, false)
            );

        return val_get_bool(result);
    }

    bool hit(const PhysicsController::HitResult& result)
    {
        const value& flag =
            val_call1(
                clbkFilter.get(),
                ObjectToValue(&result, false)
            );

        return val_get_bool(flag);
    }
};

value hx_HaxePhysicsController_HitFilter_Construct(value clbkFilter, value clbkHit)
{
    HaxePhysicsController_HitFilter *instance =
        new HaxePhysicsController_HitFilter(clbkFilter, clbkHit);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_HaxePhysicsController_HitFilter_Construct, 2);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

value hx_PhysicsController_HitFilter_Construct()
{
    return ObjectToValue(new PhysicsController::HitFilter());
}
DEFINE_PRIM(hx_PhysicsController_HitFilter_Construct, 0);

// DECL: HitFilter();
// value hx_PhysicsController_HitFilter_Construct()
// {
    // return ObjectToValue(new PhysicsController::HitFilter());
// }
// DEFINE_PRIM(hx_PhysicsController_HitFilter_Construct, 0);

// DECL: virtual bool filter(PhysicsCollisionObject* object);
// value hx_PhysicsController_HitFilter_filter(value thisObj, value object)
// {
    // PhysicsController::HitFilter *_thisObj;
    // PhysicsCollisionObject *_object;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(object, _object);
    // return alloc_bool(_thisObj->filter(_object));
// }
// DEFINE_PRIM(hx_PhysicsController_HitFilter_filter, 2);

// DECL: virtual bool hit(const HitResult& result);
// value hx_PhysicsController_HitFilter_hit(value thisObj, value result)
// {
    // PhysicsController::HitFilter *_thisObj;
    // PhysicsController::HitResult *_result;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(result, _result);
    // return alloc_bool(_thisObj->hit(*_result));
// }
// DEFINE_PRIM(hx_PhysicsController_HitFilter_hit, 2);

// END
//
