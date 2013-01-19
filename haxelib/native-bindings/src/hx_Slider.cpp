#include "HaxeAPI.h"

// DECL: void addListener(Control::Listener* listener, int eventFlags);
void hx_Slider_addListener(value thisObj, value listener, value eventFlags)
{
    Slider *_thisObj;
    Control::Listener *_listener;
    int _eventFlags = val_get_int(eventFlags);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(listener, _listener);
    _thisObj->addListener(_listener, _eventFlags);
}
DEFINE_PRIM(hx_Slider_addListener, 3);

// DECL: static Slider* create(const char* id, Theme::Style* style);
value hx_Slider_static_create(value id, value style)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    ValueToObject(style, _style);
    return ReferenceToValue(Slider::create(_id, _style));
}
DEFINE_PRIM(hx_Slider_static_create, 2);

// DECL: float getMax() const;
value hx_Slider_getMax(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getMax());
}
DEFINE_PRIM(hx_Slider_getMax, 1);

// DECL: float getMin() const;
value hx_Slider_getMin(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getMin());
}
DEFINE_PRIM(hx_Slider_getMin, 1);

// DECL: float getStep() const;
value hx_Slider_getStep(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getStep());
}
DEFINE_PRIM(hx_Slider_getStep, 1);

// DECL: const char* getType() const;
value hx_Slider_getType(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Slider_getType, 1);

// DECL: float getValue() const;
value hx_Slider_getValue(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getValue());
}
DEFINE_PRIM(hx_Slider_getValue, 1);

// DECL: Font::Justify getValueTextAlignment() const;
value hx_Slider_getValueTextAlignment(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getValueTextAlignment());
}
DEFINE_PRIM(hx_Slider_getValueTextAlignment, 1);

// DECL: unsigned int getValueTextPrecision() const;
value hx_Slider_getValueTextPrecision(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getValueTextPrecision());
}
DEFINE_PRIM(hx_Slider_getValueTextPrecision, 1);

// DECL: bool isValueTextVisible() const;
value hx_Slider_isValueTextVisible(value thisObj)
{
    Slider *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isValueTextVisible());
}
DEFINE_PRIM(hx_Slider_isValueTextVisible, 1);

// DECL: void setMax(float max);
void hx_Slider_setMax(value thisObj, value max)
{
    Slider *_thisObj;
    float _max = ValueToFloat(max);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMax(_max);
}
DEFINE_PRIM(hx_Slider_setMax, 2);

// DECL: void setMin(float min);
void hx_Slider_setMin(value thisObj, value min)
{
    Slider *_thisObj;
    float _min = ValueToFloat(min);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setMin(_min);
}
DEFINE_PRIM(hx_Slider_setMin, 2);

// DECL: void setStep(float step);
void hx_Slider_setStep(value thisObj, value step)
{
    Slider *_thisObj;
    float _step = ValueToFloat(step);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setStep(_step);
}
DEFINE_PRIM(hx_Slider_setStep, 2);

// DECL: void setValue(float value);
void hx_Slider_setValue(value thisObj, value value)
{
    Slider *_thisObj;
    float _value = ValueToFloat(value);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setValue(_value);
}
DEFINE_PRIM(hx_Slider_setValue, 2);

// DECL: void setValueTextAlignment(Font::Justify alignment);
void hx_Slider_setValueTextAlignment(value thisObj, value alignment)
{
    Slider *_thisObj;
    Font::Justify _alignment;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(alignment, _alignment);
    _thisObj->setValueTextAlignment(_alignment);
}
DEFINE_PRIM(hx_Slider_setValueTextAlignment, 2);

// DECL: void setValueTextPrecision(unsigned int precision);
void hx_Slider_setValueTextPrecision(value thisObj, value precision)
{
    Slider *_thisObj;
    unsigned int _precision = ValueToUint(precision);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setValueTextPrecision(_precision);
}
DEFINE_PRIM(hx_Slider_setValueTextPrecision, 2);

// DECL: void setValueTextVisible(bool visible);
void hx_Slider_setValueTextVisible(value thisObj, value visible)
{
    Slider *_thisObj;
    bool _visible = val_get_bool(visible);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setValueTextVisible(_visible);
}
DEFINE_PRIM(hx_Slider_setValueTextVisible, 2);

// END
//
