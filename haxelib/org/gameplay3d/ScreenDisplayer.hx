package org.gameplay3d;

import org.gameplay3d.util.Handle;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class ScreenDisplayer : public GameplayObject
class ScreenDisplayer extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: ScreenDisplayer();
    public static function make():ScreenDisplayer
    {
        return new ScreenDisplayer(constructNativeObject());
    }

    // DECL: static void finish();
    public static function finish():Void
    {
        hx_ScreenDisplayer_static_finish();
    }

    // DECL: template <typename T> void run(T* instance, void (T::*method) (void*), void* cookie, unsigned long time);
    public function run(method:Handle->Void, cookie:Handle, time:Int):Void
    {
        var _method:Dynamic->Void =
            function (param:Dynamic)
            {
                method(Handle.wrap(cookie));
            }
        hx_ScreenDisplayer_run(nativeObject, _method, cookie.native(), time);
    }

    // DECL: (none)
    public function complete():Void
    {
        hx_ScreenDisplayer_complete(nativeObject);
    }

    // DECL: static void start(const char* function, unsigned long time);
    public static function start(_function:String, time:Int):Void
    {
        hx_ScreenDisplayer_static_start(_function, time);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: ScreenDisplayer();
    static function constructNativeObject():Dynamic
    {
        return hx_ScreenDisplayer_Construct();
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_ScreenDisplayer_Construct = NativeInterface.loadMember(ScreenDisplayer, "Construct", 0);
    static var hx_ScreenDisplayer_static_finish = NativeInterface.loadMember(ScreenDisplayer, "static_finish", 0);
    static var hx_ScreenDisplayer_run = NativeInterface.loadMember(ScreenDisplayer, "run", 4);
    static var hx_ScreenDisplayer_complete = NativeInterface.loadMember(ScreenDisplayer, "complete", 1);
    static var hx_ScreenDisplayer_static_start = NativeInterface.loadMember(ScreenDisplayer, "static_start", 2);
}

// END
