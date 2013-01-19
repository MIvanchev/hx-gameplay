package org.gameplay3d;

import org.gameplay3d.intern.NativeOutParameter;
import org.gameplay3d.util.Handle;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Platform : public GameplayObject
class Platform extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Platform* create(Game* game, void* attachToWindow = NULL);
    public static function create(game:Game, attachToWindow:Handle = null):Platform
    {
        return Platform.wrap(hx_Platform_static_create(game.native(), attachToWindow.native()));
    }

    // DECL: int enterMessagePump();
    public function enterMessagePump():Int
    {
        return hx_Platform_enterMessagePump(nativeObject);
    }

    // DECL: static void gamepadEventConnectedInternal(GamepadHandle handle, unsigned int buttonCount, unsigned int joystickCount, unsigned int triggerCount,
    public static function gamepadEventConnectedInternal(handle:Handle, buttonCount:Int, joystickCount:Int, triggerCount:Int, vendorId:Int, productId:Int, vendorString:String, productString:String):Void
    {
        hx_Platform_static_gamepadEventConnectedInternal(handle.native(), buttonCount, joystickCount, triggerCount, vendorId, productId, vendorString, productString);
    }

    // DECL: static void gamepadEventDisconnectedInternal(GamepadHandle handle);
    public static function gamepadEventDisconnectedInternal(handle:Handle):Void
    {
        hx_Platform_static_gamepadEventDisconnectedInternal(handle.native());
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

    // DECL: static void touchEventInternal(Touch::TouchEvent evt, int x, int y, unsigned int contactIndex);
    public static function touchEventInternal(evt:Int, x:Int, y:Int, contactIndex:Int):Void
    {
        hx_Platform_static_touchEventInternal(evt, x, y, contactIndex);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Platform_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_create", 2);
    static var hx_Platform_enterMessagePump:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_enterMessagePump", 1);
    static var hx_Platform_static_gamepadEventConnectedInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_gamepadEventConnectedInternal", -1);
    static var hx_Platform_static_gamepadEventDisconnectedInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_gamepadEventDisconnectedInternal", 1);
    static var hx_Platform_static_keyEventInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_keyEventInternal", 2);
    static var hx_Platform_static_mouseEventInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_mouseEventInternal", 4);
    static var hx_Platform_static_touchEventInternal:Dynamic = cpp.Lib.load("gameplay", "hx_Platform_static_touchEventInternal", 4);
}

// END
