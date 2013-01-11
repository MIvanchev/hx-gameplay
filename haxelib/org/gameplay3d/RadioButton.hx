package org.gameplay3d;

import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.wrapper.Control_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class RadioButton : public Button
class RadioButton extends Button
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_ListenerWrapper, eventFlags:Int):Void
    {
        hx_RadioButton_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static RadioButton* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):RadioButton
    {
        return RadioButton.wrap(hx_RadioButton_static_create(id, style.native()));
    }

    // DECL: const char* getGroupId() const;
    public function getGroupId():String
    {
        return hx_RadioButton_getGroupId(nativeObject);
    }

    // DECL: const Vector2& getImageSize() const;
    public function getImageSize():IVector2
    {
        return Vector2.wrap(hx_RadioButton_getImageSize(nativeObject));
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_RadioButton_getType(nativeObject);
    }

    // DECL: bool isSelected() const;
    public function isSelected():Bool
    {
        return hx_RadioButton_isSelected(nativeObject);
    }

    // DECL: void setGroupId(const char* groupId);
    public function setGroupId(groupId:String):Void
    {
        hx_RadioButton_setGroupId(nativeObject, groupId);
    }

    // DECL: void setImageSize(float width, float height);
    public function setImageSize(width:Float, height:Float):Void
    {
        hx_RadioButton_setImageSize(nativeObject, width, height);
    }

    // DECL: void setSelected(bool selected);
    public function setSelected(selected:Bool):Void
    {
        hx_RadioButton_setSelected(nativeObject, selected);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_RadioButton_addListener:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_addListener", 3);
    static var hx_RadioButton_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_static_create", 2);
    static var hx_RadioButton_getGroupId:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_getGroupId", 1);
    static var hx_RadioButton_getImageSize:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_getImageSize", 1);
    static var hx_RadioButton_getType:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_getType", 1);
    static var hx_RadioButton_isSelected:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_isSelected", 1);
    static var hx_RadioButton_setGroupId:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_setGroupId", 2);
    static var hx_RadioButton_setImageSize:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_setImageSize", 3);
    static var hx_RadioButton_setSelected:Dynamic = cpp.Lib.load("gameplay", "hx_RadioButton_setSelected", 2);
}

// END
