#include "HaxeAPI.h"

// DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
void hx_Label_addListener(value thisObj, value listener, value eventFlags)
{
    Label *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_Label_addListener, 3);

// DECL: static Label* create(const char*id, Theme::Style* style);
value hx_Label_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(Label::create(_id, _style));
}
DEFINE_PRIM(hx_Label_static_create, 2);

// DECL: const char* getText();
value hx_Label_getText(value thisObj)
{
    Label *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getText());
}
DEFINE_PRIM(hx_Label_getText, 1);

// DECL: const char* getType() const;
value hx_Label_getType(value thisObj)
{
    Label *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Label_getType, 1);

// DECL: void setText(const char* text);
void hx_Label_setText(value thisObj, value text)
{
    Label *_thisObj;
    const char *_text = ValueToString(text);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setText(_text);
}
DEFINE_PRIM(hx_Label_setText, 2);

// END
//
