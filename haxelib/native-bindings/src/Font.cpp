#include "HaxeAPI.h"

// DECL: static Font* create(const char* path, const char* id = NULL);
value hx_Font_static_create(value path, value id)
{
    const char *_path = ValueToString(path);
    const char *_id = ValueToString(id);
    return ReferenceToValue(Font::create(_path, _id));
}
DEFINE_PRIM(hx_Font_static_create, 2);

// DECL: Text* createText(const char* text, const Rectangle& area, const Vector4& color, unsigned int size = 0,
value hx_Font_createText(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& area = *args++;
    const value& color = *args++;
    const value& size = *args++;
    const value& justify = *args++;
    const value& wrap = *args++;
    const value& rightToLeft = *args++;
    const value& clip = *args;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    Rectangle *_area, *_clip;
    Vector4 *_color;
    unsigned int _size = ValueToUint(size);
    Font::Justify _justify;
    bool _wrap = val_get_bool(wrap);
    bool _rightToLeft = val_get_bool(rightToLeft);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(area, _area);
    ValueToObject(color, _color);
    ValueToEnum(justify, _justify);
    ValueToObject(clip, _clip);
    return ObjectToValue(_thisObj->createText(_text, *_area, *_color, _size, _justify, _wrap, _rightToLeft, _clip));
}
DEFINE_PRIM_MULT(hx_Font_createText);

// DECL: void drawText(Text* text);
void hx_Font_drawText_Txt(value thisObj, value text)
{
    Font *_thisObj;
    Font::Text *_text;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(text, _text);
    _thisObj->drawText(_text);
}
DEFINE_PRIM(hx_Font_drawText_Txt, 2);

// DECL: void drawText(const char* text, const Rectangle& area, const Vector4& color, unsigned int size = 0,
void hx_Font_drawText_Str_Rct_V4_IntX2_BoolX2_Rct(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& area = *args++;
    const value& color = *args++;
    const value& size = *args++;
    const value& justify = *args++;
    const value& wrap = *args++;
    const value& rightToLeft = *args++;
    const value& clip = *args;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    Rectangle *_area, *_clip;
    Vector4 *_color;
    unsigned int _size = ValueToUint(size);
    Font::Justify _justify;
    bool _wrap = val_get_bool(wrap);
    bool _rightToLeft = val_get_bool(rightToLeft);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(area, _area);
    ValueToObject(color, _color);
    ValueToEnum(justify, _justify);
    ValueToObject(clip, _clip);
    _thisObj->drawText(_text, *_area, *_color, _size, _justify, _wrap, _rightToLeft, _clip);
}
DEFINE_PRIM_MULT(hx_Font_drawText_Str_Rct_V4_IntX2_BoolX2_Rct);

// DECL: void drawText(const char* text, int x, int y, const Vector4& color, unsigned int size = 0, bool rightToLeft = false);
void hx_Font_drawText_Str_IntX2_V4_Int_Bool(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& color = *args++;
    const value& size = *args++;
    const value& rightToLeft = *args;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    int _x = val_get_int(x);
    int _y = val_get_int(y);
    Vector4 *_color;
    unsigned int _size = ValueToUint(size);
    bool _rightToLeft = val_get_bool(rightToLeft);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->drawText(_text, _x, _y, *_color, _size, _rightToLeft);
}
DEFINE_PRIM_MULT(hx_Font_drawText_Str_IntX2_V4_Int_Bool);

// DECL: void drawText(const char* text, int x, int y, float red, float green, float blue, float alpha, unsigned int size = 0, bool rightToLeft = false);
void hx_Font_drawText_Str_IntX2_FltX4_Int_Bool(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& red = *args++;
    const value& green = *args++;
    const value& blue = *args++;
    const value& alpha = *args++;
    const value& size = *args++;
    const value& rightToLeft = *args++;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    int _x = val_get_int(x);
    int _y = val_get_int(y);
    float _red = ValueToFloat(red);
    float _green = ValueToFloat(green);
    float _blue = ValueToFloat(blue);
    float _alpha = ValueToFloat(alpha);
    unsigned int _size = ValueToUint(size);
    bool _rightToLeft = val_get_bool(rightToLeft);
    ValueToObject(thisObj, _thisObj);
    _thisObj->drawText(_text, _x, _y, _red, _green, _blue, _alpha, _size, _rightToLeft);
}
DEFINE_PRIM_MULT(hx_Font_drawText_Str_IntX2_FltX4_Int_Bool);

// DECL: void finish();
void hx_Font_finish(value thisObj)
{
    Font *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->finish();
}
DEFINE_PRIM(hx_Font_finish, 1);

// DECL: int getIndexAtLocation(const char* text, const Rectangle& clip, unsigned int size, const Vector2& inLocation, Vector2* outLocation,
value hx_Font_getIndexAtLocation(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& clip = *args++;
    const value& size = *args++;
    const value& inLocation = *args++;
    const value& outLocation = *args++;
    const value& justify = *args++;
    const value& wrap = *args++;
    const value& rightToLeft = *args;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    Rectangle *_clip;
    unsigned int _size = ValueToUint(size);
    Vector2 *_inLocation, *_outLocation;
    Font::Justify _justify;
    bool _wrap = val_get_bool(wrap);
    bool _rightToLeft = val_get_bool(rightToLeft);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(clip, _clip);
    ValueToObject(inLocation, _inLocation);
    ValueToObject(outLocation,_outLocation);
    ValueToEnum(justify, _justify);
    return alloc_int(_thisObj->getIndexAtLocation(_text, *_clip, _size, *_inLocation, _outLocation, _justify, _wrap, _rightToLeft));
}
DEFINE_PRIM_MULT(hx_Font_getIndexAtLocation);

// DECL: static Justify getJustify(const char* justify);
value hx_Font_static_getJustify(value justify)
{
    const char *_justify = ValueToString(justify);
    return EnumToValue(Font::getJustify(_justify));
}
DEFINE_PRIM(hx_Font_static_getJustify, 1);

// DECL: void getLocationAtIndex(const char* text, const Rectangle& clip, unsigned int size, Vector2* outLocation, const unsigned int destIndex,
void hx_Font_getLocationAtIndex(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& clip = *args++;
    const value& size = *args++;
    const value& outLocation = *args++;
    const value& destIndex = *args++;
    const value& justify = *args++;
    const value& wrap = *args++;
    const value& rightToLeft = *args;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    Rectangle *_clip;
    unsigned int _size = ValueToUint(size);
    Vector2 *_outLocation;
    unsigned int _destIndex = ValueToUint(destIndex);
    Font::Justify _justify;
    bool _wrap = val_get_bool(wrap);
    bool _rightToLeft = val_get_bool(rightToLeft);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(clip, _clip);
    ValueToObject(outLocation, _outLocation);
    ValueToEnum(justify, _justify);
    _thisObj->getLocationAtIndex(_text, *_clip, _size, _outLocation, _destIndex, _justify, _wrap, _rightToLeft);
}
DEFINE_PRIM_MULT(hx_Font_getLocationAtIndex);

// DECL: unsigned int getSize();
value hx_Font_getSize(value thisObj)
{
    Font *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getSize());
}
DEFINE_PRIM(hx_Font_getSize, 1);

// DECL: SpriteBatch* getSpriteBatch() const;
value hx_Font_getSpriteBatch(value thisObj)
{
    Font *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getSpriteBatch(), false);
}
DEFINE_PRIM(hx_Font_getSpriteBatch, 1);

// DECL: void measureText(const char* text, const Rectangle& clip, unsigned int size, Rectangle* out,
void hx_Font_measureText_Str_Rct_Int_Rct_Int_BoolX2(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& text = *args++;
    const value& clip = *args++;
    const value& size = *args++;
    const value& out = *args++;
    const value& justify = *args++;
    const value& wrap = *args++;
    const value& ignoreClip = *args;

    Font *_thisObj;
    const char *_text = ValueToString(text);
    Rectangle *_clip, *_out;
    unsigned int _size = ValueToUint(size);
    Font::Justify _justify;
    bool _wrap = val_get_bool(wrap);
    bool _ignoreClip = val_get_bool(ignoreClip);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(clip, _clip);
    ValueToObject(out, _out);
    ValueToEnum(justify, _justify);
    _thisObj->measureText(_text, *_clip, _size, _out, _justify, _wrap, _ignoreClip);
}
DEFINE_PRIM_MULT(hx_Font_measureText_Str_Rct_Int_Rct_Int_BoolX2);

// DECL: void measureText(const char* text, unsigned int size, unsigned int* widthOut, unsigned int* heightOut);
void hx_Font_measureText_Str_Int_OutIntX2(value thisObj, value text, value size, value widthOut, value heightOut)
{
    Font *_thisObj;
    const char *_text = ValueToString(text);
    unsigned int _size = ValueToUint(size);
    unsigned int _widthOut;
    unsigned int _heightOut;
    ValueToObject(thisObj, _thisObj);
    _thisObj->measureText(_text, _size, &_widthOut, &_heightOut);
    SetOutParameterValue(widthOut, alloc_int(_widthOut));
    SetOutParameterValue(heightOut, alloc_int(_heightOut));
}
DEFINE_PRIM(hx_Font_measureText_Str_Int_OutIntX2, 5);

// DECL: void start();
void hx_Font_start(value thisObj)
{
    Font *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->start();
}
DEFINE_PRIM(hx_Font_start, 1);

// END
//
