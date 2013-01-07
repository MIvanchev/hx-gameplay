package org.gameplay3d;

import org.gameplay3d.immutable.IVector2;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class CheckBox : public Button
class CheckBox extends Button
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_Listener, eventFlags:Int):Void
    {
        hx_CheckBox_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static CheckBox* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):CheckBox
    {
        return CheckBox.wrap(hx_CheckBox_static_create(id, style.native()));
    }

    // DECL: const Vector2& getImageSize() const;
    public function getImageSize():IVector2
    {
        return Vector2.wrap(hx_CheckBox_getImageSize(nativeObject));
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_CheckBox_getType(nativeObject);
    }

    // DECL: bool isChecked();
    public function isChecked():Bool
    {
        return hx_CheckBox_isChecked(nativeObject);
    }

    // DECL: void setChecked(bool checked);
    public function setChecked(checked:Bool):Void
    {
        hx_CheckBox_setChecked(nativeObject, checked);
    }

    // DECL: void setImageSize(float width, float height);
    public function setImageSize(width:Float, height:Float):Void
    {
        hx_CheckBox_setImageSize(nativeObject, width, height);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_CheckBox_addListener:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_addListener", 3);
    static var hx_CheckBox_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_static_create", 2);
    static var hx_CheckBox_getImageSize:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_getImageSize", 1);
    static var hx_CheckBox_getType:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_getType", 1);
    static var hx_CheckBox_isChecked:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_isChecked", 1);
    static var hx_CheckBox_setChecked:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_setChecked", 2);
    static var hx_CheckBox_setImageSize:Dynamic = cpp.Lib.load("gameplay", "hx_CheckBox_setImageSize", 3);
}

// END
