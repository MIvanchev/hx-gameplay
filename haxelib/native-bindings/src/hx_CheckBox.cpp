#include "HaxeAPI.h"

// DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
void hx_CheckBox_addListener(value thisObj, value listener, value eventFlags)
{
    CheckBox *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_CheckBox_addListener, 3);

// DECL: static CheckBox* create(const char* id, Theme::Style* style);
value hx_CheckBox_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(CheckBox::create(_id, _style));
}
DEFINE_PRIM(hx_CheckBox_static_create, 2);

// DECL: const Vector2& getImageSize() const;
value hx_CheckBox_getImageSize(value thisObj)
{
    CheckBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getImageSize(), false);
}
DEFINE_PRIM(hx_CheckBox_getImageSize, 1);

// DECL: const char* getType() const;
value hx_CheckBox_getType(value thisObj)
{
    CheckBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_CheckBox_getType, 1);

// DECL: bool isChecked();
value hx_CheckBox_isChecked(value thisObj)
{
    CheckBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isChecked());
}
DEFINE_PRIM(hx_CheckBox_isChecked, 1);

// DECL: void setChecked(bool checked);
void hx_CheckBox_setChecked(value thisObj, value checked)
{
    CheckBox *_thisObj;
    bool _checked = val_get_bool(checked);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setChecked(_checked);
}
DEFINE_PRIM(hx_CheckBox_setChecked, 2);

// DECL: void setImageSize(float width, float height);
void hx_CheckBox_setImageSize(value thisObj, value width, value height)
{
    CheckBox *_thisObj;
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setImageSize(_width, _height);
}
DEFINE_PRIM(hx_CheckBox_setImageSize, 3);

// END
//
