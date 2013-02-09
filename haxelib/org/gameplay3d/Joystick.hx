package org.gameplay3d;

import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.Control_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Joystick : public Control
class Joystick extends Control
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_ListenerWrapper, eventFlags:Int):Void
    {
        hx_Joystick_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static Joystick* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):Joystick
    {
        return Joystick.wrap(hx_Joystick_static_create(id, style.native()));
    }

    // DECL: inline const unsigned int getIndex() const;
    public function getIndex():Int
    {
        return hx_Joystick_getIndex(nativeObject);
    }

    // DECL: inline const Vector2& getInnerRegionSize() const;
    public function getInnerRegionSize():IVector2
    {
        return Vector2.wrap(hx_Joystick_getInnerRegionSize(nativeObject));
    }

    // DECL: inline const Vector2& getOuterRegionSize() const;
    public function getOuterRegionSize():IVector2
    {
        return Vector2.wrap(hx_Joystick_getOuterRegionSize(nativeObject));
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_Joystick_getType(nativeObject);
    }

    // DECL: inline const Vector2& getValue() const;
    public function getValue():IVector2
    {
        return Vector2.wrap(hx_Joystick_getValue(nativeObject));
    }

    // DECL: inline bool isRelative() const;
    public function isRelative():Bool
    {
        return hx_Joystick_isRelative(nativeObject);
    }

    // DECL: inline void setInnerRegionSize(const Vector2& size);
    public function setInnerRegionSize(size:IVector2):Void
    {
        hx_Joystick_setInnerRegionSize(nativeObject, size.native());
    }

    // DECL: inline void setOuterRegionSize(const Vector2& size);
    public function setOuterRegionSize(size:IVector2):Void
    {
        hx_Joystick_setOuterRegionSize(nativeObject, size.native());
    }

    // DECL: inline void setRelative(bool relative);
    public function setRelative(relative:Bool):Void
    {
        hx_Joystick_setRelative(nativeObject, relative);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Joystick_addListener = NativeInterface.loadMember(Joystick, "addListener", 3);
    static var hx_Joystick_static_create = NativeInterface.loadMember(Joystick, "static_create", 2);
    static var hx_Joystick_getIndex = NativeInterface.loadMember(Joystick, "getIndex", 1);
    static var hx_Joystick_getInnerRegionSize = NativeInterface.loadMember(Joystick, "getInnerRegionSize", 1);
    static var hx_Joystick_getOuterRegionSize = NativeInterface.loadMember(Joystick, "getOuterRegionSize", 1);
    static var hx_Joystick_getType = NativeInterface.loadMember(Joystick, "getType", 1);
    static var hx_Joystick_getValue = NativeInterface.loadMember(Joystick, "getValue", 1);
    static var hx_Joystick_isRelative = NativeInterface.loadMember(Joystick, "isRelative", 1);
    static var hx_Joystick_setInnerRegionSize = NativeInterface.loadMember(Joystick, "setInnerRegionSize", 2);
    static var hx_Joystick_setOuterRegionSize = NativeInterface.loadMember(Joystick, "setOuterRegionSize", 2);
    static var hx_Joystick_setRelative = NativeInterface.loadMember(Joystick, "setRelative", 2);
}

// END
