#include "HaxeAPI.h"

    // DECL: virtual void addListener(Control::Listener* listener, int eventFlags);
void hx_TextBox_addListener(value thisObj, value listener, value eventFlags)
{
    TextBox *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_TextBox_addListener, 3);

// DECL: static TextBox* create(const char* id, Theme::Style* style);
value hx_TextBox_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(TextBox::create(_id, _style));
}
DEFINE_PRIM(hx_TextBox_static_create, 2);

// DECL: int getLastKeypress();
value hx_TextBox_getLastKeypress(value thisObj)
{
    TextBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getLastKeypress());
}
DEFINE_PRIM(hx_TextBox_getLastKeypress, 1);

// DECL: const char* getType() const;
value hx_TextBox_getType(value thisObj)
{
    TextBox *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_TextBox_getType, 1);

// END
//
