#include "HaxeAPI.h"

// DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
void hx_Control_addListener(value thisObj, value listener, value eventFlags)
{
    Control *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_Control_addListener, 3);

// DECL: void Control::setEnabled(bool enabled);
void hx_Control_setEnabled(value thisObj, value enabled)
{
    Control *_thisObj;
    bool _enabled = val_get_bool(enabled);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setEnabled(_enabled);
}
DEFINE_PRIM(hx_Control_setEnabled, 2);

// DECL: Alignment getAlignment() const;
value hx_Control_getAlignment(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getAlignment());
}
DEFINE_PRIM(hx_Control_getAlignment, 1);

// DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const;
value hx_Control_getAnimationPropertyComponentCount(value thisObj, value propertyId)
{
    Control *_thisObj;
    int _propertyId = val_get_int(propertyId);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getAnimationPropertyComponentCount(_propertyId));
}
DEFINE_PRIM(hx_Control_getAnimationPropertyComponentCount, 2);

// DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value);
void hx_Control_getAnimationPropertyValue(value thisObj, value propertyId, value value)
{
    Control *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(value, _value);
    _thisObj->getAnimationPropertyValue(_propertyId, _value);
}
DEFINE_PRIM(hx_Control_getAnimationPropertyValue, 3);

// DECL: bool getAutoHeight() const;
value hx_Control_getAutoHeight(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->getAutoHeight());
}
DEFINE_PRIM(hx_Control_getAutoHeight, 1);

// DECL: bool getAutoWidth() const;
value hx_Control_getAutoWidth(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->getAutoWidth());
}
DEFINE_PRIM(hx_Control_getAutoWidth, 1);

// DECL: const Theme::Border& getBorder(State state = NORMAL) const;
value hx_Control_getBorder(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getBorder(_state), false);
}
DEFINE_PRIM(hx_Control_getBorder, 2);

// DECL: const Rectangle& getBounds() const;
value hx_Control_getBounds(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBounds(), false);
}
DEFINE_PRIM(hx_Control_getBounds, 1);

// DECL: const Rectangle& getClip() const;
value hx_Control_getClip(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getClip(), false);
}
DEFINE_PRIM(hx_Control_getClip, 1);

// DECL: const Rectangle& getClipBounds() const;
value hx_Control_getClipBounds(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getClipBounds(), false);
}
DEFINE_PRIM(hx_Control_getClipBounds, 1);

// DECL: bool getConsumeInputEvents();
value hx_Control_getConsumeInputEvents(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->getConsumeInputEvents());
}
DEFINE_PRIM(hx_Control_getConsumeInputEvents, 1);

// DECL: const Vector4& getCursorColor(State state);
value hx_Control_getCursorColor(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getCursorColor(_state), false);
}
DEFINE_PRIM(hx_Control_getCursorColor, 2);

// DECL: const Rectangle& getCursorRegion(State state) const;
value hx_Control_getCursorRegion(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getCursorRegion(_state), false);
}
DEFINE_PRIM(hx_Control_getCursorRegion, 2);

// DECL: const Theme::UVs& getCursorUVs(State state);
value hx_Control_getCursorUVs(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getCursorUVs(_state), false);
}
DEFINE_PRIM(hx_Control_getCursorUVs, 2);

// DECL: int getFocusIndex() const;
value hx_Control_getFocusIndex(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getFocusIndex());
}
DEFINE_PRIM(hx_Control_getFocusIndex, 1);

// DECL: Font* getFont(State state = NORMAL) const;
value hx_Control_getFont(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ReferenceToValue(_thisObj->getFont(_state), true);
}
DEFINE_PRIM(hx_Control_getFont, 2);

// DECL: unsigned int getFontSize(State state = NORMAL) const;
value hx_Control_getFontSize(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return alloc_int(_thisObj->getFontSize(_state));
}
DEFINE_PRIM(hx_Control_getFontSize, 2);

// DECL: float getHeight() const;
value hx_Control_getHeight(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getHeight());
}
DEFINE_PRIM(hx_Control_getHeight, 1);

// DECL: const char* getId() const;
value hx_Control_getId(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Control_getId, 1);

// DECL: const Vector4& getImageColor(const char* id, State state) const;
value hx_Control_getImageColor(value thisObj, value id, value state)
{
    Control *_thisObj;
    const char *_id = ValueToString(id);
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getImageColor(_id, _state), false);
}
DEFINE_PRIM(hx_Control_getImageColor, 3);

// DECL: const Rectangle& getImageRegion(const char* id, State state) const;
value hx_Control_getImageRegion(value thisObj, value id, value state)
{
    Control *_thisObj;
    const char *_id = ValueToString(id);
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getImageRegion(_id, _state), false);
}
DEFINE_PRIM(hx_Control_getImageRegion, 3);

// DECL: const Theme::UVs& getImageUVs(const char* id, State state) const;
value hx_Control_getImageUVs(value thisObj, value id, value state)
{
    Control *_thisObj;
    const char *_id = ValueToString(id);
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getImageUVs(_id, _state), false);
}
DEFINE_PRIM(hx_Control_getImageUVs, 3);

// DECL: const Theme::Margin& getMargin() const;
value hx_Control_getMargin(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getMargin(), false);
}
DEFINE_PRIM(hx_Control_getMargin, 1);

// DECL: float getOpacity(State state = NORMAL) const;
value hx_Control_getOpacity(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return alloc_float(_thisObj->getOpacity(_state));
}
DEFINE_PRIM(hx_Control_getOpacity, 2);

// DECL: const Theme::Padding& getPadding() const;
value hx_Control_getPadding(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getPadding(), false);
}
DEFINE_PRIM(hx_Control_getPadding, 1);

// DECL: const Vector4& getSkinColor(State state = NORMAL) const;
value hx_Control_getSkinColor(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getSkinColor(_state), false);
}
DEFINE_PRIM(hx_Control_getSkinColor, 2);

// DECL: const Rectangle& getSkinRegion(State state = NORMAL) const;
value hx_Control_getSkinRegion(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getSkinRegion(_state), false);
}
DEFINE_PRIM(hx_Control_getSkinRegion, 2);

// DECL: State getState() const;
value hx_Control_getState(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getState());
}
DEFINE_PRIM(hx_Control_getState, 1);

// DECL: Theme::Style* getStyle() const;
value hx_Control_getStyle(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getStyle(), false);
}
DEFINE_PRIM(hx_Control_getStyle, 1);

// DECL: Font::Justify getTextAlignment(State state = NORMAL) const;
value hx_Control_getTextAlignment(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return EnumToValue(_thisObj->getTextAlignment(_state));
}
DEFINE_PRIM(hx_Control_getTextAlignment, 2);

// DECL: const Vector4& getTextColor(State state = NORMAL) const;
value hx_Control_getTextColor(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return ObjectToValue(&_thisObj->getTextColor(_state), false);
}
DEFINE_PRIM(hx_Control_getTextColor, 2);

// DECL: bool getTextRightToLeft(State state = NORMAL) const;
value hx_Control_getTextRightToLeft(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    return alloc_bool(_thisObj->getTextRightToLeft(_state));
}
DEFINE_PRIM(hx_Control_getTextRightToLeft, 2);

// DECL: virtual const char* getType() const;
value hx_Control_getType(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Control_getType, 1);

// DECL: float getWidth() const;
value hx_Control_getWidth(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getWidth());
}
DEFINE_PRIM(hx_Control_getWidth, 1);

// DECL: float getX() const;
value hx_Control_getX(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getX());
}
DEFINE_PRIM(hx_Control_getX, 1);

// DECL: float getY() const;
value hx_Control_getY(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getY());
}
DEFINE_PRIM(hx_Control_getY, 1);

// DECL: int getZIndex() const;
value hx_Control_getZIndex(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getZIndex());
}
DEFINE_PRIM(hx_Control_getZIndex, 1);

// DECL: virtual bool isContainer() const;
value hx_Control_isContainer(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isContainer());
}
DEFINE_PRIM(hx_Control_isContainer, 1);

// DECL: bool isEnabled(); const
value hx_Control_isEnabled(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isEnabled());
}
DEFINE_PRIM(hx_Control_isEnabled, 1);

// DECL: void setAlignment(Alignment alignment);
void hx_Control_setAlignment(value thisObj, value alignment)
{
    Control *_thisObj;
    Control::Alignment _alignment;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(alignment, _alignment);
    _thisObj->setAlignment(_alignment);
}
DEFINE_PRIM(hx_Control_setAlignment, 2);

// DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
void hx_Control_setAnimationPropertyValue(value thisObj, value propertyId, value val, value blendWeight)
{
    Control *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    float _blendWeight = ValueToFloat(blendWeight);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(val, _value);
    _thisObj->setAnimationPropertyValue(_propertyId, _value, _blendWeight);
}
DEFINE_PRIM(hx_Control_setAnimationPropertyValue, 4);

// DECL: virtual void setAutoHeight(bool autoHeight);
void hx_Control_setAutoHeight(value thisObj, value autoHeight)
{
    Control *_thisObj;
    bool _autoHeight = val_get_bool(autoHeight);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAutoHeight(_autoHeight);
}
DEFINE_PRIM(hx_Control_setAutoHeight, 2);

// DECL: virtual void setAutoWidth(bool autoWidth);
void hx_Control_setAutoWidth(value thisObj, value autoWidth)
{
    Control *_thisObj;
    bool _autoWidth = val_get_bool(autoWidth);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAutoWidth(_autoWidth);
}
DEFINE_PRIM(hx_Control_setAutoWidth, 2);

// DECL: void setBorder(float top, float bottom, float left, float right, unsigned char states = STATE_ALL);
void hx_Control_setBorder(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& top = *args++;
    const value& bottom = *args++;
    const value& left = *args++;
    const value& right = *args++;
    const value& states = *args;

    Control *_thisObj;
    float _top = ValueToFloat(top);
    float _bottom = ValueToFloat(bottom);
    float _left = ValueToFloat(left);
    float _right = ValueToFloat(right);
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBorder(_top, _bottom, _left, _right, _states);
}
DEFINE_PRIM_MULT(hx_Control_setBorder);

// DECL: virtual void setBounds(const Rectangle& bounds);
void hx_Control_setBounds(value thisObj, value bounds)
{
    Control *_thisObj;
    Rectangle *_bounds;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(bounds, _bounds);
    _thisObj->setBounds(*_bounds);
}
DEFINE_PRIM(hx_Control_setBounds, 2);

// DECL: void setConsumeInputEvents(bool consume);
void hx_Control_setConsumeInputEvents(value thisObj, value consume)
{
    Control *_thisObj;
    bool _consume = val_get_bool(consume);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setConsumeInputEvents(_consume);
}
DEFINE_PRIM(hx_Control_setConsumeInputEvents, 2);

// DECL: void setCursorColor(const Vector4& color, unsigned char states);
void hx_Control_setCursorColor(value thisObj, value color, value states)
{
    Control *_thisObj;
    Vector4 *_color;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->setCursorColor(*_color, _states);
}
DEFINE_PRIM(hx_Control_setCursorColor, 3);

// DECL: void setCursorRegion(const Rectangle& region, unsigned char states);
void hx_Control_setCursorRegion(value thisObj, value region, value states)
{
    Control *_thisObj;
    Rectangle *_region;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(region, _region);
    _thisObj->setCursorRegion(*_region, _states);
}
DEFINE_PRIM(hx_Control_setCursorRegion, 3);

// DECL: void setFocusIndex(int focusIndex);
void hx_Control_setFocusIndex(value thisObj, value focusIndex)
{
    Control *_thisObj;
    int _focusIndex = val_get_int(focusIndex);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFocusIndex(_focusIndex);
}
DEFINE_PRIM(hx_Control_setFocusIndex, 2);

// DECL: void setFont(Font* font, unsigned char states = STATE_ALL);
void hx_Control_setFont(value thisObj, value font, value states)
{
    Control *_thisObj;
    Font *_font;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(font, _font);
    _thisObj->setFont(_font, _states);
}
DEFINE_PRIM(hx_Control_setFont, 3);

// DECL: void setFontSize(unsigned int size, unsigned char states = STATE_ALL);
void hx_Control_setFontSize(value thisObj, value size, value states)
{
    Control *_thisObj;
    unsigned int _size = ValueToUint(size);
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setFontSize(_size, _states);
}
DEFINE_PRIM(hx_Control_setFontSize, 3);

// DECL: virtual void setHeight(float height);
void hx_Control_setHeight(value thisObj, value height)
{
    Control *_thisObj;
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setHeight(_height);
}
DEFINE_PRIM(hx_Control_setHeight, 2);

// DECL: void setImageColor(const char* id, const Vector4& color, unsigned char states = STATE_ALL);
void hx_Control_setImageColor(value thisObj, value id, value color, value states)
{
    Control *_thisObj;
    const char *_id = ValueToString(id);
    Vector4 *_color;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->setImageColor(_id, *_color, _states);
}
DEFINE_PRIM(hx_Control_setImageColor, 4);

// DECL: void setImageRegion(const char* id, const Rectangle& region, unsigned char states = STATE_ALL);
void hx_Control_setImageRegion(value thisObj, value id, value region, value states)
{
    Control *_thisObj;
    const char *_id = ValueToString(id);
    Rectangle *_region;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(region, _region);
    _thisObj->setImageRegion(_id, *_region, _states);
}
DEFINE_PRIM(hx_Control_setImageRegion, 4);

// DECL: void setMargin(float top, float bottom, float left, float right);
void hx_Control_setMargin(value thisObj, value top, value bottom, value left, value right)
{
    Control *_thisObj;
    float _top = ValueToFloat(top);
    float _bottom = ValueToFloat(bottom);
    float _left = ValueToFloat(left);
    float _right = ValueToFloat(right);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMargin(_top, _bottom, _left, _right);
}
DEFINE_PRIM(hx_Control_setMargin, 5);

// DECL: void setVisible(bool visible);
void hx_Control_setVisible(value thisObj, value visible)
{
    Control *_thisObj;
    bool _visible = val_get_bool(visible);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setVisible(_visible);
}
DEFINE_PRIM(hx_Control_setVisible, 2);

// DECL: bool Control::isVisible() const
value hx_Control_isVisible(value thisObj)
{
    Control *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isVisible());
}
DEFINE_PRIM(hx_Control_isVisible, 1);

// DECL: void setOpacity(float opacity, unsigned char states = STATE_ALL);
void hx_Control_setOpacity(value thisObj, value opacity, value states)
{
    Control *_thisObj;
    float _opacity = ValueToFloat(opacity);
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setOpacity(_opacity, _states);
}
DEFINE_PRIM(hx_Control_setOpacity, 3);

// DECL: void setPadding(float top, float bottom, float left, float right);
void hx_Control_setPadding(value thisObj, value top, value bottom, value left, value right)
{
    Control *_thisObj;
    float _top = ValueToFloat(top);
    float _bottom = ValueToFloat(bottom);
    float _left = ValueToFloat(left);
    float _right = ValueToFloat(right);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setPadding(_top, _bottom, _left, _right);
}
DEFINE_PRIM(hx_Control_setPadding, 5);

// DECL: void setPosition(float x, float y);
void hx_Control_setPosition(value thisObj, value x, value y)
{
    Control *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setPosition(_x, _y);
}
DEFINE_PRIM(hx_Control_setPosition, 3);

// DECL: virtual void setSize(float width, float height);
void hx_Control_setSize(value thisObj, value width, value height)
{
    Control *_thisObj;
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSize(_width, _height);
}
DEFINE_PRIM(hx_Control_setSize, 3);

// DECL: void setSkinColor(const Vector4& color, unsigned char states = STATE_ALL);
void hx_Control_setSkinColor(value thisObj, value color, value states)
{
    Control *_thisObj;
    Vector4 *_color;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->setSkinColor(*_color, _states);
}
DEFINE_PRIM(hx_Control_setSkinColor, 3);

// DECL: void setSkinRegion(const Rectangle& region, unsigned char states = STATE_ALL);
void hx_Control_setSkinRegion(value thisObj, value region, value states)
{
    Control *_thisObj;
    Rectangle *_region;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(region, _region);
    _thisObj->setSkinRegion(*_region, _states);
}
DEFINE_PRIM(hx_Control_setSkinRegion, 3);

// DECL: void setState(State state);
void hx_Control_setState(value thisObj, value state)
{
    Control *_thisObj;
    Control::State _state;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(state, _state);
    _thisObj->setState(_state);
}
DEFINE_PRIM(hx_Control_setState, 2);

// DECL: void setStyle(Theme::Style* style);
void hx_Control_setStyle(value thisObj, value style)
{
    Control *_thisObj;
    Theme::Style *_style;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(style, _style);
    _thisObj->setStyle(_style);
}
DEFINE_PRIM(hx_Control_setStyle, 2);

// DECL: void setTextAlignment(Font::Justify alignment, unsigned char states = STATE_ALL);
void hx_Control_setTextAlignment(value thisObj, value alignment, value states)
{
    Control *_thisObj;
    Font::Justify _alignment;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(alignment, _alignment);
    _thisObj->setTextAlignment(_alignment, _states);
}
DEFINE_PRIM(hx_Control_setTextAlignment, 3);

// DECL: void setTextColor(const Vector4& color, unsigned char states = STATE_ALL);
void hx_Control_setTextColor(value thisObj, value color, value states)
{
    Control *_thisObj;
    Vector4 *_color;
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->setTextColor(*_color, _states);
}
DEFINE_PRIM(hx_Control_setTextColor, 3);

// DECL: void setTextRightToLeft(bool rightToLeft, unsigned char states = STATE_ALL);
void hx_Control_setTextRightToLeft(value thisObj, value rightToLeft, value states)
{
    Control *_thisObj;
    bool _rightToLeft = val_get_bool(rightToLeft);
    unsigned char _states = val_get_int(states);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setTextRightToLeft(_rightToLeft, _states);
}
DEFINE_PRIM(hx_Control_setTextRightToLeft, 3);

// DECL: virtual void setWidth(float width);
void hx_Control_setWidth(value thisObj, value width)
{
    Control *_thisObj;
    float _width = ValueToFloat(width);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setWidth(_width);
}
DEFINE_PRIM(hx_Control_setWidth, 2);

// DECL: void setZIndex(int zIndex);
void hx_Control_setZIndex(value thisObj, value zIndex)
{
    Control *_thisObj;
    int _zIndex = val_get_int(zIndex);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setZIndex(_zIndex);
}
DEFINE_PRIM(hx_Control_setZIndex, 2);

// END
//
