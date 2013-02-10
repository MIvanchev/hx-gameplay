package org.gameplay3d;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

import org.gameplay3d.immutable.ITheme_SideRegions;

typedef Theme_Margin = Theme_SideRegions;
typedef Theme_Border = Theme_SideRegions;
typedef Theme_Padding = Theme_SideRegions;

// DECL: struct SideRegions : public GameplayObject
class Theme_SideRegions extends GameplayObject implements ITheme_SideRegions
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var top(get_top, set_top):Float;
    public var left(get_left, set_left):Float;
    public var bottom(get_bottom, set_bottom):Float;
    public var right(get_right, set_right):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _empty:Theme_SideRegions;

    // DECL: SideRegions() : top(0), bottom(0), left(0), right(0) {}
    public static function make():Theme_SideRegions
    {
        return new Theme_SideRegions(constructNativeObject());
    }

    // DECL: static const SideRegions& empty();
    public static function empty():ITheme_SideRegions
    {
        return Macros.impersonateResult(_empty, hx_Theme_SideRegions_static_empty());
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

    static var hx_Theme_SideRegions_Construct = NativeInterface.loadMember(Theme_SideRegions, "Construct", 0);
    static var hx_Theme_SideRegions_static_empty = NativeInterface.loadMember(Theme_SideRegions, "static_empty", 0);
    static var hx_Theme_SideRegions_property_top_get = NativeInterface.loadMember(Theme_SideRegions, "property_top_get", 1);
    static var hx_Theme_SideRegions_property_top_set = NativeInterface.loadMember(Theme_SideRegions, "property_top_set", 2);
    static var hx_Theme_SideRegions_property_left_get = NativeInterface.loadMember(Theme_SideRegions, "property_left_get", 1);
    static var hx_Theme_SideRegions_property_left_set = NativeInterface.loadMember(Theme_SideRegions, "property_left_set", 2);
    static var hx_Theme_SideRegions_property_bottom_get = NativeInterface.loadMember(Theme_SideRegions, "property_bottom_get", 1);
    static var hx_Theme_SideRegions_property_bottom_set = NativeInterface.loadMember(Theme_SideRegions, "property_bottom_set", 2);
    static var hx_Theme_SideRegions_property_right_get = NativeInterface.loadMember(Theme_SideRegions, "property_right_get", 1);
    static var hx_Theme_SideRegions_property_right_set = NativeInterface.loadMember(Theme_SideRegions, "property_right_set", 2);
}

// END
