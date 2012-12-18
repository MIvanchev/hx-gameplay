#include "HaxeAPI.h"

// DECL: static Button* create(const char* id, Theme::Style* style);
value hx_Button_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(Button::create(_id, _style));
}
DEFINE_PRIM(hx_Button_static_create, 2);

// END
//
