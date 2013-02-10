package org.gameplay3d;

import org.gameplay3d.immutable.ITheme_UVs;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: struct UVs : public GameplayObject
class Theme_UVs extends GameplayObject implements ITheme_UVs
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var u1(get, set):Float;
    public var v1(get, set):Float;
    public var u2(get, set):Float;
    public var v2(get, set):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _empty:Theme_UVs;

    // DECL: UVs();
    public static function make():Theme_UVs
    {
        return new Theme_UVs(constructNativeObject());
    }

    // DECL: UVs(float u1, float v1, float u2, float v2);
    public static function make_FltX4(u1, v1, u2, v2):Theme_UVs
    {
        return new Theme_UVs(constructNativeObject_FltX4(u1, v1, u2, v2));
    }

    // DECL: static const UVs& empty();
    public static function empty():ITheme_UVs
    {
        return Macros.impersonateResult(_empty, hx_Theme_UVs_static_empty());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: UVs();
    static function constructNativeObject():Dynamic
    {
        return hx_Theme_UVs_Construct();
    }

    // DECL: UVs(float u1, float v1, float u2, float v2);
    static function constructNativeObject_FltX4(u1:Float, v1:Float, u2:Float, v2:Float):Dynamic
    {
        return hx_Theme_UVs_Construct_FltX4(u1, v1, u2, v2);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_u1():Float
    {
        return hx_Theme_UVs_property_u1_get(nativeObject);
    }

    function set_u1(value:Float):Float
    {
        return hx_Theme_UVs_property_u1_set(nativeObject, value);
    }

    function get_v1():Float
    {
        return hx_Theme_UVs_property_v1_get(nativeObject);
    }

    function set_v1(value:Float):Float
    {
        return hx_Theme_UVs_property_v1_set(nativeObject, value);
    }

    function get_u2():Float
    {
        return hx_Theme_UVs_property_u2_get(nativeObject);
    }

    function set_u2(value:Float):Float
    {
        return hx_Theme_UVs_property_u2_set(nativeObject, value);
    }

    function get_v2():Float
    {
        return hx_Theme_UVs_property_v2_get(nativeObject);
    }

    function set_v2(value:Float):Float
    {
        return hx_Theme_UVs_property_v2_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Theme_UVs_Construct = NativeInterface.loadMember(Theme_UVs, "Construct", 0);
    static var hx_Theme_UVs_Construct_FltX4 = NativeInterface.loadMember(Theme_UVs, "Construct_FltX4", 4);
    static var hx_Theme_UVs_static_empty = NativeInterface.loadMember(Theme_UVs, "static_empty", 0);
    static var hx_Theme_UVs_property_u1_get = NativeInterface.loadMember(Theme_UVs, "property_u1_get", 1);
    static var hx_Theme_UVs_property_u1_set = NativeInterface.loadMember(Theme_UVs, "property_u1_set", 2);
    static var hx_Theme_UVs_property_v1_get = NativeInterface.loadMember(Theme_UVs, "property_v1_get", 1);
    static var hx_Theme_UVs_property_v1_set = NativeInterface.loadMember(Theme_UVs, "property_v1_set", 2);
    static var hx_Theme_UVs_property_u2_get = NativeInterface.loadMember(Theme_UVs, "property_u2_get", 1);
    static var hx_Theme_UVs_property_u2_set = NativeInterface.loadMember(Theme_UVs, "property_u2_set", 2);
    static var hx_Theme_UVs_property_v2_get = NativeInterface.loadMember(Theme_UVs, "property_v2_get", 1);
    static var hx_Theme_UVs_property_v2_set = NativeInterface.loadMember(Theme_UVs, "property_v2_set", 2);
}

// END
