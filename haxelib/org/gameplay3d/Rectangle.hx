package org.gameplay3d;

import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Rectangle : public GameplayObject
class Rectangle extends GameplayObject implements IRectangle
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, set_x):Float;
    public var y(get_y, set_y):Float;
    public var width(get_width, set_width):Float;
    public var height(get_height, set_height):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    static var _empty:Rectangle;

    // DECL: Rectangle();
    public static function make():Rectangle
    {
        return new Rectangle(constructNativeObject());
    }

    // DECL: Rectangle(const Rectangle& copy);
    public static function make_Rct(copy:IRectangle):Rectangle
    {
        return new Rectangle(constructNativeObject_Rct(copy));
    }

    // DECL: Rectangle(float width, float height);
    public static function make_FltX2(width:Float, height:Float):Rectangle
    {
        return new Rectangle(constructNativeObject_FltX2(width, height));
    }

    // DECL: Rectangle(float x, float y, float width, float height);
    public static function make_FltX4(x:Float, y:Float, width:Float, height:Float):Rectangle
    {
        return new Rectangle(constructNativeObject_FltX4(x, y, width, height));
    }

    // DECL: float bottom() const;
    public function bottom():Float
    {
        return hx_Rectangle_bottom(nativeObject);
    }

    // DECL: static void combine(const Rectangle& r1, const Rectangle& r2, Rectangle* dst);
    public static function combine(r1:IRectangle, r2:IRectangle, dst:Rectangle):Void
    {
        hx_Rectangle_static_combine(r1.native(), r2.native(), dst.native());
    }

    // DECL: bool contains(const Rectangle& r) const;
    public function contains_Rct(r:IRectangle):Bool
    {
        return hx_Rectangle_contains_Rct(nativeObject, r.native());
    }

    // DECL: bool contains(float x, float y) const;
    public function contains_FltX2(x:Float, y:Float):Bool
    {
        return hx_Rectangle_contains_FltX2(nativeObject, x, y);
    }

    // DECL: bool contains(float x, float y, float width, float height) const;
    public function contains_FltX4(x:Float, y:Float, width:Float, height:Float):Bool
    {
        return hx_Rectangle_contains_FltX4(nativeObject, x, y, width, height);
    }

    // DECL: static const Rectangle& empty();
    public static function empty():IRectangle
    {
        return Macros.impersonateResult(_empty, hx_Rectangle_static_empty());
    }

    // DECL: void inflate(float horizontalAmount, float verticalAmount);
    public function inflate(horizontalAmount:Float, verticalAmount:Float):Void
    {
        hx_Rectangle_inflate(nativeObject, horizontalAmount, verticalAmount);
    }

    // DECL: bool intersects(const Rectangle& r) const;
    public function intersects_Rct(r:IRectangle):Bool
    {
        return hx_Rectangle_intersects_Rct(nativeObject, r.native());
    }

    // DECL: bool intersects(float x, float y, float width, float height) const;
    public function intersects_FltX4(x:Float, y:Float, width:Float, height:Float):Bool
    {
        return hx_Rectangle_intersects_FltX4(nativeObject, x, y, width, height);
    }

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool
    {
        return hx_Rectangle_isEmpty(nativeObject);
    }

    // DECL: float left() const;
    public function left():Float
    {
        return hx_Rectangle_left(nativeObject);
    }

    // DECL: float right() const;
    public function right():Float
    {
        return hx_Rectangle_right(nativeObject);
    }

    // DECL: void set(const Rectangle& r);
    public function set_Rct(r:IRectangle):Void
    {
        hx_Rectangle_set_Rct(nativeObject, r.native());
    }

    // DECL: void set(float x, float y, float width, float height);
    public function set_FltX4(x:Float, y:Float, width:Float, height:Float):Void
    {
        hx_Rectangle_set_FltX4(nativeObject, x, y, width, height);
    }

    // DECL: void setPosition(float x, float y);
    public function setPosition(x:Float, y:Float):Void
    {
        hx_Rectangle_setPosition(nativeObject, x, y);
    }

    // DECL: float top() const;
    public function top():Float
    {
        return hx_Rectangle_top(nativeObject);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Rectangle();
    static function constructNativeObject():Dynamic
    {
        return hx_Rectangle_Construct();
    }

    // DECL: Rectangle(const Rectangle& copy);
    static function constructNativeObject_Rct(copy:IRectangle):Dynamic
    {
        return hx_Rectangle_Construct_Rct(copy.native());
    }

    // DECL: Rectangle(float width, float height);
    static function constructNativeObject_FltX2(width:Float, height:Float):Dynamic
    {
        return hx_Rectangle_Construct_FltX2(width, height);
    }

    // DECL: Rectangle(float x, float y, float width, float height);
    static function constructNativeObject_FltX4(x:Float, y:Float, width:Float, height:Float):Dynamic
    {
        return hx_Rectangle_Construct_FltX4(x, y, width, height);
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_x():Float
    {
        return hx_Rectangle_property_x_get(nativeObject);
    }

    function set_x(value:Float):Float
    {
        return hx_Rectangle_property_x_set(nativeObject, value);
    }

    function get_y():Float
    {
        return hx_Rectangle_property_y_get(nativeObject);
    }

    function set_y(value:Float):Float
    {
        return hx_Rectangle_property_y_set(nativeObject, value);
    }

    function get_width():Float
    {
        return hx_Rectangle_property_width_get(nativeObject);
    }

    function set_width(value:Float):Float
    {
        return hx_Rectangle_property_width_set(nativeObject, value);
    }

    function get_height():Float
    {
        return hx_Rectangle_property_height_get(nativeObject);
    }

    function set_height(value:Float):Float
    {
        return hx_Rectangle_property_height_set(nativeObject, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Rectangle_Construct = NativeInterface.loadMember(Rectangle, "Construct", 0);
    static var hx_Rectangle_Construct_Rct = NativeInterface.loadMember(Rectangle, "Construct_Rct", 1);
    static var hx_Rectangle_Construct_FltX2 = NativeInterface.loadMember(Rectangle, "Construct_FltX2", 2);
    static var hx_Rectangle_Construct_FltX4 = NativeInterface.loadMember(Rectangle, "Construct_FltX4", 4);
    static var hx_Rectangle_bottom = NativeInterface.loadMember(Rectangle, "bottom", 1);
    static var hx_Rectangle_static_combine = NativeInterface.loadMember(Rectangle, "static_combine", 3);
    static var hx_Rectangle_contains_Rct = NativeInterface.loadMember(Rectangle, "contains_Rct", 2);
    static var hx_Rectangle_contains_FltX2 = NativeInterface.loadMember(Rectangle, "contains_FltX2", 3);
    static var hx_Rectangle_contains_FltX4 = NativeInterface.loadMember(Rectangle, "contains_FltX4", 5);
    static var hx_Rectangle_static_empty = NativeInterface.loadMember(Rectangle, "static_empty", 0);
    static var hx_Rectangle_inflate = NativeInterface.loadMember(Rectangle, "inflate", 3);
    static var hx_Rectangle_intersects_Rct = NativeInterface.loadMember(Rectangle, "intersects_Rct", 2);
    static var hx_Rectangle_intersects_FltX4 = NativeInterface.loadMember(Rectangle, "intersects_FltX4", 5);
    static var hx_Rectangle_isEmpty = NativeInterface.loadMember(Rectangle, "isEmpty", 1);
    static var hx_Rectangle_left = NativeInterface.loadMember(Rectangle, "left", 1);
    static var hx_Rectangle_right = NativeInterface.loadMember(Rectangle, "right", 1);
    static var hx_Rectangle_set_Rct = NativeInterface.loadMember(Rectangle, "set_Rct", 2);
    static var hx_Rectangle_set_FltX4 = NativeInterface.loadMember(Rectangle, "set_FltX4", 5);
    static var hx_Rectangle_setPosition = NativeInterface.loadMember(Rectangle, "setPosition", 3);
    static var hx_Rectangle_top = NativeInterface.loadMember(Rectangle, "top", 1);
    static var hx_Rectangle_property_x_get = NativeInterface.loadMember(Rectangle, "property_x_get", 1);
    static var hx_Rectangle_property_x_set = NativeInterface.loadMember(Rectangle, "property_x_set", 2);
    static var hx_Rectangle_property_y_get = NativeInterface.loadMember(Rectangle, "property_y_get", 1);
    static var hx_Rectangle_property_y_set = NativeInterface.loadMember(Rectangle, "property_y_set", 2);
    static var hx_Rectangle_property_width_get = NativeInterface.loadMember(Rectangle, "property_width_get", 1);
    static var hx_Rectangle_property_width_set = NativeInterface.loadMember(Rectangle, "property_width_set", 2);
    static var hx_Rectangle_property_height_get = NativeInterface.loadMember(Rectangle, "property_height_get", 1);
    static var hx_Rectangle_property_height_set = NativeInterface.loadMember(Rectangle, "property_height_set", 2);
}

// END
