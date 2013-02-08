package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Element
class VertexFormat_Element extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var usage(get_usage, set_usage):Int;
    public var size(get_size, set_size):Int;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Element();
    public static function make():VertexFormat_Element
    {
        return new VertexFormat_Element(constructNativeObject());
    }

    // DECL: Element(Usage usage, unsigned int size);
    public static function make_IntX2(usage:Int, size:Int):VertexFormat_Element
    {
        return new VertexFormat_Element(constructNativeObject_IntX2(usage, size));
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Element();
    static function constructNativeObject():Dynamic
    {
        return hx_VertexFormat_Element_Construct();
    }

    // DECL: Element(Usage usage, unsigned int size);
    static function constructNativeObject_IntX2(usage:Int, size:Int):Dynamic
    {
        return hx_VertexFormat_Element_Construct_IntX2(usage, size);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_usage():Int
    {
        return hx_VertexFormat_Element_property_usage_get(nativeObject);
    }

    function set_usage(value:Int):Int
    {
        return hx_VertexFormat_Element_property_usage_set(nativeObject, value);
    }

    function get_size():Int
    {
        return hx_VertexFormat_Element_property_size_get(nativeObject);
    }

    function set_size(value:Float):Int
    {
        return hx_VertexFormat_Element_property_size_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_VertexFormat_Element_Construct = cpp.Lib.load("gameplay", "hx_VertexFormat_Element_Construct", 0);
    static var hx_VertexFormat_Element_Construct_IntX2 = cpp.Lib.load("gameplay", "hx_VertexFormat_Element_Construct_IntX2", 2);
    static var hx_VertexFormat_Element_property_usage_get = cpp.Lib.load("gameplay", "hx_VertexFormat_Element_property_usage_get", 1);
    static var hx_VertexFormat_Element_property_usage_set = cpp.Lib.load("gameplay", "hx_VertexFormat_Element_property_usage_set", 2);
    static var hx_VertexFormat_Element_property_size_get = cpp.Lib.load("gameplay", "hx_VertexFormat_Element_property_size_get", 1);
    static var hx_VertexFormat_Element_property_size_set = cpp.Lib.load("gameplay", "hx_VertexFormat_Element_property_size_set", 2);
}

// END
