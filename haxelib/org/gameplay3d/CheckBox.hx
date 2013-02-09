package org.gameplay3d;

import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.Control_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class CheckBox : public Button
class CheckBox extends Button
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_ListenerWrapper, eventFlags:Int):Void
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

    static var hx_CheckBox_addListener = NativeInterface.loadMember(CheckBox, "addListener", 3);
    static var hx_CheckBox_static_create = NativeInterface.loadMember(CheckBox, "static_create", 2);
    static var hx_CheckBox_getImageSize = NativeInterface.loadMember(CheckBox, "getImageSize", 1);
    static var hx_CheckBox_getType = NativeInterface.loadMember(CheckBox, "getType", 1);
    static var hx_CheckBox_isChecked = NativeInterface.loadMember(CheckBox, "isChecked", 1);
    static var hx_CheckBox_setChecked = NativeInterface.loadMember(CheckBox, "setChecked", 2);
    static var hx_CheckBox_setImageSize = NativeInterface.loadMember(CheckBox, "setImageSize", 3);
}

// END
