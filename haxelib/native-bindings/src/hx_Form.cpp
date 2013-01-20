#include "HaxeAPI.h"

// DECL: static Form* create(const char* id, Theme::Style* style, Layout::Type layoutType = Layout::LAYOUT_ABSOLUTE);
value hx_Form_static_create_Str_ThmStl_Int(value id, value style, value layoutType)
{
    Theme::Style *_style;
    Layout::Type _layoutType;
    const char *_id = ValueToString(id);
    ValueToObject(style, _style);
    ValueToEnum(layoutType, _layoutType);
    return ReferenceToValue(Form::create(_id, _style, _layoutType));
}
DEFINE_PRIM(hx_Form_static_create_Str_ThmStl_Int, 3);

// DECL: static Form* create(const char* url);
value hx_Form_static_create_Str(value url)
{
    const char *_url = ValueToString(url);
    return ReferenceToValue(Form::create(_url));
}
DEFINE_PRIM(hx_Form_static_create_Str, 1);

// DECL: void draw();
void hx_Form_draw(value thisObj)
{
    Form *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw();
}
DEFINE_PRIM(hx_Form_draw, 1);

// DECL: static Form* getForm(const char* id);
value hx_Form_static_getForm(value id)
{
    const char *_id = ValueToString(id);
    return ReferenceToValue(Form::getForm(_id), true);
}
DEFINE_PRIM(hx_Form_static_getForm, 1);

// DECL: Theme* getTheme() const;
value hx_Form_getTheme(value thisObj)
{
    Form *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getTheme(), true);
}
DEFINE_PRIM(hx_Form_getTheme, 1);

// DECL: const char* getType() const;
value hx_Form_getType(value thisObj)
{
    Form *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Form_getType, 1);

// DECL: virtual void setAutoHeight(bool autoHeight);
void hx_Form_setAutoHeight(value thisObj, value autoHeight)
{
    Form *_thisObj;
    bool _autoHeight = val_get_bool(autoHeight);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAutoHeight(_autoHeight);
}
DEFINE_PRIM(hx_Form_setAutoHeight, 2);

// DECL: virtual void setAutoWidth(bool autoWidth);
void hx_Form_setAutoWidth(value thisObj, value autoWidth)
{
    Form *_thisObj;
    bool _autoWidth = val_get_bool(autoWidth);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setAutoWidth(_autoWidth);
}
DEFINE_PRIM(hx_Form_setAutoWidth, 2);

// DECL: virtual void setBounds(const Rectangle& bounds);
void hx_Form_setBounds(value thisObj, value bounds)
{
    Form *_thisObj;
    Rectangle *_bounds;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(bounds, _bounds);
    _thisObj->setBounds(*_bounds);
}
DEFINE_PRIM(hx_Form_setBounds, 2);

// DECL: virtual void setHeight(float height);
void hx_Form_setHeight(value thisObj, value height)
{
    Form *_thisObj;
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setHeight(_height);
}
DEFINE_PRIM(hx_Form_setHeight, 2);

// DECL: void setNode(Node* node);
void hx_Form_setNode(value thisObj, value node)
{
    Form *_thisObj;
    Node *_node;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(node, _node);
    _thisObj->setNode(_node);
}
DEFINE_PRIM(hx_Form_setNode, 2);

// DECL: virtual void setSize(float width, float height);
void hx_Form_setSize(value thisObj, value width, value height)
{
    Form *_thisObj;
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setSize(_width, _height);
}
DEFINE_PRIM(hx_Form_setSize, 3);

// DECL: virtual void setWidth(float width);
void hx_Form_setWidth(value thisObj, value width)
{
    Form *_thisObj;
    float _width = ValueToFloat(width);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setWidth(_width);
}
DEFINE_PRIM(hx_Form_setWidth, 2);

// DECL: void update(float elapsedTime);
void hx_Form_update(value thisObj, value elapsedTime)
{
    Form *_thisObj;
    float _elapsedTime = ValueToFloat(elapsedTime);
    ValueToObject(thisObj, _thisObj);
    _thisObj->update(_elapsedTime);
}
DEFINE_PRIM(hx_Form_update, 2);

// END
//
