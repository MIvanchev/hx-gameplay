#include "HaxeAPI.h"

// DECL: void draw();
void hx_Gamepad_draw(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw();
}
DEFINE_PRIM(hx_Gamepad_draw, 1);

// DECL: unsigned int getButtonCount() const;
value hx_Gamepad_getButtonCount(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getButtonCount());
}
DEFINE_PRIM(hx_Gamepad_getButtonCount, 1);

// DECL: Form* getForm() const;
value hx_Gamepad_getForm(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getForm(), true);
}
DEFINE_PRIM(hx_Gamepad_getForm, 1);

// DECL: unsigned int getJoystickCount() const;
value hx_Gamepad_getJoystickCount(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getJoystickCount());
}
DEFINE_PRIM(hx_Gamepad_getJoystickCount, 1);

// DECL: void getJoystickValues(unsigned int joystickId, Vector2* outValues) const;
void hx_Gamepad_getJoystickValues(value thisObj, value joystickId, value outValues)
{
    Gamepad *_thisObj;
    unsigned int _joystickId = ValueToUint(joystickId);
    Vector2 *_outValues;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(outValues, _outValues);
    _thisObj->getJoystickValues(_joystickId, _outValues);
}
DEFINE_PRIM(hx_Gamepad_getJoystickValues, 3);

// DECL: const unsigned int getProductId() const;
value hx_Gamepad_getProductId(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getProductId());
}
DEFINE_PRIM(hx_Gamepad_getProductId, 1);

// DECL: const char* getProductString() const;
value hx_Gamepad_getProductString(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getProductString());
}
DEFINE_PRIM(hx_Gamepad_getProductString, 1);

// DECL: unsigned int getTriggerCount() const;
value hx_Gamepad_getTriggerCount(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getTriggerCount());
}
DEFINE_PRIM(hx_Gamepad_getTriggerCount, 1);

// DECL: float getTriggerValue(unsigned int triggerId) const;
value hx_Gamepad_getTriggerValue(value thisObj, value triggerId)
{
    Gamepad *_thisObj;
    unsigned int _triggerId = ValueToUint(triggerId);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getTriggerValue(_triggerId));
}
DEFINE_PRIM(hx_Gamepad_getTriggerValue, 2);

// DECL: const unsigned int getVendorId() const;
value hx_Gamepad_getVendorId(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getVendorId());
}
DEFINE_PRIM(hx_Gamepad_getVendorId, 1);

// DECL: const char* getVendorString() const;
value hx_Gamepad_getVendorString(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getVendorString());
}
DEFINE_PRIM(hx_Gamepad_getVendorString, 1);

// DECL: bool isButtonDown(ButtonMapping button) const;
value hx_Gamepad_isButtonDown(value thisObj, value button)
{
    Gamepad *_thisObj;
    Gamepad::ButtonMapping _button;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(button, _button);
    return alloc_bool(_thisObj->isButtonDown(_button));
}
DEFINE_PRIM(hx_Gamepad_isButtonDown, 2);

// DECL: bool isVirtual() const;
value hx_Gamepad_isVirtual(value thisObj)
{
    Gamepad *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isVirtual());
}
DEFINE_PRIM(hx_Gamepad_isVirtual, 1);

// DECL: void update(float elapsedTime);
void hx_Gamepad_update(value thisObj, value elapsedTime)
{
    Gamepad *_thisObj;
    float _elapsedTime = ValueToFloat(elapsedTime);
    ValueToObject(thisObj, _thisObj);
    _thisObj->update(_elapsedTime);
}
DEFINE_PRIM(hx_Gamepad_update, 2);

// END
//
