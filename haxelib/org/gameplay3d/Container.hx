package org.gameplay3d;

import org.gameplay3d.util.Utilities;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Container : public Control
class Container extends Control
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    static inline var ANIMATE_SCROLLBAR_OPACITY = 8;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: unsigned int addControl(Control* control);
    public function addControl(control:Control):Int
    {
        return hx_Container_addControl(nativeObject, control.native());
    }

    // DECL: static Container* create(const char* id, Theme::Style* style, Layout::Type layoutType = Layout::LAYOUT_ABSOLUTE);
    public static function create(id:String, style:Theme_Style, layoutType:Int = Layout_Type.LAYOUT_ABSOLUTE):Container
    {
        return Container.wrap(hx_Container_static_create(id, style.native(), layoutType));
    }

    // DECL: Animation* getAnimation(const char* id = NULL) const;
    override public function getAnimation(id:String = null):Animation
    {
        return Animation.wrap(hx_Container_getAnimation(nativeObject, id));
    }

    // DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const;
    override public function getAnimationPropertyComponentCount(propertyId:Int):Int
    {
        return hx_Container_getAnimationPropertyComponentCount(nativeObject, propertyId);
    }

    // DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value);
    override public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void
    {
        hx_Container_getAnimationPropertyValue(nativeObject, propertyId, value.native());
    }

    // DECL: Control* getControl(const char* id) const;
    public function getControl_Str(id:String):Control
    {
        return Control.wrap(hx_Container_getControl_Str(nativeObject, id));
    }

    // DECL: Control* getControl(unsigned int index) const;
    public function getControl_Int(index:Int):Control
    {
        return Control.wrap(hx_Container_getControl_Int(nativeObject, index));
    }

    // DECL: const std::vector<Control*>& getControls() const;
    public function getControls():Array<Control>
    {
        return Utilities.extractControlArray(hx_Container_getControls(nativeObject));
    }

    // DECL: Layout* getLayout();
    public function getLayout():Layout
    {
        return Layout.wrap(hx_Container_getLayout(nativeObject));
    }

    // DECL: Scroll getScroll() const;
    public function getScroll():Int
    {
        return hx_Container_getScroll(nativeObject);
    }

    // DECL: const char* getType() const;
    override public function getType():String
    {
        return hx_Container_getType(nativeObject);
    }

    // DECL: void insertControl(Control* control, unsigned int index);
    public function insertControl(control:Control, index:Int):Void
    {
        hx_Container_insertControl(nativeObject, control.native(), index);
    }

    // DECL: bool isContainer() const;
    override public function isContainer():Bool
    {
        return hx_Container_isContainer(nativeObject);
    }

    // DECL: bool isScrollBarsAutoHide() const;
    public function isScrollBarsAutoHide():Bool
    {
        return hx_Container_isScrollBarsAutoHide(nativeObject);
    }

    // DECL: bool isScrolling() const;
    public function isScrolling():Bool
    {
        return hx_Container_isScrolling(nativeObject);
    }

    // DECL: void removeControl(Control* control);
    public function removeControl_Ctrl(control:Control):Void
    {
        hx_Container_removeControl_Ctrl(nativeObject, control.native());
    }

    // DECL: void removeControl(const char* id);
    public function removeControl_Str(id:String):Void
    {
        hx_Container_removeControl_Str(nativeObject, id);
    }

    // DECL: void removeControl(unsigned int index);
    public function removeControl_Int(index:Int):Void
    {
        hx_Container_removeControl_Int(nativeObject, index);
    }

    // DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
    override public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_Container_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    // DECL: void setScroll(Scroll scroll);
    public function setScroll(scroll:Int):Void
    {
        hx_Container_setScroll(nativeObject, scroll);
    }

    // DECL: void setScrollBarsAutoHide(bool autoHide);
    public function setScrollBarsAutoHide(autoHide:Bool):Void
    {
        hx_Container_setScrollBarsAutoHide(nativeObject, autoHide);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Container_addControl:Dynamic = cpp.Lib.load("gameplay", "hx_Container_addControl", 2);
    static var hx_Container_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Container_static_create", 3);
    static var hx_Container_getAnimation:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getAnimation", 2);
    static var hx_Container_getAnimationPropertyComponentCount:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getAnimationPropertyComponentCount", 2);
    static var hx_Container_getAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getAnimationPropertyValue", 3);
    static var hx_Container_getControl_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getControl_Str", 2);
    static var hx_Container_getControl_Int:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getControl_Int", 2);
    static var hx_Container_getControls:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getControls", 1);
    static var hx_Container_getLayout:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getLayout", 1);
    static var hx_Container_getScroll:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getScroll", 1);
    static var hx_Container_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Container_getType", 1);
    static var hx_Container_insertControl:Dynamic = cpp.Lib.load("gameplay", "hx_Container_insertControl", 3);
    static var hx_Container_isContainer:Dynamic = cpp.Lib.load("gameplay", "hx_Container_isContainer", 1);
    static var hx_Container_isScrollBarsAutoHide:Dynamic = cpp.Lib.load("gameplay", "hx_Container_isScrollBarsAutoHide", 1);
    static var hx_Container_isScrolling:Dynamic = cpp.Lib.load("gameplay", "hx_Container_isScrolling", 1);
    static var hx_Container_removeControl_Ctrl:Dynamic = cpp.Lib.load("gameplay", "hx_Container_removeControl_Ctrl", 2);
    static var hx_Container_removeControl_Str:Dynamic = cpp.Lib.load("gameplay", "hx_Container_removeControl_Str", 2);
    static var hx_Container_removeControl_Int:Dynamic = cpp.Lib.load("gameplay", "hx_Container_removeControl_Int", 2);
    static var hx_Container_setAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_Container_setAnimationPropertyValue", 4);
    static var hx_Container_setScroll:Dynamic = cpp.Lib.load("gameplay", "hx_Container_setScroll", 2);
    static var hx_Container_setScrollBarsAutoHide:Dynamic = cpp.Lib.load("gameplay", "hx_Container_setScrollBarsAutoHide", 2);
}

// END
