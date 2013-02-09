#include "HaxeAPI.h"

/*******************************************************************************
 * HELPERS                                                                     *
 ******************************************************************************/

static AutoGCRoot *clbkLogFunction = NULL;

static void logFunction(Logger::Level level, const char *message)
{
    if (clbkLogFunction != NULL)
    {
        val_call2(
                clbkLogFunction->get(),
                EnumToValue(level),
                StringToValue(message)
            );
    }
}

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: static bool isEnabled(Level level);
value hx_Logger_static_isEnabled(value level)
{
    Logger::Level _level;
    ValueToEnum(level, _level);
    return alloc_bool(Logger::isEnabled(_level));
}
DEFINE_PRIM(hx_Logger_static_isEnabled, 1);

// DECL: static void log(Level level, const char* message, ...);
void hx_Logger_static_log(value level, value message)
{
    Logger::Level _level;
    const char *_message = ValueToString(message);
    ValueToEnum(level, _level);
    Logger::log(_level, _message);
}
DEFINE_PRIM(hx_Logger_static_log, 2);

// DECL: static void set(Level level, const char* logFunction);
void hx_Logger_static_set_Int_Str(value level, value logFunction)
{
    Logger::Level _level;
    const char *_logFunction = ValueToString(logFunction);
    ValueToEnum(level, _level);

    if (clbkLogFunction != NULL)
    {
        SAFE_DELETE(clbkLogFunction);
        clbkLogFunction = NULL;
    }

    Logger::set(_level, _logFunction);
}
DEFINE_PRIM(hx_Logger_static_set_Int_Str, 2);

// DECL: static void set(Level level, void (*logFunction) (Level, const char*));
void hx_Logger_static_set_Int_Func(value level, value _logFunction)
{
    Logger::Level _level;
    ValueToEnum(level, _level);

    // Obtain a pointer to the callback wrapper.
    //

    void (*func) (Logger::Level, const char*) = NULL;
    if (!val_is_null(_logFunction))
        func = logFunction;

    // Clear or set the GC root for the Haxe callback.
    //

    if (func == NULL && clbkLogFunction != NULL)
    {
        SAFE_DELETE(clbkLogFunction);
        clbkLogFunction = NULL;
    }
    if (func != NULL)
    {
        if (clbkLogFunction == NULL)
            clbkLogFunction = new AutoGCRoot(_logFunction);
        else
            clbkLogFunction->set(_logFunction);
    }

    Logger::set(_level, func);
}
DEFINE_PRIM(hx_Logger_static_set_Int_Func, 2);

// DECL: static void setEnabled(Level level, bool enabled);
void hx_Logger_static_setEnabled(value level, value enabled)
{
    Logger::Level _level;
    bool _enabled = val_get_bool(enabled);
    ValueToEnum(level, _level);
    Logger::setEnabled(_level, _enabled);
}
DEFINE_PRIM(hx_Logger_static_setEnabled, 2);

// END
//
