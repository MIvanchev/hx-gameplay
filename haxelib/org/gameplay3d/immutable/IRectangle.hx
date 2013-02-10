package org.gameplay3d.immutable;

import org.gameplay3d.intern.INativeBinding;

/**
 * TODO
 */
interface IRectangle extends INativeBinding
{
   /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var x(get_x, null):Float;
    public var y(get_y, null):Float;
    public var width(get_width, null):Float;
    public var height(get_height, null):Float;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: float bottom() const;
    public function bottom():Float;

    // DECL: bool contains(const Rectangle& r) const;
    public function contains_Rct(r:IRectangle):Bool;

    // DECL: bool contains(float x, float y) const;
    public function contains_FltX2(x:Float, y:Float):Bool;

    // DECL: bool contains(float x, float y, float width, float height) const;
    public function contains_FltX4(x:Float, y:Float, width:Float, height:Float):Bool;

    // DECL: bool intersects(const Rectangle& r) const;
    public function intersects_Rct(r:IRectangle):Bool;

    // DECL: bool intersects(float x, float y, float width, float height) const;
    public function intersects_FltX4(x:Float, y:Float, width:Float, height:Float):Bool;

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool;

    // DECL: float left() const;
    public function left():Float;

    // DECL: float right() const;
    public function right():Float;

    // DECL: float top() const;
    public function top():Float;
}
