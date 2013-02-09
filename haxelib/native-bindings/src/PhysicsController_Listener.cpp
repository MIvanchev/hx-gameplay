#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

HaxePhysicsController_Listener::HaxePhysicsController_Listener(const value& _clbkStatusEvent)
    : clbkStatusEvent(_clbkStatusEvent)
{
}

void HaxePhysicsController_Listener::statusEvent(EventType type)
{
    val_call1(clbkStatusEvent.get(), EnumToValue(type));
};

value hx_PhysicsController_Listener_Construct(value clbkStatusEvent)
{
    HaxePhysicsController_Listener *instance =
        new HaxePhysicsController_Listener(clbkStatusEvent);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_PhysicsController_Listener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void statusEvent(EventType type) = 0;
// void hx_PhysicsController_Listener_statusEvent(value thisObj, value type)
// {
    // PhysicsController::Listener *_thisObj;
    // EventType *_type;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(type, _type);
    // _thisObj->statusEvent(_type);
// }
// DEFINE_PRIM(hx_PhysicsController_Listener_statusEvent, 2);

// END
//
