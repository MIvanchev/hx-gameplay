package org.gameplay3d;

import org.gameplay3d.wrapper.Control_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Slider : public Label
class Slider extends Label
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_ListenerWrapper, eventFlags:Int):Void
    {
        hx_Slider_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static Slider* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):Slider
    {
        return Slider.wrap(hx_Slider_static_create(id, style.native()));
    }

    // DECL: float getMax() const;
    public function getMax():Float
    {
        return hx_Slider_getMax(nativeObject);
    }

    // DECL: float getMin() const;
    public function getMin():Float
    {
        return hx_Slider_getMin(nativeObject);
    }

    // DECL: float getStep() const;
    public function getStep():Float
    {
        return hx_Slider_getStep(nativeObject);
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_Slider_getType(nativeObject);
    }

    // DECL: float getValue() const;
    public function getValue():Float
    {
        return hx_Slider_getValue(nativeObject);
    }

    // DECL: Font::Justify getValueTextAlignment() const;
    public function getValueTextAlignment():Int
    {
        return hx_Slider_getValueTextAlignment(nativeObject);
    }

    // DECL: unsigned int getValueTextPrecision() const;
    public function getValueTextPrecision():Int
    {
        return hx_Slider_getValueTextPrecision(nativeObject);
    }

    // DECL: bool isValueTextVisible() const;
    public function isValueTextVisible():Bool
    {
        return hx_Slider_isValueTextVisible(nativeObject);
    }

    // DECL: void setMax(float max);
    public function setMax(max:Float):Void
    {
        hx_Slider_setMax(nativeObject, max);
    }

    // DECL: void setMin(float min);
    public function setMin(min:Float):Void
    {
        hx_Slider_setMin(nativeObject, min);
    }

    // DECL: void setStep(float step);
    public function setStep(step:Float):Void
    {
        hx_Slider_setStep(nativeObject, step);
    }

    // DECL: void setValue(float value);
    public function setValue(value:Float):Void
    {
        hx_Slider_setValue(nativeObject, value);
    }

    // DECL: void setValueTextAlignment(Font::Justify alignment);
    public function setValueTextAlignment(alignment:Int):Void
    {
        hx_Slider_setValueTextAlignment(nativeObject, alignment);
    }

    // DECL: void setValueTextPrecision(unsigned int precision);
    public function setValueTextPrecision(precision:Int):Void
    {
        hx_Slider_setValueTextPrecision(nativeObject, precision);
    }

    // DECL: void setValueTextVisible(bool visible);
    public function setValueTextVisible(visible:Bool):Void
    {
        hx_Slider_setValueTextVisible(nativeObject, visible);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Slider_addListener:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_addListener", 3);
    static var hx_Slider_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_static_create", 2);
    static var hx_Slider_getMax:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getMax", 1);
    static var hx_Slider_getMin:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getMin", 1);
    static var hx_Slider_getStep:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getStep", 1);
    static var hx_Slider_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getType", 1);
    static var hx_Slider_getValue:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getValue", 1);
    static var hx_Slider_getValueTextAlignment:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getValueTextAlignment", 1);
    static var hx_Slider_getValueTextPrecision:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_getValueTextPrecision", 1);
    static var hx_Slider_isValueTextVisible:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_isValueTextVisible", 1);
    static var hx_Slider_setMax:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setMax", 2);
    static var hx_Slider_setMin:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setMin", 2);
    static var hx_Slider_setStep:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setStep", 2);
    static var hx_Slider_setValue:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setValue", 2);
    static var hx_Slider_setValueTextAlignment:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setValueTextAlignment", 2);
    static var hx_Slider_setValueTextPrecision:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setValueTextPrecision", 2);
    static var hx_Slider_setValueTextVisible:Dynamic = cpp.Lib.load("gameplay", "hx_Slider_setValueTextVisible", 2);
}

// END
