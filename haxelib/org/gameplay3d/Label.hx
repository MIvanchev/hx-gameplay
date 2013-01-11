package org.gameplay3d;
import org.gameplay3d.wrapper.Control_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Label : public Control
class Label extends Control
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_ListenerWrapper, eventFlags:Int):Void
    {
        hx_Label_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static Label* create(const char*id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):Label
    {
        return Label.wrap(hx_Label_static_create(id, style.native()));
    }

    // DECL: const char* getText();
    public function getText():String
    {
        return hx_Label_getText(nativeObject);
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_Label_getType(nativeObject);
    }

    // DECL: void setText(const char* text);
    public function setText(text:String):Void
    {
        hx_Label_setText(nativeObject, text);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Label_addListener:Dynamic = cpp.Lib.load("gameplay", "hx_Label_addListener", 3);
    static var hx_Label_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Label_static_create", 2);
    static var hx_Label_getText:Dynamic = cpp.Lib.load("gameplay", "hx_Label_getText", 1);
    static var hx_Label_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Label_getType", 1);
    static var hx_Label_setText:Dynamic = cpp.Lib.load("gameplay", "hx_Label_setText", 2);
}

// END
