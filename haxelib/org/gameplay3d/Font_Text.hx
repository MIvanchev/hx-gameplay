package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Text : public GameplayObject
class Font_Text extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Text(const char* text);
    public static function make(text:String):Font_Text
    {
        return new Font_Text(constructNativeObject(text));
    }

    // DECL: const char* getText();
    public function getText():String
    {
        return hx_Font_Text_getText(nativeObject);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Text(const char* text);
    static function constructNativeObject(text:String):Dynamic
    {
        return hx_Font_Text_Construct(text);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Font_Text_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Font_Text_Construct", 1);
    static var hx_Font_Text_getText:Dynamic = cpp.Lib.load("gameplay", "hx_Font_Text_getText", 1);
}

// END
