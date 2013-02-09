#include "HaxeAPI.h"

// DECL: Text(const char* text);
value hx_Font_Text_Construct(value text)
{
    const char *_text = ValueToString(text);
    return ObjectToValue(new Font::Text(_text));
}
DEFINE_PRIM(hx_Font_Text_Construct, 1);

// DECL: const char* getText();
value hx_Font_Text_getText(value thisObj)
{
    Font::Text *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getText());
}
DEFINE_PRIM(hx_Font_Text_getText, 1);

// END
//
