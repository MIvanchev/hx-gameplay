package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Gamepad : public GameplayObject
class Gamepad extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void draw();
    public function draw():Void
    {
        hx_Gamepad_draw(nativeObject);
    }

    // DECL: unsigned int getButtonCount() const;
    public function getButtonCount():Int
    {
        return hx_Gamepad_getButtonCount(nativeObject);
    }

    // DECL: ButtonState getButtonState(unsigned int buttonId) const;
    public function getButtonState(buttonId:Int):Int
    {
        return hx_Gamepad_getButtonState(nativeObject, buttonId);
    }

    // DECL: Form* getForm() const;
    public function getForm():Form
    {
        return Form.wrap(hx_Gamepad_getForm(nativeObject));
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Gamepad_getId(nativeObject);
    }

    // DECL: void getJoystickAxisValues(unsigned int joystickId, Vector2* outValues) const;
    public function getJoystickAxisValues(joystickId:Int, outValues:Vector2):Void
    {
        hx_Gamepad_getJoystickAxisValues(nativeObject, joystickId, outValues.native());
    }

    // DECL: float getJoystickAxisX(unsigned int joystickId) const;
    public function getJoystickAxisX(joystickId:Int):Float
    {
        return hx_Gamepad_getJoystickAxisX(nativeObject, joystickId);
    }

    // DECL: float getJoystickAxisY(unsigned int joystickId) const;
    public function getJoystickAxisY(joystickId:Int):Float
    {
        return hx_Gamepad_getJoystickAxisY(nativeObject, joystickId);
    }

    // DECL: unsigned int getJoystickCount() const;
    public function getJoystickCount():Int
    {
        return hx_Gamepad_getJoystickCount(nativeObject);
    }

    // DECL: bool isJoystickActive(unsigned int joystickId) const;
    public function isJoystickActive(joystickId:Int):Bool
    {
        return hx_Gamepad_isJoystickActive(nativeObject, joystickId);
    }

    // DECL: bool isVirtual() const;
    public function isVirtual():Bool
    {
        return hx_Gamepad_isVirtual(nativeObject);
    }

    // DECL: void update(float elapsedTime);
    public function update(elapsedTime:Float):Void
    {
        hx_Gamepad_update(nativeObject, elapsedTime);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Gamepad_draw:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_draw", 1);
    static var hx_Gamepad_getButtonCount:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getButtonCount", 1);
    static var hx_Gamepad_getButtonState:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getButtonState", 2);
    static var hx_Gamepad_getForm:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getForm", 1);
    static var hx_Gamepad_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getId", 1);
    static var hx_Gamepad_getJoystickAxisValues:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getJoystickAxisValues", 3);
    static var hx_Gamepad_getJoystickAxisX:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getJoystickAxisX", 2);
    static var hx_Gamepad_getJoystickAxisY:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getJoystickAxisY", 2);
    static var hx_Gamepad_getJoystickCount:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getJoystickCount", 1);
    static var hx_Gamepad_isJoystickActive:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_isJoystickActive", 2);
    static var hx_Gamepad_isVirtual:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_isVirtual", 1);
    static var hx_Gamepad_update:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_update", 2);
}

// END
