#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeGame : public Game
{
private:

    AutoGCRoot clbkInitialize;
    AutoGCRoot clbkFinalize;
    AutoGCRoot clbkUpdate;
    AutoGCRoot clbkRender;
    AutoGCRoot clbkGamepadEvent;
    AutoGCRoot clbkGesturePinchEvent;
    AutoGCRoot clbkGestureSwipeEvent;
    AutoGCRoot clbkGestureTapEvent;
    AutoGCRoot clbkKeyEvent;
    AutoGCRoot clbkMenuEvent;
    AutoGCRoot clbkMouseEvent;
    AutoGCRoot clbkTouchEvent;

public:

    HaxeGame(
            const value& _clbkInitialize,
            const value& _clbkFinalize,
            const value& _clbkUpdate,
            const value& _clbkRender,
            const value& _clbkGamepadEvent,
            const value& _clbkGesturePinchEvent,
            const value& _clbkGestureSwipeEvent,
            const value& _clbkGestureTapEvent,
            const value& _clbkKeyEvent,
            const value& _clbkMenuEvent,
            const value& _clbkMouseEvent,
            const value& _clbkTouchEvent
        )
        : clbkInitialize(_clbkInitialize), clbkFinalize(_clbkFinalize),
            clbkUpdate(_clbkUpdate), clbkRender(_clbkRender),
            clbkGamepadEvent(_clbkGamepadEvent), clbkGesturePinchEvent(_clbkGesturePinchEvent),
            clbkGestureSwipeEvent(_clbkGestureSwipeEvent), clbkGestureTapEvent(_clbkGestureTapEvent),
            clbkKeyEvent(_clbkKeyEvent), clbkMenuEvent(_clbkMenuEvent),
            clbkMouseEvent(_clbkMouseEvent), clbkTouchEvent(_clbkTouchEvent)
    {
    }

    void initialize()
    {
        val_call0(clbkInitialize.get());
    }

    void finalize()
    {
        val_call0(clbkFinalize.get());
    }

    void update(float elapsedTime)
    {
        val_call1(clbkUpdate.get(), alloc_float(elapsedTime));
    }

    void render(float elapsedTime)
    {
        val_call1(clbkRender.get(), alloc_float(elapsedTime));
    }

    void gamepadEvent(Gamepad::GamepadEvent event, Gamepad *gamepad)
    {
        val_call2(clbkGamepadEvent.get(), EnumToValue(event), ObjectToValue(gamepad, false));
    }

    void gesturePinchEvent(int x, int y, float scale)
    {
         val_call3(clbkGesturePinchEvent.get(), alloc_int(x), alloc_int(y), alloc_float(scale));
    }

    void gestureSwipeEvent(int x, int y, int direction)
    {
        val_call3(clbkGestureSwipeEvent.get(), alloc_int(x), alloc_int(y), alloc_int(direction));
    }

    void gestureTapEvent(int x, int y)
    {
        val_call2(clbkGestureTapEvent.get(), alloc_int(x), alloc_int(y));
    }

    void keyEvent(Keyboard::KeyEvent event, int key)
    {
        val_call2(clbkKeyEvent.get(), EnumToValue(event), alloc_int(key));
    }

    void menuEvent()
    {
        val_call0(clbkMenuEvent.get());
    }

    bool mouseEvent(Mouse::MouseEvent event, int x, int y, int wheelData)
    {
        value vals[] =
            {
                EnumToValue(event),
                alloc_int(x),
                alloc_int(y),
                alloc_int(wheelData)
            };

        return val_get_bool(val_callN(clbkMouseEvent.get(), vals, 4));
    }

    void touchEvent(Touch::TouchEvent event, int x, int y, unsigned int contactIndex)
    {
        value vals[] =
            {
                EnumToValue(event),
                alloc_int(x),
                alloc_int(y),
                alloc_int(contactIndex)
            };

        val_callN(clbkTouchEvent.get(), vals, 4);
    }
};

value hx_Game_Construct(value *args, int nargs)
{
    const value& clbkInitialize = *args++;
    const value& clbkFinalize = *args++;
    const value& clbkUpdate = *args++;
    const value& clbkRender = *args++;
    const value& clbkGamepadEvent = *args++;
    const value& clbkGesturePinchEvent = *args++;
    const value& clbkGestureSwipeEvent = *args++;
    const value& clbkGestureTapEvent = *args++;
    const value& clbkKeyEvent = *args++;
    const value& clbkMenuEvent = *args++;
    const value& clbkMouseEvent = *args++;
    const value& clbkTouchEvent = *args;

    HaxeGame *instance =
        new HaxeGame(
                clbkInitialize,
                clbkFinalize,
                clbkUpdate,
                clbkRender,
                clbkGamepadEvent,
                clbkGesturePinchEvent,
                clbkGestureSwipeEvent,
                clbkGestureTapEvent,
                clbkKeyEvent,
                clbkMenuEvent,
                clbkMouseEvent,
                clbkTouchEvent
            );
    return ObjectToValue(instance, false);
}
DEFINE_PRIM_MULT(hx_Game_Construct);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: inline bool canExit() const;
value hx_Game_canExit(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->canExit());
}
DEFINE_PRIM(hx_Game_canExit, 1);

// DECL: void clear(ClearFlags flags, const Vector4& clearColor, float clearDepth, int clearStencil);
void hx_Game_clear_Int_V4_Flt_Int(value thisObj, value flags, value clearColor, value clearDepth, value clearStencil)
{
    Game *_thisObj;
    Game::ClearFlags _flags;
    Vector4 *_clearColor;
    float _clearDepth = ValueToFloat(clearDepth);
    int _clearStencil = val_get_int(clearStencil);
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(flags, _flags);
    ValueToObject(clearColor, _clearColor);
    _thisObj->clear(_flags, *_clearColor, _clearDepth, _clearStencil);
}
DEFINE_PRIM(hx_Game_clear_Int_V4_Flt_Int, 5);

// DECL: void clear(ClearFlags flags, float red, float green, float blue, float alpha, float clearDepth, int clearStencil);
void hx_Game_clear_Int_FltX5_Int(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& flags = *args++;
    const value& red = *args++;
    const value& green = *args++;
    const value& blue = *args++;
    const value& alpha = *args++;
    const value& clearDepth = *args++;
    const value& clearStencil = *args;

    Game *_thisObj;
    Game::ClearFlags _flags;
    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    float _alpha = ValueToFloat(alpha);
    float _clearDepth = ValueToFloat(clearDepth);
    int _clearStencil = val_get_int(clearStencil);
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(flags, _flags);
    _thisObj->clear(_flags, _red, _green, _blue, _alpha, _clearDepth, _clearStencil);
}
DEFINE_PRIM_MULT(hx_Game_clear_Int_FltX5_Int);

// DECL: inline void displayKeyboard(bool display);
void hx_Game_displayKeyboard(value thisObj, value display)
{
    Game *_thisObj;
    bool _display = val_get_bool(display);
    ValueToObject(thisObj, _thisObj);
    _thisObj->displayKeyboard(_display);
}
DEFINE_PRIM(hx_Game_displayKeyboard, 2);

// DECL: void exit();
void hx_Game_exit(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->exit();
}
DEFINE_PRIM(hx_Game_exit, 1);

// DECL: void frame();
void hx_Game_frame(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->frame();
}
DEFINE_PRIM(hx_Game_frame, 1);

// DECL: virtual void gamepadEvent(Gamepad::GamepadEvent evt, Gamepad* gamepad);
// void hx_Game_gamepadEvent(value thisObj, value evt, value gamepad)
// {
    // Game *_thisObj;
    // Gamepad::GamepadEvent *_evt;
    // Gamepad *_gamepad;
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(evt, _evt);
    // ValueToObject(gamepad, _gamepad);
    // _thisObj->gamepadEvent(_evt, _gamepad);
// }
// DEFINE_PRIM(hx_Game_gamepadEvent, 3);

// DECL: virtual void gesturePinchEvent(int x, int y, float scale);
// void hx_Game_gesturePinchEvent(value thisObj, value x, value y, value scale)
// {
    // Game *_thisObj;
    // int _x = val_get_int(x);
    // int _y = val_get_int(y);
    // float _scale = ValueToFloat(scale);
    // ValueToObject(thisObj, _thisObj);
    // _thisObj->gesturePinchEvent(_x, _y, _scale);
// }
// DEFINE_PRIM(hx_Game_gesturePinchEvent, 4);

// DECL: virtual void gestureSwipeEvent(int x, int y, int direction);
// void hx_Game_gestureSwipeEvent(value thisObj, value x, value y, value direction)
// {
    // Game *_thisObj;
    // int _x = val_get_int(x);
    // int _y = val_get_int(y);
    // int _direction = val_get_int(direction);
    // ValueToObject(thisObj, _thisObj);
    // _thisObj->gestureSwipeEvent(_x, _y, _direction);
// }
// DEFINE_PRIM(hx_Game_gestureSwipeEvent, 4);

// DECL: virtual void gestureTapEvent(int x, int y);
// void hx_Game_gestureTapEvent(value thisObj, value x, value y)
// {
    // Game *_thisObj;
    // int _x = val_get_int(x);
    // int _y = val_get_int(y);
    // ValueToObject(thisObj, _thisObj);
    // _thisObj->gestureTapEvent(_x, _y);
// }
// DEFINE_PRIM(hx_Game_gestureTapEvent, 3);

// DECL: inline AIController* getAIController() const;
value hx_Game_getAIController(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getAIController(), false);
}
DEFINE_PRIM(hx_Game_getAIController, 1);

// DECL: static double getAbsoluteTime();
value hx_Game_static_getAbsoluteTime()
{
    return alloc_float(Game::getAbsoluteTime());
}
DEFINE_PRIM(hx_Game_static_getAbsoluteTime, 0);

// DECL: inline void getAccelerometerValues(float* pitch, float* roll);
void hx_Game_getAccelerometerValues(value thisObj, value pitch, value roll)
{
    Game *_thisObj;
    float _pitch;
    float _roll;
    ValueToObject(thisObj, _thisObj);
    _thisObj->getAccelerometerValues(&_pitch, &_roll);
    SetOutParameterValue(pitch, alloc_float(_pitch));
    SetOutParameterValue(roll, alloc_float(_roll));
}
DEFINE_PRIM(hx_Game_getAccelerometerValues, 3);

// DECL: inline AnimationController* getAnimationController() const;
value hx_Game_getAnimationController(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getAnimationController(), false);
}
DEFINE_PRIM(hx_Game_getAnimationController, 1);

// DECL: inline float getAspectRatio() const;
value hx_Game_getAspectRatio(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getAspectRatio());
}
DEFINE_PRIM(hx_Game_getAspectRatio, 1);

// DECL: inline AudioController* getAudioController() const;
value hx_Game_getAudioController(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getAudioController(), false);
}
DEFINE_PRIM(hx_Game_getAudioController, 1);

// DECL: AudioListener* getAudioListener();
value hx_Game_getAudioListener(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getAudioListener(), false);
}
DEFINE_PRIM(hx_Game_getAudioListener, 1);

// DECL: Properties* getConfig() const;
value hx_Game_getConfig(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getConfig(), false);
}
DEFINE_PRIM(hx_Game_getConfig, 1);

// DECL: inline unsigned int getFrameRate() const;
value hx_Game_getFrameRate(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getFrameRate());
}
DEFINE_PRIM(hx_Game_getFrameRate, 1);

// DECL: static double getGameTime();
value hx_Game_static_getGameTime()
{
    return alloc_float(Game::getGameTime());
}
DEFINE_PRIM(hx_Game_static_getGameTime, 0);

// DECL: inline Gamepad* getGamepad(unsigned int index) const;
value hx_Game_getGamepad(value thisObj, value index)
{
    Game *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getGamepad(_index), false);
}
DEFINE_PRIM(hx_Game_getGamepad, 2);

// DECL: inline unsigned int getGamepadCount() const;
value hx_Game_getGamepadCount(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getGamepadCount());
}
DEFINE_PRIM(hx_Game_getGamepadCount, 1);

// DECL: inline unsigned int getHeight() const;
value hx_Game_getHeight(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getHeight());
}
DEFINE_PRIM(hx_Game_getHeight, 1);

// DECL: static Game* getInstance();
value hx_Game_static_getInstance()
{
    return ObjectToValue(Game::getInstance(), false);
}
DEFINE_PRIM(hx_Game_static_getInstance, 0);

// DECL: inline PhysicsController* getPhysicsController() const;
value hx_Game_getPhysicsController(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getPhysicsController(), false);
}
DEFINE_PRIM(hx_Game_getPhysicsController, 1);

// DECL: inline ScriptController* getScriptController() const;
value hx_Game_getScriptController(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getScriptController(), false);
}
DEFINE_PRIM(hx_Game_getScriptController, 1);

// DECL: inline State getState() const;
value hx_Game_getState(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getState());
}
DEFINE_PRIM(hx_Game_getState, 1);

// DECL: inline const Rectangle& getViewport() const;
value hx_Game_getViewport(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getViewport(), false);
}
DEFINE_PRIM(hx_Game_getViewport, 1);

// DECL: inline unsigned int getWidth() const;
value hx_Game_getWidth(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getWidth());
}
DEFINE_PRIM(hx_Game_getWidth, 1);

// DECL: inline bool hasMouse();
value hx_Game_hasMouse(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->hasMouse());
}
DEFINE_PRIM(hx_Game_hasMouse, 1);

// DECL: inline bool isCursorVisible();
value hx_Game_isCursorVisible(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isCursorVisible());
}
DEFINE_PRIM(hx_Game_isCursorVisible, 1);

// DECL: bool isGestureRegistered(Gesture::GestureEvent evt);
value hx_Game_isGestureRegistered(value thisObj, value evt)
{
    Game *_thisObj;
    Gesture::GestureEvent _evt;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(evt, _evt);
    return alloc_bool(_thisObj->isGestureRegistered(_evt));
}
DEFINE_PRIM(hx_Game_isGestureRegistered, 2);

// DECL: bool isGestureSupported(Gesture::GestureEvent evt);
value hx_Game_isGestureSupported(value thisObj, value evt)
{
    Game *_thisObj;
    Gesture::GestureEvent _evt;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(evt, _evt);
    return alloc_bool(_thisObj->isGestureSupported(_evt));
}
DEFINE_PRIM(hx_Game_isGestureSupported, 2);

// DECL: inline bool isInitialized() const;
value hx_Game_isInitialized(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isInitialized());
}
DEFINE_PRIM(hx_Game_isInitialized, 1);

// DECL: inline bool isMouseCaptured();
value hx_Game_isMouseCaptured(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isMouseCaptured());
}
DEFINE_PRIM(hx_Game_isMouseCaptured, 1);

// DECL: inline bool isMultiTouch() const;
value hx_Game_isMultiTouch(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isMultiTouch());
}
DEFINE_PRIM(hx_Game_isMultiTouch, 1);

// DECL: static bool isVsync();
value hx_Game_static_isVsync()
{
    return alloc_bool(Game::isVsync());
}
DEFINE_PRIM(hx_Game_static_isVsync, 0);

// DECL: virtual void keyEvent(Keyboard::KeyEvent evt, int key);
// void hx_Game_keyEvent(value thisObj, value evt, value key)
// {
    // Game *_thisObj;
    // Keyboard::KeyEvent *_evt;
    // int _key = val_get_int(key);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(evt, _evt);
    // _thisObj->keyEvent(_evt, _key);
// }
// DEFINE_PRIM(hx_Game_keyEvent, 3);

// DECL: bool launchURL(const char *url) const;
value hx_Game_launchURL(value thisObj, value url)
{
    Game *_thisObj;
    const char *_url = ValueToString(url);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->launchURL(_url));
}
DEFINE_PRIM(hx_Game_launchURL, 2);

// DECL: virtual void menuEvent();
// void hx_Game_menuEvent(value thisObj)
// {
    // Game *_thisObj;
    // ValueToObject(thisObj, _thisObj);
    // _thisObj->menuEvent();
// }
// DEFINE_PRIM(hx_Game_menuEvent, 1);

// DECL: virtual bool mouseEvent(Mouse::MouseEvent evt, int x, int y, int wheelDelta);
// value hx_Game_mouseEvent(value thisObj, value evt, value x, value y, value wheelDelta)
// {
    // Game *_thisObj;
    // Mouse::MouseEvent *_evt;
    // int _x = val_get_int(x);
    // int _y = val_get_int(y);
    // int _wheelDelta = val_get_int(wheelDelta);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(evt, _evt);
    // return _thisObj->mouseEvent(_evt, _x, _y, _wheelDelta);
// }
// DEFINE_PRIM(hx_Game_mouseEvent, 5);

// DECL: void pause();
void hx_Game_pause(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->pause();
}
DEFINE_PRIM(hx_Game_pause, 1);

// DECL: void registerGesture(Gesture::GestureEvent evt);
void hx_Game_registerGesture(value thisObj, value evt)
{
    Game *_thisObj;
    Gesture::GestureEvent _evt;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(evt, _evt);
    _thisObj->registerGesture(_evt);
}
DEFINE_PRIM(hx_Game_registerGesture, 2);

// DECL: void resume();
void hx_Game_resume(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->resume();
}
DEFINE_PRIM(hx_Game_resume, 1);

// DECL: int run();
value hx_Game_run(value thisObj)
{
    Game *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->run());
}
DEFINE_PRIM(hx_Game_run, 1);

// DECL: void schedule(float timeOffset, TimeListener* timeListener, void* cookie = 0);
void hx_Game_schedule_Flt_Lsnr_Hndl(value thisObj, value timeOffset, value timeListener, value cookie)
{
    Game *_thisObj;
    float _timeOffset = ValueToFloat(timeOffset);
    TimeListener *_timeListener;
    void *_cookie = NULL;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(timeListener, _timeListener);
    ValueToHandle(cookie, _cookie);
    _thisObj->schedule(_timeOffset, _timeListener, _cookie);
}
DEFINE_PRIM(hx_Game_schedule_Flt_Lsnr_Hndl, 4);

// DECL: void schedule(float timeOffset, const char* function);
void hx_Game_schedule_Flt_Str(value thisObj, value timeOffset, value function)
{
    Game *_thisObj;
    float _timeOffset = ValueToFloat(timeOffset);
    const char *_function = ValueToString(function);
    ValueToObject(thisObj, _thisObj);
    _thisObj->schedule(_timeOffset, _function);
}
DEFINE_PRIM(hx_Game_schedule_Flt_Str, 3);

// DECL: inline void setCursorVisible(bool visible);
void hx_Game_setCursorVisible(value thisObj, value visible)
{
    Game *_thisObj;
    bool _visible = val_get_bool(visible);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setCursorVisible(_visible);
}
DEFINE_PRIM(hx_Game_setCursorVisible, 2);

// DECL: inline void setMouseCaptured(bool captured);
void hx_Game_setMouseCaptured(value thisObj, value captured)
{
    Game *_thisObj;
    bool _captured = val_get_bool(captured);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMouseCaptured(_captured);
}
DEFINE_PRIM(hx_Game_setMouseCaptured, 2);

// DECL: inline void setMultiTouch(bool enabled);
void hx_Game_setMultiTouch(value thisObj, value enabled)
{
    Game *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMultiTouch(_enabled);
}
DEFINE_PRIM(hx_Game_setMultiTouch, 2);

// DECL: void setViewport(const Rectangle& viewport);
void hx_Game_setViewport(value thisObj, value viewport)
{
    Game *_thisObj;
    Rectangle *_viewport;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(viewport, _viewport);
    _thisObj->setViewport(*_viewport);
}
DEFINE_PRIM(hx_Game_setViewport, 2);

// DECL: static void setVsync(bool enable);
void hx_Game_static_setVsync(value enable)
{
    bool _enable = val_get_bool(enable);
    Game::setVsync(_enable);
}
DEFINE_PRIM(hx_Game_static_setVsync, 1);

// DECL: virtual void touchEvent(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex);
// void hx_Game_touchEvent(value thisObj, value evt, value x, value y, value contactIndex)
// {
    // Game *_thisObj;
    // Touch::TouchEvent *_evt;
    // int _x = val_get_int(x);
    // int _y = val_get_int(y);
    // unsigned int _contactIndex = ValueToUint(contactIndex);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(evt, _evt);
    // _thisObj->touchEvent(_evt, _x, _y, _contactIndex);
// }
// DEFINE_PRIM(hx_Game_touchEvent, 5);

// DECL: void unregisterGesture(Gesture::GestureEvent evt);
void hx_Game_unregisterGesture(value thisObj, value evt)
{
    Game *_thisObj;
    Gesture::GestureEvent _evt;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(evt, _evt);
    _thisObj->unregisterGesture(_evt);
}
DEFINE_PRIM(hx_Game_unregisterGesture, 2);

// END
//
