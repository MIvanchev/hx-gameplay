package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class TextBox : public Label
class TextBox extends Label
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    public function addListener(listener:Control_Listener, eventFlags:Int):Void
    {
        nativeInterface.hx_TextBox_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: static TextBox* create(const char* id, Theme::Style* style);
    public static function create(id:String, style:Theme_Style):TextBox
    {
        return nativeInterface.hx_TextBox_static_create(id, style.native());
    }

    // DECL: int getLastKeypress();
    public function getLastKeypress():Int
    {
        return nativeInterface.hx_TextBox_getLastKeypress(nativeObject);
    }

    // DECL: const char* getType() const;
    public function getType():String
    {
        return nativeInterface.hx_TextBox_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_TextBox_addListener:Dynamic = cpp.Lib.load("gameplay", "hx_TextBox_addListener", 3);
    static var hx_TextBox_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_TextBox_static_create", 2);
    static var hx_TextBox_getLastKeypress:Dynamic = cpp.Lib.load("gameplay", "hx_TextBox_getLastKeypress", 1);
    static var hx_TextBox_getType:Dynamic = cpp.Lib.load("gameplay", "hx_TextBox_getType", 1);
}

// END
