#include "HaxeAPI.h"

// DECL: AIAgent* findAgent(const char* id) const;
value hx_AIController_findAgent(value thisObj, value id)
{
    AIController *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->findAgent(_id), true);
}
DEFINE_PRIM(hx_AIController_findAgent, 2);

// DECL: void sendMessage(AIMessage* message, float delay = 0);
void hx_AIController_sendMessage(value thisObj, value message, value delay)
{
    AIController *_thisObj;
    AIMessage *_message;
    float _delay = ValueToFloat(delay);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(message, _message);
    _thisObj->sendMessage(_message, _delay);
}
DEFINE_PRIM(hx_AIController_sendMessage, 3);

// END
//
