package org.gameplay3d;

import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Form : public Container
class Form extends Container
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Form* create(const char* id, Theme::Style* style, Layout::Type layoutType = Layout::LAYOUT_ABSOLUTE);
    public static function create_Str_ThmStl_Int(id:String, style:Theme_Style, layoutType:Int):Form
    {
        return Form.wrap(hx_Form_static_create_Str_ThmStl_Int(id, style.native(), layoutType));
    }

    // DECL: static Form* create(const char* url);
    public static function create_Str(url:String):Form
    {
        return Form.wrap(hx_Form_static_create_Str(url));
    }

    // DECL: void draw();
    public function draw():Void
    {
        hx_Form_draw(nativeObject);
    }

    // DECL: static Form* getForm(const char* id);
    public static function getForm(id:String):Form
    {
        return Form.wrap(hx_Form_static_getForm(id));
    }

    // DECL: Theme* getTheme() const;
    public function getTheme():Theme
    {
        return Theme.wrap(hx_Form_getTheme(nativeObject));
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_Form_getType(nativeObject);
    }

    // DECL: virtual void setAutoHeight(bool autoHeight);
    override public function setAutoHeight(autoHeight:Bool):Void
    {
        hx_Form_setAutoHeight(nativeObject, autoHeight);
    }

    // DECL: virtual void setAutoWidth(bool autoWidth);
    override public function setAutoWidth(autoWidth:Bool):Void
    {
        hx_Form_setAutoWidth(nativeObject, autoWidth);
    }

    // DECL: virtual void setBounds(const Rectangle& bounds);
    override public function setBounds(bounds:IRectangle):Void
    {
        hx_Form_setBounds(nativeObject, bounds.native());
    }

    // DECL: virtual void setHeight(float height);
    override public function setHeight(height:Float):Void
    {
        hx_Form_setHeight(nativeObject, height);
    }

    // DECL: void setNode(Node* node);
    public function setNode(node:Node):Void
    {
        hx_Form_setNode(nativeObject, node.native());
    }

    // DECL: virtual void setSize(float width, float height);
    override public function setSize(width:Float, height:Float):Void
    {
        hx_Form_setSize(nativeObject, width, height);
    }

    // DECL: virtual void setWidth(float width);
    override public function setWidth(width:Float):Void
    {
        hx_Form_setWidth(nativeObject, width);
    }

    // DECL: void update(float elapsedTime);
    public function update(elapsedTime:Float):Void
    {
        hx_Form_update(nativeObject, elapsedTime);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Form_static_create_Str_ThmStl_Int = NativeInterface.loadMember(Form, "static_create_Str_ThmStl_Int", 3);
    static var hx_Form_static_create_Str = NativeInterface.loadMember(Form, "static_create_Str", 1);
    static var hx_Form_draw = NativeInterface.loadMember(Form, "draw", 1);
    static var hx_Form_static_getForm = NativeInterface.loadMember(Form, "static_getForm", 1);
    static var hx_Form_getTheme = NativeInterface.loadMember(Form, "getTheme", 1);
    static var hx_Form_getType = NativeInterface.loadMember(Form, "getType", 1);
    static var hx_Form_setAutoHeight = NativeInterface.loadMember(Form, "setAutoHeight", 2);
    static var hx_Form_setAutoWidth = NativeInterface.loadMember(Form, "setAutoWidth", 2);
    static var hx_Form_setBounds = NativeInterface.loadMember(Form, "setBounds", 2);
    static var hx_Form_setHeight = NativeInterface.loadMember(Form, "setHeight", 2);
    static var hx_Form_setNode = NativeInterface.loadMember(Form, "setNode", 2);
    static var hx_Form_setSize = NativeInterface.loadMember(Form, "setSize", 3);
    static var hx_Form_setWidth = NativeInterface.loadMember(Form, "setWidth", 2);
    static var hx_Form_update = NativeInterface.loadMember(Form, "update", 2);
}

// END
