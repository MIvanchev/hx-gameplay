#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeAIAgent_Listener : public AIAgent::Listener
{
private:

    AutoGCRoot clbkMessageReceived;

public:

    HaxeAIAgent_Listener(const value& _clbkMessageReceived)
        : clbkMessageReceived(_clbkMessageReceived)
    {
    }

    bool messageReceived(AIMessage *message)
    {
        const value& result =
            val_call1(
                clbkMessageReceived.get(),
                ObjectToValue(message, false)
            );
        return val_get_bool(result);
    }
};

value hx_AIAgent_Listener_Construct(value clbkMessageReceived)
{
    HaxeAIAgent_Listener *instance =
        new HaxeAIAgent_Listener(clbkMessageReceived);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_AIAgent_Listener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual bool messageReceived(AIMessage* message) = 0;
// value hx_AIAgent_Listener_messageReceived(value thisObj, value message)
// {
    // AIAgent::Listener *_thisObj;
    // AIMessage *_message;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(message, _message);
    // return _thisObj->messageReceived(_message);
// }
// DEFINE_PRIM(hx_AIAgent_Listener_messageReceived, 2);

// END
//
