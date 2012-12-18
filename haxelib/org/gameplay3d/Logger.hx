package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Logger : public GameplayObject
class Logger extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static bool isEnabled(Level level);
    public static function isEnabled(level:Int):Bool
    {
        return hx_Logger_static_isEnabled(level);
    }

    // DECL: static void log(Level level, const char* message, ...);
    public static function log(level:Int, message:String):Void
    {
        hx_Logger_static_log(level, message);
    }

    // DECL: static void set(Level level, const char* logFunction);
    public static function set_Int_Str(level:Int, logFunction:String):Void
    {
        hx_Logger_static_set_Int_Str(level, logFunction);
    }

    // DECL: static void set(Level level, void (*logFunction) (Level, const char*));
    public static function set_Int_Func(level:Int, logFunction:Int->String->Void):Void
    {
        hx_Logger_static_set_Int_Func(level, logFunction);
    }

    // DECL: static void setEnabled(Level level, bool enabled);
    public static function setEnabled(level:Int, enabled:Bool):Void
    {
        hx_Logger_static_setEnabled(level, enabled);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Logger_static_isEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_Logger_static_isEnabled", 1);
    static var hx_Logger_static_log:Dynamic = cpp.Lib.load("gameplay", "hx_Logger_static_log", 2);
    static var hx_Logger_static_set_Int_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Logger_static_set_Int_Str", 2);
    static var hx_Logger_static_set_Int_Func:Dynamic = cpp.Lib.load("gameplay", "hx_Logger_static_set_Int_Func", 2);
    static var hx_Logger_static_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_Logger_static_setEnabled", 2);
}

// END
