package org.gameplay3d;
import org.gameplay3d.wrapper.Control_ListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class TextBox : public Label
class TextBox extends Label
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    override public function addListener(listener:Control_ListenerWrapper, eventFlags:Int):Void
    {
        hx_TextBox_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static TextBox* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):TextBox
    {
        return hx_TextBox_static_create(id, style.native());
    }

    // DECL: int getLastKeypress();
    public function getLastKeypress():Int
    {
        return hx_TextBox_getLastKeypress(nativeObject);
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_TextBox_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_TextBox_addListener = cpp.Lib.load("gameplay", "hx_TextBox_addListener", 3);
    static var hx_TextBox_static_create = cpp.Lib.load("gameplay", "hx_TextBox_static_create", 2);
    static var hx_TextBox_getLastKeypress = cpp.Lib.load("gameplay", "hx_TextBox_getLastKeypress", 1);
    static var hx_TextBox_getType = cpp.Lib.load("gameplay", "hx_TextBox_getType", 1);
}

// END
