#include "HaxeAPI.h"

/**
 * Defined in PlatformAndroid.cpp
 */
extern struct android_app* __state;

/**
 * TODO
 */
extern "C" DLL_PUBLIC void native_setup(android_app *state)
{
    __state = state;
}
