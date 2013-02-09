#include "HaxeAPI.h"

// DECL: static AIMessage* create(unsigned int id, const char* sender, const char* receiver, unsigned int parameterCount);
value hx_AIMessage_static_create(value id, value sender, value receiver, value parameterCount)
{
    unsigned int _id = ValueToUint(id);
    const char *_sender = ValueToString(sender);
    const char *_receiver = ValueToString(receiver);
    unsigned int _parameterCount = ValueToUint(parameterCount);
    return ObjectToValue(AIMessage::create(_id, _sender, _receiver, _parameterCount), false);
}
DEFINE_PRIM(hx_AIMessage_static_create, 4);

// DECL: static void destroy(AIMessage* message);
void hx_AIMessage_static_destroy(value message)
{
    AIMessage *_message;
    ValueToObject(message, _message);
    AIMessage::destroy(_message);
}
DEFINE_PRIM(hx_AIMessage_static_destroy, 1);

// DECL: bool getBoolean(unsigned int index) const;
value hx_AIMessage_getBoolean(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->getBoolean(_index));
}
DEFINE_PRIM(hx_AIMessage_getBoolean, 2);

// DECL: double getDouble(unsigned int index) const;
value hx_AIMessage_getDouble(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getDouble(_index));
}
DEFINE_PRIM(hx_AIMessage_getDouble, 2);

// DECL: float getFloat(unsigned int index) const;
value hx_AIMessage_getFloat(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFloat(_index));
}
DEFINE_PRIM(hx_AIMessage_getFloat, 2);

// DECL: unsigned int getId() const;
value hx_AIMessage_getId(value thisObj)
{
    AIMessage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getId());
}
DEFINE_PRIM(hx_AIMessage_getId, 1);

// DECL: int getInt(unsigned int index) const;
value hx_AIMessage_getInt(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getInt(_index));
}
DEFINE_PRIM(hx_AIMessage_getInt, 2);

// DECL: long getLong(unsigned int index) const;
value hx_AIMessage_getLong(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getLong(_index));
}
DEFINE_PRIM(hx_AIMessage_getLong, 2);

// DECL: unsigned int getParameterCount() const;
value hx_AIMessage_getParameterCount(value thisObj)
{
    AIMessage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getParameterCount());
}
DEFINE_PRIM(hx_AIMessage_getParameterCount, 1);

// DECL: ParameterType getParameterType(unsigned int index) const;
value hx_AIMessage_getParameterType(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getParameterType(_index));
}
DEFINE_PRIM(hx_AIMessage_getParameterType, 2);

// DECL: const char* getReceiver() const;
value hx_AIMessage_getReceiver(value thisObj)
{
    AIMessage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getReceiver());
}
DEFINE_PRIM(hx_AIMessage_getReceiver, 1);

// DECL: const char* getSender() const;
value hx_AIMessage_getSender(value thisObj)
{
    AIMessage *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getSender());
}
DEFINE_PRIM(hx_AIMessage_getSender, 1);

// DECL: const char* getString(unsigned int index) const;
value hx_AIMessage_getString(value thisObj, value index)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getString(_index));
}
DEFINE_PRIM(hx_AIMessage_getString, 2);

// DECL: void setBoolean(unsigned int index, bool value);
void hx_AIMessage_setBoolean(value thisObj, value index, value val)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    bool _value = val_get_bool(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBoolean(_index, _value);
}
DEFINE_PRIM(hx_AIMessage_setBoolean, 3);

// DECL: void setDouble(unsigned int index, double value);
void hx_AIMessage_setDouble(value thisObj, value index, value val)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    double _value = ValueToDouble(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setDouble(_index, _value);
}
DEFINE_PRIM(hx_AIMessage_setDouble, 3);

// DECL: void setFloat(unsigned int index, float value);
void hx_AIMessage_setFloat(value thisObj, value index, value val)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    float _value = ValueToFloat(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFloat(_index, _value);
}
DEFINE_PRIM(hx_AIMessage_setFloat, 3);

// DECL: void setInt(unsigned int index, int value);
void hx_AIMessage_setInt(value thisObj, value index, value val)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    int _value = val_get_int(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setInt(_index, _value);
}
DEFINE_PRIM(hx_AIMessage_setInt, 3);

// DECL: void setLong(unsigned int index, long value);
void hx_AIMessage_setLong(value thisObj, value index, value val)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    long _value = ValueToLong(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setLong(_index, _value);
}
DEFINE_PRIM(hx_AIMessage_setLong, 3);

// DECL: void setString(unsigned int index, const char* value);
void hx_AIMessage_setString(value thisObj, value index, value val)
{
    AIMessage *_thisObj;
    unsigned int _index = ValueToUint(index);
    const char *_value = ValueToString(val);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setString(_index, _value);
}
DEFINE_PRIM(hx_AIMessage_setString, 3);

// END
//
