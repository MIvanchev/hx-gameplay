#include "HaxeAPI.h"

// DECL: virtual void addScriptCallback(const std::string& eventName, const std::string& function);
void hx_ScriptTarget_addScriptCallback(value thisObj, value eventName, value function)
{
    ScriptTarget *_thisObj;
    const char *_eventName = ValueToString(eventName);
    const char *_function = ValueToString(function);
    ValueToObject(thisObj, _thisObj);
    _thisObj->addScriptCallback(std::string(_eventName), std::string(_function));
}
DEFINE_PRIM(hx_ScriptTarget_addScriptCallback, 3);

// DECL: virtual void removeScriptCallback(const std::string& eventName, const std::string& function);
void hx_ScriptTarget_removeScriptCallback(value thisObj, value eventName, value function)
{
    ScriptTarget *_thisObj;
    const char *_eventName;
    const char *_function;
    ValueToObject(thisObj, _thisObj);
    _thisObj->removeScriptCallback(std::string(_eventName), std::string(_function));
}
DEFINE_PRIM(hx_ScriptTarget_removeScriptCallback, 3);

// END
//
