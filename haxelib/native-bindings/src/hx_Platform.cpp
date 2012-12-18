#include "HaxeAPI.h"

// DECL: static bool canExit();
value hx_Platform_static_canExit()
{
    return alloc_bool(Platform::canExit());
}
DEFINE_PRIM(hx_Platform_static_canExit, 0);

// DECL: static Platform* create(Game* game, void* attachToWindow = NULL);
value hx_Platform_static_create(value game, value attachToWindow)
{
    Game *_game;
    void *_attachToWindow = NULL;
    ValueToObject(game, _game);
    ValueToHandle(attachToWindow, _attachToWindow);
    return ObjectToValue(Platform::create(_game, _attachToWindow));
}
DEFINE_PRIM(hx_Platform_static_create, 2);

// DECL: static void displayKeyboard(bool display);
void hx_Platform_static_displayKeyboard(value display)
{
    bool _display = val_get_bool(display);
    Platform::displayKeyboard(_display);
}
DEFINE_PRIM(hx_Platform_static_displayKeyboard, 1);

// DECL: int enterMessagePump();
value hx_Platform_enterMessagePump(value thisObj)
{
    Platform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->enterMessagePump());
}
DEFINE_PRIM(hx_Platform_enterMessagePump, 1);

// DECL: static double getAbsoluteTime();
value hx_Platform_static_getAbsoluteTime()
{
    return alloc_float(Platform::getAbsoluteTime());
}
DEFINE_PRIM(hx_Platform_static_getAbsoluteTime, 0);

// DECL: static void getAccelerometerValues(float* pitch, float* roll);
void hx_Platform_static_getAccelerometerValues(value pitch, value roll)
{
    float _pitch;
    float _roll;
    Platform::getAccelerometerValues(&_pitch, &_roll);
    SetOutParameterValue(pitch, alloc_float(_pitch));
    SetOutParameterValue(roll, alloc_float(_roll));
}
DEFINE_PRIM(hx_Platform_static_getAccelerometerValues, 2);

// DECL: static unsigned int getDisplayHeight();
value hx_Platform_static_getDisplayHeight()
{
    return alloc_int(Platform::getDisplayHeight());
}
DEFINE_PRIM(hx_Platform_static_getDisplayHeight, 0);

// DECL: static unsigned int getDisplayWidth();
value hx_Platform_static_getDisplayWidth()
{
    return alloc_int(Platform::getDisplayWidth());
}
DEFINE_PRIM(hx_Platform_static_getDisplayWidth, 0);

// DECL: static unsigned int getGamepadButtonCount(unsigned int gamepadHandle);
value hx_Platform_static_getGamepadButtonCount(value gamepadHandle)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    return alloc_int(Platform::getGamepadButtonCount(_gamepadHandle));
}
DEFINE_PRIM(hx_Platform_static_getGamepadButtonCount, 1);

// DECL: static bool getGamepadButtonState(unsigned int gamepadHandle, unsigned int buttonIndex);
value hx_Platform_static_getGamepadButtonState(value gamepadHandle, value buttonIndex)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    unsigned int _buttonIndex = ValueToUint(buttonIndex);
    return alloc_bool(Platform::getGamepadButtonState(_gamepadHandle, _buttonIndex));
}
DEFINE_PRIM(hx_Platform_static_getGamepadButtonState, 2);

// DECL: static const char* getGamepadId(unsigned int gamepadHandle);
value hx_Platform_static_getGamepadId(value gamepadHandle)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    return StringToValue(Platform::getGamepadId(_gamepadHandle));
}
DEFINE_PRIM(hx_Platform_static_getGamepadId, 1);

// DECL: static void getGamepadJoystickAxisValues(unsigned int gamepadHandle, unsigned int joystickIndex, Vector2* outValue);
void hx_Platform_static_getGamepadJoystickAxisValues(value gamepadHandle, value joystickIndex, value outValue)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    unsigned int _joystickIndex = ValueToUint(joystickIndex);
    Vector2 *_outValue;
    ValueToObject(outValue, _outValue);
    Platform::getGamepadJoystickAxisValues(_gamepadHandle, _joystickIndex, _outValue);
}
DEFINE_PRIM(hx_Platform_static_getGamepadJoystickAxisValues, 3);

// DECL: static float getGamepadJoystickAxisX(unsigned int gamepadHandle, unsigned int joystickIndex);
value hx_Platform_static_getGamepadJoystickAxisX(value gamepadHandle, value joystickIndex)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    unsigned int _joystickIndex = ValueToUint(joystickIndex);
    return alloc_float(Platform::getGamepadJoystickAxisX(_gamepadHandle, _joystickIndex));
}
DEFINE_PRIM(hx_Platform_static_getGamepadJoystickAxisX, 2);

// DECL: static float getGamepadJoystickAxisY(unsigned int gamepadHandle, unsigned int joystickIndex);
value hx_Platform_static_getGamepadJoystickAxisY(value gamepadHandle, value joystickIndex)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    unsigned int _joystickIndex = ValueToUint(joystickIndex);
    return alloc_float(Platform::getGamepadJoystickAxisY(_gamepadHandle, _joystickIndex));
}
DEFINE_PRIM(hx_Platform_static_getGamepadJoystickAxisY, 2);

// DECL: static unsigned int getGamepadJoystickCount(unsigned int gamepadHandle);
value hx_Platform_static_getGamepadJoystickCount(value gamepadHandle)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    return alloc_int(Platform::getGamepadJoystickCount(_gamepadHandle));
}
DEFINE_PRIM(hx_Platform_static_getGamepadJoystickCount, 1);

// DECL: static unsigned int getGamepadTriggerCount(unsigned int gamepadHandle);
value hx_Platform_static_getGamepadTriggerCount(value gamepadHandle)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    return alloc_int(Platform::getGamepadTriggerCount(_gamepadHandle));
}
DEFINE_PRIM(hx_Platform_static_getGamepadTriggerCount, 1);

// DECL: static float getGamepadTriggerValue(unsigned int gamepadHandle, unsigned int triggerIndex);
value hx_Platform_static_getGamepadTriggerValue(value gamepadHandle, value triggerIndex)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    unsigned int _triggerIndex = ValueToUint(triggerIndex);
    return alloc_float(Platform::getGamepadTriggerValue(_gamepadHandle, _triggerIndex));
}
DEFINE_PRIM(hx_Platform_static_getGamepadTriggerValue, 2);

// DECL: static unsigned int getGamepadsConnected();
value hx_Platform_static_getGamepadsConnected()
{
    return alloc_int(Platform::getGamepadsConnected());
}
DEFINE_PRIM(hx_Platform_static_getGamepadsConnected, 0);

// DECL: static bool hasMouse();
value hx_Platform_static_hasMouse()
{
    return alloc_bool(Platform::hasMouse());
}
DEFINE_PRIM(hx_Platform_static_hasMouse, 0);

// DECL: static bool isCursorVisible();
value hx_Platform_static_isCursorVisible()
{
    return alloc_bool(Platform::isCursorVisible());
}
DEFINE_PRIM(hx_Platform_static_isCursorVisible, 0);

// DECL: static bool isGamepadConnected(unsigned int gamepadHandle);
value hx_Platform_static_isGamepadConnected(value gamepadHandle)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    return alloc_bool(Platform::isGamepadConnected(_gamepadHandle));
}
DEFINE_PRIM(hx_Platform_static_isGamepadConnected, 1);

// DECL: static bool isGamepadJoystickActive(unsigned int gamepadHandle, unsigned int joystickIndex);
value hx_Platform_static_isGamepadJoystickActive(value gamepadHandle, value joystickIndex)
{
    unsigned int _gamepadHandle = ValueToUint(gamepadHandle);
    unsigned int _joystickIndex = ValueToUint(joystickIndex);
    return alloc_bool(Platform::isGamepadJoystickActive(_gamepadHandle, _joystickIndex));
}
DEFINE_PRIM(hx_Platform_static_isGamepadJoystickActive, 2);

// DECL: static bool isGestureRegistered(Gesture::GestureEvent evt);
value hx_Platform_static_isGestureRegistered(value evt)
{
    Gesture::GestureEvent _evt;
    ValueToEnum(evt, _evt);
    return alloc_bool(Platform::isGestureRegistered(_evt));
}
DEFINE_PRIM(hx_Platform_static_isGestureRegistered, 1);

// DECL: static bool isGestureSupported(Gesture::GestureEvent evt);
value hx_Platform_static_isGestureSupported(value evt)
{
    Gesture::GestureEvent _evt;
    ValueToEnum(evt, _evt);
    return alloc_bool(Platform::isGestureSupported(_evt));
}
DEFINE_PRIM(hx_Platform_static_isGestureSupported, 1);

// DECL: static bool isMouseCaptured();
value hx_Platform_static_isMouseCaptured()
{
    return alloc_bool(Platform::isMouseCaptured());
}
DEFINE_PRIM(hx_Platform_static_isMouseCaptured, 0);

// DECL: static bool isMultiTouch();
value hx_Platform_static_isMultiTouch()
{
    return alloc_bool(Platform::isMultiTouch());
}
DEFINE_PRIM(hx_Platform_static_isMultiTouch, 0);

// DECL: static bool isVsync();
value hx_Platform_static_isVsync()
{
    return alloc_bool(Platform::isVsync());
}
DEFINE_PRIM(hx_Platform_static_isVsync, 0);

// DECL: static void keyEventInternal(Keyboard::KeyEvent evt, int key);
void hx_Platform_static_keyEventInternal(value evt, value key)
{
    Keyboard::KeyEvent _evt;
    int _key = val_get_int(key);
    ValueToEnum(evt, _evt);
    Platform::keyEventInternal(_evt, _key);
}
DEFINE_PRIM(hx_Platform_static_keyEventInternal, 2);

// DECL: static bool mouseEventInternal(Mouse::MouseEvent evt, int x, int y, int wheelDelta);
value hx_Platform_static_mouseEventInternal(value evt, value x, value y, value wheelDelta)
{
    Mouse::MouseEvent _evt;
    int _x = val_get_int(x);
    int _y = val_get_int(y);
    int _wheelDelta = val_get_int(wheelDelta);
    ValueToEnum(evt, _evt);
    return alloc_bool(Platform::mouseEventInternal(_evt, _x, _y, _wheelDelta));
}
DEFINE_PRIM(hx_Platform_static_mouseEventInternal, 4);

// DECL: static void registerGesture(Gesture::GestureEvent evt);
void hx_Platform_static_registerGesture(value evt)
{
    Gesture::GestureEvent _evt;
    ValueToEnum(evt, _evt);
    Platform::registerGesture(_evt);
}
DEFINE_PRIM(hx_Platform_static_registerGesture, 1);

// DECL: static void setAbsoluteTime(double time);
void hx_Platform_static_setAbsoluteTime(value time)
{
    double _time = ValueToDouble(time);
    Platform::setAbsoluteTime(_time);
}
DEFINE_PRIM(hx_Platform_static_setAbsoluteTime, 1);

// DECL: static void setCursorVisible(bool visible);
void hx_Platform_static_setCursorVisible(value visible)
{
    bool _visible = val_get_bool(visible);
    Platform::setCursorVisible(_visible);
}
DEFINE_PRIM(hx_Platform_static_setCursorVisible, 1);

// DECL: static void setMouseCaptured(bool captured);
void hx_Platform_static_setMouseCaptured(value captured)
{
    bool _captured = val_get_bool(captured);
    Platform::setMouseCaptured(_captured);
}
DEFINE_PRIM(hx_Platform_static_setMouseCaptured, 1);

// DECL: static void setMultiTouch(bool enabled);
void hx_Platform_static_setMultiTouch(value enabled)
{
    bool _enabled = val_get_bool(enabled);
    Platform::setMultiTouch(_enabled);
}
DEFINE_PRIM(hx_Platform_static_setMultiTouch, 1);

// DECL: static void setVsync(bool enable);
void hx_Platform_static_setVsync(value enable)
{
    bool _enable = val_get_bool(enable);
    Platform::setVsync(_enable);
}
DEFINE_PRIM(hx_Platform_static_setVsync, 1);

// DECL: static void signalShutdown();
void hx_Platform_static_signalShutdown()
{
    Platform::signalShutdown();
}
DEFINE_PRIM(hx_Platform_static_signalShutdown, 0);

// DECL: static void sleep(long ms);
void hx_Platform_static_sleep(value ms)
{
    long _ms = ValueToLong(ms);
    Platform::sleep(_ms);
}
DEFINE_PRIM(hx_Platform_static_sleep, 1);

// DECL: static void swapBuffers();
void hx_Platform_static_swapBuffers()
{
    Platform::swapBuffers();
}
DEFINE_PRIM(hx_Platform_static_swapBuffers, 0);

// DECL: static void touchEventInternal(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex);
void hx_Platform_static_touchEventInternal(value evt, value x, value y, value contactIndex)
{
    Touch::TouchEvent _evt;
    int _x = val_get_int(x);
    int _y = val_get_int(y);
    unsigned int _contactIndex = ValueToUint(contactIndex);
    ValueToEnum(evt, _evt);
    Platform::touchEventInternal(_evt, _x, _y, _contactIndex);
}
DEFINE_PRIM(hx_Platform_static_touchEventInternal, 4);

// DECL: static void unregisterGesture(Gesture::GestureEvent evt);
void hx_Platform_static_unregisterGesture(value evt)
{
    Gesture::GestureEvent _evt;
    ValueToEnum(evt, _evt);
    Platform::unregisterGesture(_evt);
}
DEFINE_PRIM(hx_Platform_static_unregisterGesture, 1);

// END
//
