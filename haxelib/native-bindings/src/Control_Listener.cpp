#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeControl_Listener : public Control::Listener
{
private:

    AutoGCRoot clbkControlEvent;

public:

    HaxeControl_Listener(const value& _clbkControlEvent)
        : clbkControlEvent(_clbkControlEvent)
    {
    }

    void controlEvent(Control *control, EventType type)
    {
        val_call2(
                clbkControlEvent.get(),
                ReferenceToValue(control, true),
                EnumToValue(type)
            );
    }
};

value hx_Control_Listener_Construct(value clbkControlEvent)
{
    HaxeControl_Listener *instance =
        new HaxeControl_Listener(clbkControlEvent);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_Control_Listener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void controlEvent(Control* control, EventType evt) = 0;
// void hx_Control_Listener_controlEvent(value thisObj, value control, value evt)
// {
    // Control::Listener *_thisObj;
    // Control *_control;
    // EventType *_evt;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(control, _control);
    // ValueToObject(evt, _evt);
    // _thisObj->controlEvent(_control, _evt);
// }
// DEFINE_PRIM(hx_Control_Listener_controlEvent, 3);

// END
//
