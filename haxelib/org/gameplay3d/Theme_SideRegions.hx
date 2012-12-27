package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

typedef Theme_Margin = Theme_SideRegions;
typedef Theme_Border = Theme_SideRegions;
typedef Theme_Padding = Theme_SideRegions;

// DECL: struct SideRegions : public GameplayObject
class Theme_SideRegions extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var top(get, set):Float;
    public var left(get, set):Float;
    public var bottom(get, set):Float;
    public var right(get, set):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: SideRegions() : top(0), bottom(0), left(0), right(0) {}
    public static function make():Theme_SideRegions
    {
        return new Theme_SideRegions(constructNativeObject());
    }

    // DECL: static const SideRegions& empty();
    public static function empty():Theme_SideRegions
    {
        return Theme_SideRegions.wrap(hx_Theme_SideRegions_static_empty());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: SideRegions() : top(0), bottom(0), left(0), right(0) {}
    static function constructNativeObject():Dynamic
    {
        return hx_Theme_SideRegions_Construct();
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_top():Float
    {
        return hx_Theme_SideRegions_property_top_get(nativeObject);
    }

    function set_top(value:Float):Float
    {
        return hx_Theme_SideRegions_property_top_set(nativeObject, value);
    }

    function get_left():Float
    {
        return hx_Theme_SideRegions_property_left_get(nativeObject);
    }

    function set_left(value:Float):Float
    {
        return hx_Theme_SideRegions_property_left_set(nativeObject, value);
    }

    function get_bottom():Float
    {
        return hx_Theme_SideRegions_property_bottom_get(nativeObject);
    }

    function set_bottom(value:Float):Float
    {
        return hx_Theme_SideRegions_property_bottom_set(nativeObject, value);
    }

    function get_right():Float
    {
        return hx_Theme_SideRegions_property_right_get(nativeObject);
    }

    function set_right(value:Float):Float
    {
        return hx_Theme_SideRegions_property_right_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Theme_SideRegions_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_Construct", 0);
    static var hx_Theme_SideRegions_static_empty:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_static_empty", 0);
    static var hx_Theme_SideRegions_property_top_get:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_top_get", 1);
    static var hx_Theme_SideRegions_property_top_set:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_top_set", 2);
    static var hx_Theme_SideRegions_property_left_get:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_left_get", 1);
    static var hx_Theme_SideRegions_property_left_set:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_left_set", 2);
    static var hx_Theme_SideRegions_property_bottom_get:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_bottom_get", 1);
    static var hx_Theme_SideRegions_property_bottom_set:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_bottom_set", 2);
    static var hx_Theme_SideRegions_property_right_get:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_right_get", 1);
    static var hx_Theme_SideRegions_property_right_set:Dynamic = cpp.Lib.load("gameplay", "hx_Theme_SideRegions_property_right_set", 2);
}

// END
