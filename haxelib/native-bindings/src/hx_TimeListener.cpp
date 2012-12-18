#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeTimeListener : public TimeListener
{
private:

    AutoGCRoot clbkTimeEvent;

public:

    HaxeTimeListener(const value& _clbkTimeEvent)
        : clbkTimeEvent(_clbkTimeEvent)
    {
    }

    void timeEvent(long timeDiff, void *cookie)
    {
        val_call2(
                clbkTimeEvent.get(),
                alloc_int(timeDiff),
                HandleToValueOrNull(cookie, NULL)
            );
    }
};

value hx_TimeListener_Construct(value clbkTimeChanged)
{
    HaxeTimeListener *instance = new HaxeTimeListener(clbkTimeChanged);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_TimeListener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void timeEvent(long timeDiff, void* cookie) = 0;
// void hx_TimeListener_timeEvent(value thisObj, value timeDiff, value cookie)
// {
    // TimeListener *_thisObj;
    // long _timeDiff = ValueToLong(timeDiff);
    // void *_cookie;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(cookie, _cookie);
    // _thisObj->timeEvent(_timeDiff, _cookie);
// }
// DEFINE_PRIM(hx_TimeListener_timeEvent, 3);

// END
//
