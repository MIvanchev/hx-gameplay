#include "HaxeAPI.h"

// DECL: void addListener(Control::Listener* listener, int eventFlags);
void hx_Joystick_addListener(value thisObj, value listener, value eventFlags)
{
    Joystick *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_Joystick_addListener, 3);

// DECL: static Joystick* create(const char* id, Theme::Style* style);
value hx_Joystick_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(Joystick::create(_id, _style));
}
DEFINE_PRIM(hx_Joystick_static_create, 2);

// DECL: inline const unsigned int getIndex() const;
value hx_Joystick_getIndex(value thisObj)
{
    Joystick *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getIndex());
}
DEFINE_PRIM(hx_Joystick_getIndex, 1);

// DECL: inline const Vector2& getInnerRegionSize() const;
value hx_Joystick_getInnerRegionSize(value thisObj)
{
    Joystick *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getInnerRegionSize(), false);
}
DEFINE_PRIM(hx_Joystick_getInnerRegionSize, 1);

// DECL: inline const Vector2& getOuterRegionSize() const;
value hx_Joystick_getOuterRegionSize(value thisObj)
{
    Joystick *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getOuterRegionSize(), false);
}
DEFINE_PRIM(hx_Joystick_getOuterRegionSize, 1);

// DECL: const char* getType() const;
value hx_Joystick_getType(value thisObj)
{
    Joystick *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Joystick_getType, 1);

// DECL: inline const Vector2& getValue() const;
value hx_Joystick_getValue(value thisObj)
{
    Joystick *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getValue(), false);
}
DEFINE_PRIM(hx_Joystick_getValue, 1);

// DECL: inline bool isRelative() const;
value hx_Joystick_isRelative(value thisObj)
{
    Joystick *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isRelative());
}
DEFINE_PRIM(hx_Joystick_isRelative, 1);

// DECL: inline void setInnerRegionSize(const Vector2& size);
void hx_Joystick_setInnerRegionSize(value thisObj, value size)
{
    Joystick *_thisObj;
    Vector2 *_size;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(size, _size);
    _thisObj->setInnerRegionSize(*_size);
}
DEFINE_PRIM(hx_Joystick_setInnerRegionSize, 2);

// DECL: inline void setOuterRegionSize(const Vector2& size);
void hx_Joystick_setOuterRegionSize(value thisObj, value size)
{
    Joystick *_thisObj;
    Vector2 *_size;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(size, _size);
    _thisObj->setOuterRegionSize(*_size);
}
DEFINE_PRIM(hx_Joystick_setOuterRegionSize, 2);

// DECL: inline void setRelative(bool relative);
void hx_Joystick_setRelative(value thisObj, value relative)
{
    Joystick *_thisObj;
    bool _relative = val_get_bool(relative);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setRelative(_relative);
}
DEFINE_PRIM(hx_Joystick_setRelative, 2);

// END
//
