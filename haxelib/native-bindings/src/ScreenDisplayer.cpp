#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

HaxeScreenDisplayer::HaxeScreenDisplayer()
    : screenDisplayer(NULL), initialized(false), clbkMethod(NULL)
{
}

HaxeScreenDisplayer::~HaxeScreenDisplayer()
{
    if (initialized && screenDisplayer != NULL)
        hx_failure("You must invoke \"complete\" after calling \"run\".");
}

void HaxeScreenDisplayer::run(const value& method, void *cookie, unsigned long time)
{
    if (initialized)
        hx_failure("The \"run\" method was already called.");

    screenDisplayer = new ScreenDisplayer();
    initialized = true;
    clbkMethod = &method;

    screenDisplayer->run(this, &HaxeScreenDisplayer::delegateCall, cookie, time);
}

void HaxeScreenDisplayer::complete()
{
    if (!initialized)
        hx_failure("The \"run\" method was not yet called.");
    else
    {
        delete screenDisplayer;
        screenDisplayer = NULL;
    }
}

void HaxeScreenDisplayer::delegateCall(void *param)
{
    val_call1(*clbkMethod, HandleToValueOrNull(param, NULL));
}

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: ScreenDisplayer();
value hx_ScreenDisplayer_Construct()
{
    return ObjectToValue(new HaxeScreenDisplayer());
}
DEFINE_PRIM(hx_ScreenDisplayer_Construct, 0);

// DECL: static void finish();
void hx_ScreenDisplayer_static_finish()
{
    ScreenDisplayer::finish();
}
DEFINE_PRIM(hx_ScreenDisplayer_static_finish, 0);

// DECL: template <typename T> void run(T* instance, void (T::*method) (void*), void* cookie, unsigned long time);
void hx_ScreenDisplayer_run(value thisObj, value method, value cookie, value time)
{
    HaxeScreenDisplayer *_thisObj;
    void *_cookie = NULL;
    unsigned long _time = ValueToUlong(time);
    ValueToObject(thisObj, _thisObj);
    ValueToHandle(cookie, _cookie);
    _thisObj->run(method, _cookie, _time);
}
DEFINE_PRIM(hx_ScreenDisplayer_run, 4);

// DECL: (none)
void hx_ScreenDisplayer_complete(value thisObj)
{
    HaxeScreenDisplayer *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->complete();
}
DEFINE_PRIM(hx_ScreenDisplayer_complete, 1);

// DECL: static void start(const char* function, unsigned long time);
void hx_ScreenDisplayer_static_start(value function, value time)
{
    const char *_function = ValueToString(function);
    unsigned long _time = ValueToUlong(time);
    ScreenDisplayer::start(_function, _time);
}
DEFINE_PRIM(hx_ScreenDisplayer_static_start, 2);

// END
//
