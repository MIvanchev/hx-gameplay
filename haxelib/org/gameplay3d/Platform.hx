package org.gameplay3d;

import dk.bluewolf.gameplay.Handle;
import dk.bluewolf.gameplay.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Platform : public GameplayObject
class Platform extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

      // DECL: static bool canExit();
    public static function canExit():Bool
    {
        return hx_Platform_static_canExit();
    }

    // DECL: static Platform* create(Game* game, void* attachToWindow = NULL);
    public static function create(game:Game, attachToWindow:Handle = null):Platform
    {
        return Platform.wrap(hx_Platform_static_create(game.native(), attachToWindow));
    }

    // DECL: static void displayKeyboard(bool display);
    public static function displayKeyboard(display:Bool):Void
    {
        hx_Platform_static_displayKeyboard(display);
    }

    // DECL: int enterMessagePump();
    public function enterMessagePump():Int
    {
        return hx_Platform_enterMessagePump(nativeObject);
    }

    // DECL: static double getAbsoluteTime();
    public static function getAbsoluteTime():Float
    {
        return hx_Platform_static_getAbsoluteTime();
    }

    // DECL: static void getAccelerometerValues(float* pitch, float* roll);
    public static function getAccelerometerValues(pitch:OutParameter<Float>, roll:OutParameter<Float>):Void
    {
        var _pitch = new NativeOutParameter();
        var _roll = new NativeOutParameter();
        hx_Platform_static_getAccelerometerValues(_pitch.native(), _roll.native());
        pitch.value = _pitch.value;
        roll.value = _roll.value;
    }

    // DECL: static unsigned int getDisplayHeight();
    public static function getDisplayHeight():Int
    {
        return hx_Platform_static_getDisplayHeight();
    }

    // DECL: static unsigned int getDisplayWidth();
    public static function getDisplayWidth():Int
    {
        return hx_Platform_static_getDisplayWidth();
    }

    // DECL: static unsigned int getGamepadButtonCount(unsigned int gamepadHandle);
    public static function getGamepadButtonCount(gamepadHandle:Int):Int
    {
        return hx_Platform_static_getGamepadButtonCount(gamepadHandle);
    }

    // DECL: static bool getGamepadButtonState(unsigned int gamepadHandle, unsigned int buttonIndex);
    public static function getGamepadButtonState(gamepadHandle:Int, buttonIndex:Int):Bool
    {
        return hx_Platform_static_getGamepadButtonState(gamepadHandle, buttonIndex);
    }

    // DECL: static const char* getGamepadId(unsigned int gamepadHandle);
    public static function getGamepadId(gamepadHandle:Int):String
    {
        return hx_Platform_static_getGamepadId(gamepadHandle);
    }

    // DECL: static void getGamepadJoystickAxisValues(unsigned int gamepadHandle, unsigned int joystickIndex, Vector2* outValue);
    public static function getGamepadJoystickAxisValues(gamepadHandle:Int, joystickIndex:Int, outValue:Vector2):Void
    {
        hx_Platform_static_getGamepadJoystickAxisValues(gamepadHandle, joystickIndex, outValue.native());
    }

    // DECL: static float getGamepadJoystickAxisX(unsigned int gamepadHandle, unsigned int joystickIndex);
    public static function getGamepadJoystickAxisX(gamepadHandle:Int, joystickIndex:Int):Float
    {
        return hx_Platform_static_getGamepadJoystickAxisX(gamepadHandle, joystickIndex);
    }

    // DECL: static float getGamepadJoystickAxisY(unsigned int gamepadHandle, unsigned int joystickIndex);
    public static function getGamepadJoystickAxisY(gamepadHandle:Int, joystickIndex:Int):Float
    {
        return hx_Platform_static_getGamepadJoystickAxisY(gamepadHandle, joystickIndex);
    }

    // DECL: static unsigned int getGamepadJoystickCount(unsigned int gamepadHandle);
    public static function getGamepadJoystickCount(gamepadHandle:Int):Int
    {
        return hx_Platform_static_getGamepadJoystickCount(gamepadHandle);
    }

    // DECL: static unsigned int getGamepadTriggerCount(unsigned int gamepadHandle);
    public static function getGamepadTriggerCount(gamepadHandle:Int):Int
    {
        return hx_Platform_static_getGamepadTriggerCount(gamepadHandle);
    }

    // DECL: static float getGamepadTriggerValue(unsigned int gamepadHandle, unsigned int triggerIndex);
    public static function getGamepadTriggerValue(gamepadHandle:Int, triggerIndex:Int):Float
    {
        return hx_Platform_static_getGamepadTriggerValue(gamepadHandle, triggerIndex);
    }

    // DECL: static unsigned int getGamepadsConnected();
    public static function getGamepadsConnected():Int
    {
        return hx_Platform_static_getGamepadsConnected();
    }

    // DECL: static bool hasMouse();
    public static function hasMouse():Bool
    {
        return hx_Platform_static_hasMouse();
    }

    // DECL: static bool isCursorVisible();
    public static function isCursorVisible():Bool
    {
        return hx_Platform_static_isCursorVisible();
    }

    // DECL: static bool isGamepadConnected(unsigned int gamepadHandle);
    public static function isGamepadConnected(gamepadHandle:Int):Bool
    {
        return hx_Platform_static_isGamepadConnected(gamepadHandle);
    }

    // DECL: static bool isGamepadJoystickActive(unsigned int gamepadHandle, unsigned int joystickIndex);
    public static function isGamepadJoystickActive(gamepadHandle:Int, joystickIndex:Int):Bool
    {
        return hx_Platform_static_isGamepadJoystickActive(gamepadHandle, joystickIndex);
    }

    // DECL: static bool isGestureRegistered(Gesture::GestureEvent evt);
    public static function isGestureRegistered(evt:Int):Bool
    {
        return hx_Platform_static_isGestureRegistered(evt);
    }

    // DECL: static bool isGestureSupported(Gesture::GestureEvent evt);
    public static function isGestureSupported(evt:Int):Bool
    {
        return hx_Platform_static_isGestureSupported(evt);
    }

    // DECL: static bool isMouseCaptured();
    public static function isMouseCaptured():Bool
    {
        return hx_Platform_static_isMouseCaptured();
    }

    // DECL: static bool isMultiTouch();
    public static function isMultiTouch():Bool
    {
        return hx_Platform_static_isMultiTouch();
    }

    // DECL: static bool isVsync();
    public static function isVsync():Bool
    {
        return hx_Platform_static_isVsync();
    }

    // DECL: static void keyEventInternal(Keyboard::KeyEvent evt, int key);
    public static function keyEventInternal(evt:Int, key:Int):Void
    {
        hx_Platform_static_keyEventInternal(evt, key);
    }

    // DECL: static bool mouseEventInternal(Mouse::MouseEvent evt, int x, int y, int wheelDelta);
    public static function mouseEventInternal(evt:Int, x:Int, y:Int, wheelDelta:Int):Bool
    {
        return hx_Platform_static_mouseEventInternal(evt, x, y, wheelDelta);
    }

    // DECL: static void registerGesture(Gesture::GestureEvent evt);
    public static function registerGesture(evt:Int):Void
    {
        hx_Platform_static_registerGesture(evt);
    }

    // DECL: static void setAbsoluteTime(double time);
    public static function setAbsoluteTime(time:Float):Void
    {
        hx_Platform_static_setAbsoluteTime(time);
    }

    // DECL: static void setCursorVisible(bool visible);
    public static function setCursorVisible(visible:Bool):Void
    {
        hx_Platform_static_setCursorVisible(visible);
    }

    // DECL: static void setMouseCaptured(bool captured);
    public static function setMouseCaptured(captured:Bool):Void
    {
        hx_Platform_static_setMouseCaptured(captured);
    }

    // DECL: static void setMultiTouch(bool enabled);
    public static function setMultiTouch(enabled:Bool):Void
    {
        hx_Platform_static_setMultiTouch(enabled);
    }

    // DECL: static void setVsync(bool enable);
    public static function setVsync(enable:Bool):Void
    {
        hx_Platform_static_setVsync(enable);
    }

    // DECL: static void signalShutdown();
    public static function signalShutdown():Void
    {
        hx_Platform_static_signalShutdown();
    }

    // DECL: static void sleep(long ms);
    public static function sleep(ms:Int):Void
    {
        hx_Platform_static_sleep(ms);
    }

    // DECL: static void swapBuffers();
    public static function swapBuffers():Void
    {
        hx_Platform_static_swapBuffers();
    }

    // DECL: static void touchEventInternal(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex);
    public static function touchEventInternal(evt:Int, x:Int, y:Int, contactIndex:Int):Void
    {
        hx_Platform_static_touchEventInternal(evt, x, y, contactIndex);
    }

    // DECL: static void unregisterGesture(Gesture::GestureEvent evt);
    public static function unregisterGesture(evt:Int):Void
    {
        hx_Platform_static_unregisterGesture(evt);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Platform_static_canExit:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_canExit", 0);
    static var hx_Platform_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_create", 2);
    static var hx_Platform_static_displayKeyboard:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_displayKeyboard", 1);
    static var hx_Platform_enterMessagePump:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_enterMessagePump", 1);
    static var hx_Platform_static_getAbsoluteTime:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getAbsoluteTime", 0);
    static var hx_Platform_static_getAccelerometerValues:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getAccelerometerValues", 2);
    static var hx_Platform_static_getDisplayHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getDisplayHeight", 0);
    static var hx_Platform_static_getDisplayWidth:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getDisplayWidth", 0);
    static var hx_Platform_static_getGamepadButtonCount:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadButtonCount", 1);
    static var hx_Platform_static_getGamepadButtonState:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadButtonState", 2);
    static var hx_Platform_static_getGamepadId:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadId", 1);
    static var hx_Platform_static_getGamepadJoystickAxisValues:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadJoystickAxisValues", 3);
    static var hx_Platform_static_getGamepadJoystickAxisX:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadJoystickAxisX", 2);
    static var hx_Platform_static_getGamepadJoystickAxisY:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadJoystickAxisY", 2);
    static var hx_Platform_static_getGamepadJoystickCount:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadJoystickCount", 1);
    static var hx_Platform_static_getGamepadTriggerCount:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadTriggerCount", 1);
    static var hx_Platform_static_getGamepadTriggerValue:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadTriggerValue", 2);
    static var hx_Platform_static_getGamepadsConnected:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_getGamepadsConnected", 0);
    static var hx_Platform_static_hasMouse:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_hasMouse", 0);
    static var hx_Platform_static_isCursorVisible:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isCursorVisible", 0);
    static var hx_Platform_static_isGamepadConnected:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isGamepadConnected", 1);
    static var hx_Platform_static_isGamepadJoystickActive:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isGamepadJoystickActive", 2);
    static var hx_Platform_static_isGestureRegistered:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isGestureRegistered", 1);
    static var hx_Platform_static_isGestureSupported:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isGestureSupported", 1);
    static var hx_Platform_static_isMouseCaptured:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isMouseCaptured", 0);
    static var hx_Platform_static_isMultiTouch:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isMultiTouch", 0);
    static var hx_Platform_static_isVsync:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_isVsync", 0);
    static var hx_Platform_static_keyEventInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_keyEventInternal", 2);
    static var hx_Platform_static_mouseEventInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_mouseEventInternal", 4);
    static var hx_Platform_static_registerGesture:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_registerGesture", 1);
    static var hx_Platform_static_setAbsoluteTime:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_setAbsoluteTime", 1);
    static var hx_Platform_static_setCursorVisible:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_setCursorVisible", 1);
    static var hx_Platform_static_setMouseCaptured:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_setMouseCaptured", 1);
    static var hx_Platform_static_setMultiTouch:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_setMultiTouch", 1);
    static var hx_Platform_static_setVsync:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_setVsync", 1);
    static var hx_Platform_static_signalShutdown:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_signalShutdown", 0);
    static var hx_Platform_static_sleep:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_sleep", 1);
    static var hx_Platform_static_swapBuffers:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_swapBuffers", 0);
    static var hx_Platform_static_touchEventInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_touchEventInternal", 4);
    static var hx_Platform_static_unregisterGesture:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_unregisterGesture", 1);
}

// END
