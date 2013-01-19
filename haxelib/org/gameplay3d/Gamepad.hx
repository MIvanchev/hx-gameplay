package org.gameplay3d;

import org.gameplay3d.immutable.IVector2;

using org.gameplay3d.intern.NativeBinding;
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

    // DECL: Form* getForm() const;
    public function getForm():Form
    {
        return Form.wrap(hx_Gamepad_getForm(nativeObject));
    }

    // DECL: unsigned int getJoystickCount() const;
    public function getJoystickCount():Int
    {
        return hx_Gamepad_getJoystickCount(nativeObject);
    }

    // DECL: void getJoystickValues(unsigned int joystickId, Vector2* outValues) const;
    public function getJoystickValues(joystickId:Int, outValues:Vector2):Void
    {
        hx_Gamepad_getJoystickValues(nativeObject, joystickId, outValues.native());
    }

    // DECL: const unsigned int getProductId() const;
    public function getProductId():Int
    {
        return hx_Gamepad_getProductId(nativeObject);
    }

    // DECL: const char* getProductString() const;
    public function getProductString():String
    {
        return hx_Gamepad_getProductString(nativeObject);
    }

    // DECL: unsigned int getTriggerCount() const;
    public function getTriggerCount():Int
    {
        return hx_Gamepad_getTriggerCount(nativeObject);
    }

    // DECL: float getTriggerValue(unsigned int triggerId) const;
    public function getTriggerValue(triggerId:Int):Float
    {
        return hx_Gamepad_getTriggerValue(nativeObject, triggerId);
    }

    // DECL: const unsigned int getVendorId() const;
    public function getVendorId():Int
    {
        return hx_Gamepad_getVendorId(nativeObject);
    }

    // DECL: const char* getVendorString() const;
    public function getVendorString():String
    {
        return hx_Gamepad_getVendorString(nativeObject);
    }

    // DECL: bool isButtonDown(ButtonMapping button) const;
    public function isButtonDown(button:Int):Bool
    {
        return hx_Gamepad_isButtonDown(nativeObject, button);
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
    static var hx_Gamepad_getForm:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getForm", 1);
    static var hx_Gamepad_getJoystickCount:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getJoystickCount", 1);
    static var hx_Gamepad_getJoystickValues:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getJoystickValues", 3);
    static var hx_Gamepad_getProductId:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getProductId", 1);
    static var hx_Gamepad_getProductString:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getProductString", 1);
    static var hx_Gamepad_getTriggerCount:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getTriggerCount", 1);
    static var hx_Gamepad_getTriggerValue:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getTriggerValue", 2);
    static var hx_Gamepad_getVendorId:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getVendorId", 1);
    static var hx_Gamepad_getVendorString:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_getVendorString", 1);
    static var hx_Gamepad_isButtonDown:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_isButtonDown", 2);
    static var hx_Gamepad_isVirtual:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_isVirtual", 1);
    static var hx_Gamepad_update:Dynamic = cpp.Lib.load("gameplay", "hx_Gamepad_update", 2);
}

// END
