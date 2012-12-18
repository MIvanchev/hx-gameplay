package org.gameplay3d;

import org.gameplay3d.impl.AnimationTarget_ScriptTarget;
import org.gameplay3d.Theme_SideRegions;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Control : public Ref, public AnimationTarget, public ScriptTarget
class Control extends AnimationTarget_ScriptTarget, implements Ref
{
    /***************************************************************************
     * CONSTANTS                                                               *
     **************************************************************************/

    public static inline var STATE_ALL = Control_State.NORMAL | Control_State.FOCUS | Control_State.ACTIVE | Control_State.DISABLED;
    public static inline var ANIMATE_POSITION = 1;
    public static inline var ANIMATE_POSITION_X = 2;
    public static inline var ANIMATE_POSITION_Y = 3;
    public static inline var ANIMATE_SIZE = 4;
    public static inline var ANIMATE_SIZE_WIDTH = 5;
    public static inline var ANIMATE_SIZE_HEIGHT = 6;
    public static inline var ANIMATE_OPACITY = 7;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
    public function addListener(listener:Control_Listener, eventFlags:Int):Void
    {
        hx_Control_addListener(nativeObject, listener.native(), eventFlags);
    }

    // DECL: void setEnabled(bool enabled);
    public function setEnabled(enabled:Bool):Void
    {
        hx_Control_setEnabled(nativeObject, enabled);
    }

    // DECL: Alignment getAlignment() const;
    public function getAlignment():Int
    {
        return hx_Control_getAlignment(nativeObject);
    }

    // DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const;
    override public function getAnimationPropertyComponentCount(propertyId:Int):Int
    {
        return hx_Control_getAnimationPropertyComponentCount(nativeObject, propertyId);
    }

    // DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value);
    override public function getAnimationPropertyValue(propertyId:Int, value:AnimationValue):Void
    {
        hx_Control_getAnimationPropertyValue(nativeObject, propertyId, value.native());
    }

    // DECL: bool getAutoHeight() const;
    public function getAutoHeight():Bool
    {
        return hx_Control_getAutoHeight(nativeObject);
    }

    // DECL: bool getAutoWidth() const;
    public function getAutoWidth():Bool
    {
        return hx_Control_getAutoWidth(nativeObject);
    }

    // DECL: const Theme::Border& getBorder(State state = NORMAL) const;
    public function getBorder(state:Int = Control_State.NORMAL):Theme_Border
    {
        return Theme_Border.wrap(hx_Control_getBorder(nativeObject, state));
    }

    // DECL: const Rectangle& getBounds() const;
    public function getBounds():Rectangle
    {
        return Rectangle.wrap(hx_Control_getBounds(nativeObject));
    }

    // DECL: const Rectangle& getClip() const;
    public function getClip():Rectangle
    {
        return Rectangle.wrap(hx_Control_getClip(nativeObject));
    }

    // DECL: const Rectangle& getClipBounds() const;
    public function getClipBounds():Rectangle
    {
        return Rectangle.wrap(hx_Control_getClipBounds(nativeObject));
    }

    // DECL: bool getConsumeInputEvents();
    public function getConsumeInputEvents():Bool
    {
        return hx_Control_getConsumeInputEvents(nativeObject);
    }

    // DECL: const Vector4& getCursorColor(State state);
    public function getCursorColor(state:Int):Vector4
    {
        return Vector4.wrap(hx_Control_getCursorColor(nativeObject, state));
    }

    // DECL: const Rectangle& getCursorRegion(State state) const;
    public function getCursorRegion(state:Int):Rectangle
    {
        return Rectangle.wrap(hx_Control_getCursorRegion(nativeObject, state));
    }

    // DECL: const Theme::UVs& getCursorUVs(State state);
    public function getCursorUVs(state:Int):Theme_UVs
    {
        return Theme_UVs.wrap(hx_Control_getCursorUVs(nativeObject, state));
    }

    // DECL: int getFocusIndex() const;
    public function getFocusIndex():Int
    {
        return hx_Control_getFocusIndex(nativeObject);
    }

    // DECL: Font* getFont(State state = NORMAL) const;
    public function getFont(state:Int = Control_State.NORMAL):Font
    {
        return Font.wrap(hx_Control_getFont(nativeObject, state));
    }

    // DECL: unsigned int getFontSize(State state = NORMAL) const;
    public function getFontSize(state:Int = Control_State.NORMAL):Int
    {
        return hx_Control_getFontSize(nativeObject, state);
    }

    // DECL: float getHeight() const;
    public function getHeight():Float
    {
        return hx_Control_getHeight(nativeObject);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Control_getId(nativeObject);
    }

    // DECL: const Vector4& getImageColor(const char* id, State state) const;
    public function getImageColor(id:String, state:Int):Vector4
    {
        return Vector4.wrap(hx_Control_getImageColor(nativeObject, id, state));
    }

    // DECL: const Rectangle& getImageRegion(const char* id, State state) const;
    public function getImageRegion(id:String, state:Int):Rectangle
    {
        return Rectangle.wrap(hx_Control_getImageRegion(nativeObject, id, state));
    }

    // DECL: const Theme::UVs& getImageUVs(const char* id, State state) const;
    public function getImageUVs(id:String, state:Int):Theme_UVs
    {
        return Theme_UVs.wrap(hx_Control_getImageUVs(nativeObject, id, state));
    }

    // DECL: const Theme::Margin& getMargin() const;
    public function getMargin():Theme_Margin
    {
        return Theme_Margin.wrap(hx_Control_getMargin(nativeObject));
    }

    // DECL: float getOpacity(State state = NORMAL) const;
    public function getOpacity(state:Int = Control_State.NORMAL):Float
    {
        return hx_Control_getOpacity(nativeObject, state);
    }

    // DECL: const Theme::Padding& getPadding() const;
    public function getPadding():Theme_Padding
    {
        return Theme_Padding.wrap(hx_Control_getPadding(nativeObject));
    }

    // DECL: const Vector4& getSkinColor(State state = NORMAL) const;
    public function getSkinColor(state:Int = Control_State.NORMAL):Vector4
    {
        return Vector4.wrap(hx_Control_getSkinColor(nativeObject, state));
    }

    // DECL: const Rectangle& getSkinRegion(State state = NORMAL) const;
    public function getSkinRegion(state:Int = Control_State.NORMAL):Rectangle
    {
        return Rectangle.wrap(hx_Control_getSkinRegion(nativeObject, state));
    }

    // DECL: State getState() const;
    public function getState():Int
    {
        return hx_Control_getState(nativeObject);
    }

    // DECL: Theme::Style* getStyle() const;
    public function getStyle():Theme_Style
    {
        return Theme_Style.wrap(hx_Control_getStyle(nativeObject));
    }

    // DECL: Font::Justify getTextAlignment(State state = NORMAL) const;
    public function getTextAlignment(state:Int = Control_State.NORMAL):Int
    {
        return hx_Control_getTextAlignment(nativeObject, state);
    }

    // DECL: const Vector4& getTextColor(State state = NORMAL) const;
    public function getTextColor(state:Int = Control_State.NORMAL):Vector4
    {
        return Vector4.wrap(hx_Control_getTextColor(nativeObject, state));
    }

    // DECL: bool getTextRightToLeft(State state = NORMAL) const;
    public function getTextRightToLeft(state:Int = Control_State.NORMAL):Bool
    {
        return hx_Control_getTextRightToLeft(nativeObject, state);
    }

    // DECL: virtual const char* getType() const;
    public function getType():String
    {
        return hx_Control_getType(nativeObject);
    }

    // DECL: float getWidth() const;
    public function getWidth():Float
    {
        return hx_Control_getWidth(nativeObject);
    }

    // DECL: float getX() const;
    public function getX():Float
    {
        return hx_Control_getX(nativeObject);
    }

    // DECL: float getY() const;
    public function getY():Float
    {
        return hx_Control_getY(nativeObject);
    }

    // DECL: int getZIndex() const;
    public function getZIndex():Int
    {
        return hx_Control_getZIndex(nativeObject);
    }

    // DECL: virtual bool isContainer() const;
    public function isContainer():Bool
    {
        return hx_Control_isContainer(nativeObject);
    }

    // DECL: bool isEnabled();
    public function isEnabled():Bool
    {
        return hx_Control_isEnabled(nativeObject);
    }

    // DECL: void setAlignment(Alignment alignment);
    public function setAlignment(alignment:Int):Void
    {
        hx_Control_setAlignment(nativeObject, alignment);
    }

    // DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
    override public function setAnimationPropertyValue(propertyId:Int, value:AnimationValue, blendWeight:Float = 1.0):Void
    {
        hx_Control_setAnimationPropertyValue(nativeObject, propertyId, value.native(), blendWeight);
    }

    // DECL: virtual void setAutoHeight(bool autoHeight);
    public function setAutoHeight(autoHeight:Bool):Void
    {
        hx_Control_setAutoHeight(nativeObject, autoHeight);
    }

    // DECL: virtual void setAutoWidth(bool autoWidth);
    public function setAutoWidth(autoWidth:Bool):Void
    {
        hx_Control_setAutoWidth(nativeObject, autoWidth);
    }

    // DECL: void setBorder(float top, float bottom, float left, float right, unsigned char states = STATE_ALL);
    public function setBorder(top:Float, bottom:Float, left:Float, right:Float, states:Int = STATE_ALL):Void
    {
        hx_Control_setBorder(nativeObject, top, bottom, left, right, states);
    }

    // DECL: virtual void setBounds(const Rectangle& bounds);
    public function setBounds(bounds:Rectangle):Void
    {
        hx_Control_setBounds(nativeObject, bounds.native());
    }

    // DECL: void setConsumeInputEvents(bool consume);
    public function setConsumeInputEvents(consume:Bool):Void
    {
        hx_Control_setConsumeInputEvents(nativeObject, consume);
    }

    // DECL: void setCursorColor(const Vector4& color, unsigned char states);
    public function setCursorColor(color:Vector4, states:Int):Void
    {
        hx_Control_setCursorColor(nativeObject, color.native(), states);
    }

    // DECL: void setCursorRegion(const Rectangle& region, unsigned char states);
    public function setCursorRegion(region:Rectangle, states:Int):Void
    {
        hx_Control_setCursorRegion(nativeObject, region.native(), states);
    }

    // DECL: void setFocusIndex(int focusIndex);
    public function setFocusIndex(focusIndex:Int):Void
    {
        hx_Control_setFocusIndex(nativeObject, focusIndex);
    }

    // DECL: void setFont(Font* font, unsigned char states = STATE_ALL);
    public function setFont(font:Font, states:Int = STATE_ALL):Void
    {
        hx_Control_setFont(nativeObject, font.native(), states);
    }

    // DECL: void setFontSize(unsigned int size, unsigned char states = STATE_ALL);
    public function setFontSize(size:Int, states:Int = STATE_ALL):Void
    {
        hx_Control_setFontSize(nativeObject, size, states);
    }

    // DECL: virtual void setHeight(float height);
    public function setHeight(height:Float):Void
    {
        hx_Control_setHeight(nativeObject, height);
    }

    // DECL: void setImageColor(const char* id, const Vector4& color, unsigned char states = STATE_ALL);
    public function setImageColor(id:String, color:Vector4, states:Int = STATE_ALL):Void
    {
        hx_Control_setImageColor(nativeObject, id, color.native(), states);
    }

    // DECL: void setImageRegion(const char* id, const Rectangle& region, unsigned char states = STATE_ALL);
    public function setImageRegion(id:String, region:Rectangle, states:Int = STATE_ALL):Void
    {
        hx_Control_setImageRegion(nativeObject, id, region.native(), states);
    }

    // DECL: void setMargin(float top, float bottom, float left, float right);
    public function setMargin(top:Float, bottom:Float, left:Float, right:Float):Void
    {
        hx_Control_setMargin(nativeObject, top, bottom, left, right);
    }

    // DECL: void setVisible(bool visible);
    public function setVisible(visible:Bool)
    {
        hx_Control_setVisible(visible);
    }

    // DECL: bool isVisible() const;
    public function isVisible():Bool
    {
        return hx_Control_isVisible(nativeObject);
    }

    // DECL: void setOpacity(float opacity, unsigned char states = STATE_ALL);
    public function setOpacity(opacity:Float, states:Int = STATE_ALL):Void
    {
        hx_Control_setOpacity(nativeObject, opacity, states);
    }

    // DECL: void setPadding(float top, float bottom, float left, float right);
    public function setPadding(top:Float, bottom:Float, left:Float, right:Float):Void
    {
        hx_Control_setPadding(nativeObject, top, bottom, left, right);
    }

    // DECL: void setPosition(float x, float y);
    public function setPosition(x:Float, y:Float):Void
    {
        hx_Control_setPosition(nativeObject, x, y);
    }

    // DECL: virtual void setSize(float width, float height);
    public function setSize(width:Float, height:Float):Void
    {
        hx_Control_setSize(nativeObject, width, height);
    }

    // DECL: void setSkinColor(const Vector4& color, unsigned char states = STATE_ALL);
    public function setSkinColor(color:Vector4, states:Int = STATE_ALL):Void
    {
        hx_Control_setSkinColor(nativeObject, color.native(), states);
    }

    // DECL: void setSkinRegion(const Rectangle& region, unsigned char states = STATE_ALL);
    public function setSkinRegion(region:Rectangle, states:Int = STATE_ALL):Void
    {
        hx_Control_setSkinRegion(nativeObject, region.native(), states);
    }

    // DECL: void setState(State state);
    public function setState(state:Int):Void
    {
        hx_Control_setState(nativeObject, state);
    }

    // DECL: void setStyle(Theme::Style* style);
    public function setStyle(style:Theme_Style):Void
    {
        hx_Control_setStyle(nativeObject, style.native());
    }

    // DECL: void setTextAlignment(Font::Justify alignment, unsigned char states = STATE_ALL);
    public function setTextAlignment(alignment:Int, states:Int = STATE_ALL):Void
    {
        hx_Control_setTextAlignment(nativeObject, alignment, states);
    }

    // DECL: void setTextColor(const Vector4& color, unsigned char states = STATE_ALL);
    public function setTextColor(color:Vector4, states:Int = STATE_ALL):Void
    {
        hx_Control_setTextColor(nativeObject, color.native(), states);
    }

    // DECL: void setTextRightToLeft(bool rightToLeft, unsigned char states = STATE_ALL);
    public function setTextRightToLeft(rightToLeft:Bool, states:Int = STATE_ALL):Void
    {
        hx_Control_setTextRightToLeft(nativeObject, rightToLeft, states);
    }

    // DECL: virtual void setWidth(float width);
    public function setWidth(width:Float):Void
    {
        hx_Control_setWidth(nativeObject, width);
    }

    // DECL: void setZIndex(int zIndex);
    public function setZIndex(zIndex:Int):Void
    {
        hx_Control_setZIndex(nativeObject, zIndex);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Control_addListener:Dynamic = cpp.Lib.load("gameplay", "hx_Control_addListener", 3); 
    static var hx_Control_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setEnabled", 2); 
    static var hx_Control_getAlignment:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getAlignment", 1); 
    static var hx_Control_getAnimationPropertyComponentCount:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getAnimationPropertyComponentCount", 2); 
    static var hx_Control_getAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getAnimationPropertyValue", 3); 
    static var hx_Control_getAutoHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getAutoHeight", 1); 
    static var hx_Control_getAutoWidth:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getAutoWidth", 1); 
    static var hx_Control_getBorder:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getBorder", 2); 
    static var hx_Control_getBounds:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getBounds", 1); 
    static var hx_Control_getClip:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getClip", 1); 
    static var hx_Control_getClipBounds:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getClipBounds", 1); 
    static var hx_Control_getConsumeInputEvents:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getConsumeInputEvents", 1); 
    static var hx_Control_getCursorColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getCursorColor", 2); 
    static var hx_Control_getCursorRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getCursorRegion", 2); 
    static var hx_Control_getCursorUVs:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getCursorUVs", 2); 
    static var hx_Control_getFocusIndex:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getFocusIndex", 1); 
    static var hx_Control_getFont:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getFont", 2); 
    static var hx_Control_getFontSize:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getFontSize", 2); 
    static var hx_Control_getHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getHeight", 1); 
    static var hx_Control_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getId", 1); 
    static var hx_Control_getImageColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getImageColor", 3); 
    static var hx_Control_getImageRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getImageRegion", 3); 
    static var hx_Control_getImageUVs:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getImageUVs", 3); 
    static var hx_Control_getMargin:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getMargin", 1); 
    static var hx_Control_getOpacity:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getOpacity", 2); 
    static var hx_Control_getPadding:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getPadding", 1); 
    static var hx_Control_getSkinColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getSkinColor", 2); 
    static var hx_Control_getSkinRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getSkinRegion", 2); 
    static var hx_Control_getState:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getState", 1); 
    static var hx_Control_getStyle:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getStyle", 1); 
    static var hx_Control_getTextAlignment:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getTextAlignment", 2); 
    static var hx_Control_getTextColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getTextColor", 2); 
    static var hx_Control_getTextRightToLeft:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getTextRightToLeft", 2); 
    static var hx_Control_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getType", 1); 
    static var hx_Control_getWidth:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getWidth", 1); 
    static var hx_Control_getX:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getX", 1); 
    static var hx_Control_getY:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getY", 1); 
    static var hx_Control_getZIndex:Dynamic = cpp.Lib.load("gameplay", "hx_Control_getZIndex", 1); 
    static var hx_Control_isContainer:Dynamic = cpp.Lib.load("gameplay", "hx_Control_isContainer", 1); 
    static var hx_Control_isEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_Control_isEnabled", 1); 
    static var hx_Control_setAlignment:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setAlignment", 2); 
    static var hx_Control_setAnimationPropertyValue:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setAnimationPropertyValue", 4); 
    static var hx_Control_setAutoHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setAutoHeight", 2); 
    static var hx_Control_setAutoWidth:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setAutoWidth", 2); 
    static var hx_Control_setBorder:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setBorder", -1);
    static var hx_Control_setBounds:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setBounds", 2); 
    static var hx_Control_setConsumeInputEvents:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setConsumeInputEvents", 2); 
    static var hx_Control_setCursorColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setCursorColor", 3); 
    static var hx_Control_setCursorRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setCursorRegion", 3); 
    static var hx_Control_setFocusIndex:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setFocusIndex", 2); 
    static var hx_Control_setFont:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setFont", 3); 
    static var hx_Control_setFontSize:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setFontSize", 3); 
    static var hx_Control_setHeight:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setHeight", 2); 
    static var hx_Control_setImageColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setImageColor", 4); 
    static var hx_Control_setImageRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setImageRegion", 4); 
    static var hx_Control_setMargin:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setMargin", 5); 
    static var hx_Control_setVisible:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setVisible", 2); 
    static var hx_Control_isVisible:Dynamic = cpp.Lib.load("gameplay", "hx_Control_isVisible", 1); 
    static var hx_Control_setOpacity:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setOpacity", 3); 
    static var hx_Control_setPadding:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setPadding", 5); 
    static var hx_Control_setPosition:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setPosition", 3); 
    static var hx_Control_setSize:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setSize", 3); 
    static var hx_Control_setSkinColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setSkinColor", 3); 
    static var hx_Control_setSkinRegion:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setSkinRegion", 3); 
    static var hx_Control_setState:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setState", 2); 
    static var hx_Control_setStyle:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setStyle", 2); 
    static var hx_Control_setTextAlignment:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setTextAlignment", 3); 
    static var hx_Control_setTextColor:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setTextColor", 3); 
    static var hx_Control_setTextRightToLeft:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setTextRightToLeft", 3); 
    static var hx_Control_setWidth:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setWidth", 2); 
    static var hx_Control_setZIndex:Dynamic = cpp.Lib.load("gameplay", "hx_Control_setZIndex", 2); 
}

// END
