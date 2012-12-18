#include "HaxeAPI.h"

// DECL: void draw();
void hx_Gamepad_draw(value thisObj)
{
    Gamepad* _thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw();
}
DEFINE_PRIM(hx_Gamepad_draw, 1);

// DECL: unsigned int getButtonCount() const;
value hx_Gamepad_getButtonCount(value thisObj)
{
    Gamepad* _thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getButtonCount());
}
DEFINE_PRIM(hx_Gamepad_getButtonCount, 1);

// DECL: ButtonState getButtonState(unsigned int buttonId) const;
value hx_Gamepad_getButtonState(value thisObj, value buttonId)
{
    Gamepad* _thisObj;
    int _buttonId = ValueToUint(buttonId);
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getButtonState(_buttonId));
}
DEFINE_PRIM(hx_Gamepad_getButtonState, 2);

// DECL: Form* getForm() const;
value hx_Gamepad_getForm(value thisObj)
{
    Gamepad* _thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getForm(), true, true);
}
DEFINE_PRIM(hx_Gamepad_getForm, 1);

// DECL: const char* getId() const;
value hx_Gamepad_getId(value thisObj)
{
    Gamepad* _thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Gamepad_getId, 1);

// DECL: void getJoystickAxisValues(unsigned int joystickId, Vector2* outValues) const;
void hx_Gamepad_getJoystickAxisValues(value thisObj, value joystickId, value outValues)
{
    Gamepad* _thisObj;
    unsigned int _joystickId = ValueToUint(joystickId);
    Vector2* _outValues;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(outValues, _outValues);
    _thisObj->getJoystickAxisValues(_joystickId, _outValues);
}
DEFINE_PRIM(hx_Gamepad_getJoystickAxisValues, 3);

// DECL: float getJoystickAxisX(unsigned int joystickId) const;
value hx_Gamepad_getJoystickAxisX(value thisObj, value joystickId)
{
    Gamepad* _thisObj;
    unsigned int _joystickId = ValueToUint(joystickId);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getJoystickAxisX(_joystickId));
}
DEFINE_PRIM(hx_Gamepad_getJoystickAxisX, 2);

// DECL: float getJoystickAxisY(unsigned int joystickId) const;
value hx_Gamepad_getJoystickAxisY(value thisObj, value joystickId)
{
    Gamepad* _thisObj;
    unsigned int _joystickId = ValueToUint(joystickId);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getJoystickAxisY(_joystickId));
}
DEFINE_PRIM(hx_Gamepad_getJoystickAxisY, 2);

// DECL: unsigned int getJoystickCount() const;
value hx_Gamepad_getJoystickCount(value thisObj)
{
    Gamepad* _thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getJoystickCount());
}
DEFINE_PRIM(hx_Gamepad_getJoystickCount, 1);

// DECL: bool isJoystickActive(unsigned int joystickId) const;
value hx_Gamepad_isJoystickActive(value thisObj, value joystickId)
{
    Gamepad* _thisObj;
    unsigned int _joystickId = ValueToUint(joystickId);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isJoystickActive(_joystickId));
}
DEFINE_PRIM(hx_Gamepad_isJoystickActive, 2);

// DECL: bool isVirtual() const;
value hx_Gamepad_isVirtual(value thisObj)
{
    Gamepad* _thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isVirtual());
}
DEFINE_PRIM(hx_Gamepad_isVirtual, 1);

// DECL: void update(float elapsedTime);
void hx_Gamepad_update(value thisObj, value elapsedTime)
{
    Gamepad* _thisObj;
    float _elapsedTime = ValueToFloat(elapsedTime);
    ValueToObject(thisObj, _thisObj);
    _thisObj->update(_elapsedTime);
}
DEFINE_PRIM(hx_Gamepad_update, 2);

// END
//
