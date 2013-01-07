#include "HaxeAPI.h"

// DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
void hx_RadioButton_addListener(value thisObj, value listener, value eventFlags)
{
    RadioButton *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_RadioButton_addListener, 3);

// DECL: static RadioButton* create(const char* id, Theme::Style* style);
value hx_RadioButton_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(RadioButton::create(_id, _style));
}
DEFINE_PRIM(hx_RadioButton_static_create, 2);

// DECL: const char* getGroupId() const;
value hx_RadioButton_getGroupId(value thisObj)
{
    RadioButton *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getGroupId());
}
DEFINE_PRIM(hx_RadioButton_getGroupId, 1);

// DECL: const Vector2& getImageSize() const;
value hx_RadioButton_getImageSize(value thisObj)
{
    RadioButton *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getImageSize(), false);
}
DEFINE_PRIM(hx_RadioButton_getImageSize, 1);

// DECL: const char* getType() const;
value hx_RadioButton_getType(value thisObj)
{
    RadioButton *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_RadioButton_getType, 1);

// DECL: bool isSelected() const;
value hx_RadioButton_isSelected(value thisObj)
{
    RadioButton *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isSelected());
}
DEFINE_PRIM(hx_RadioButton_isSelected, 1);

// DECL: void setGroupId(const char* groupId);
void hx_RadioButton_setGroupId(value thisObj, value groupId)
{
    RadioButton *_thisObj;
    const char *_groupId = ValueToString(groupId);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setGroupId(_groupId);
}
DEFINE_PRIM(hx_RadioButton_setGroupId, 2);

// DECL: void setImageSize(float width, float height);
void hx_RadioButton_setImageSize(value thisObj, value width, value height)
{
    RadioButton *_thisObj;
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setImageSize(_width, _height);
}
DEFINE_PRIM(hx_RadioButton_setImageSize, 3);

// DECL: void setSelected(bool selected);
void hx_RadioButton_setSelected(value thisObj, value selected)
{
    RadioButton *_thisObj;
    bool _selected = val_get_bool(selected);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSelected(_selected);
}
DEFINE_PRIM(hx_RadioButton_setSelected, 2);

// END
//
