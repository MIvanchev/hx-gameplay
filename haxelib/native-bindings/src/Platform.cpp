#include "HaxeAPI.h"

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

// DECL: int enterMessagePump();
value hx_Platform_enterMessagePump(value thisObj)
{
    Platform *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->enterMessagePump());
}
DEFINE_PRIM(hx_Platform_enterMessagePump, 1);

// DECL: static void gamepadEventConnectedInternal(GamepadHandle handle, unsigned int buttonCount, unsigned int joystickCount, unsigned int triggerCount,
void hx_Platform_static_gamepadEventConnectedInternal(value *args, int nargs)
{
    const value& handle = *args++;
    const value& buttonCount = *args++;
    const value& joystickCount = *args++;
    const value& triggerCount = *args++;
    const value& vendorId = *args++;
    const value& productId = *args++;
    const value& vendorString = *args++;
    const value& productString = *args;

    GamepadHandle _handle;
    unsigned int _buttonCount = ValueToUint(buttonCount);
    unsigned int _joystickCount = ValueToUint(joystickCount);
    unsigned int _triggerCount = ValueToUint(triggerCount);
    unsigned int _vendorId = ValueToUint(vendorId);
    unsigned int _productId = ValueToUint(productId);
    const char *_vendorString = ValueToString(vendorString);
    const char *_productString = ValueToString(productString);
    ValueToHandle(handle, _handle);
    Platform::gamepadEventConnectedInternal(_handle, _buttonCount, _joystickCount, _triggerCount, _vendorId, _productId, _vendorString, _productString);
}
DEFINE_PRIM_MULT(hx_Platform_static_gamepadEventConnectedInternal);

// DECL: static void gamepadEventDisconnectedInternal(GamepadHandle handle);
void hx_Platform_static_gamepadEventDisconnectedInternal(value handle)
{
    GamepadHandle _handle;
    ValueToHandle(handle, _handle);
    Platform::gamepadEventDisconnectedInternal(_handle);
}
DEFINE_PRIM(hx_Platform_static_gamepadEventDisconnectedInternal, 1);

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

// END
//
