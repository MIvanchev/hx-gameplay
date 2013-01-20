#include "HaxeAPI.h"

// DECL: unsigned int addControl(Control* control);
value hx_Container_addControl(value thisObj, value control)
{
    Container *_thisObj;
    Control *_control;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(control, _control);
    return alloc_int(_thisObj->addControl(_control));
}
DEFINE_PRIM(hx_Container_addControl, 2);

// DECL: static Container* create(const char* id, Theme::Style* style, Layout::Type layoutType = Layout::LAYOUT_ABSOLUTE);
value hx_Container_static_create(value id, value style, value layoutType)
{
    const char *_id = ValueToString(id);
    Theme::Style *_style;
    Layout::Type _layoutType;
    ValueToObject(style, _style);
    ValueToEnum(layoutType, _layoutType);
    return ReferenceToValue(Container::create(_id, _style, _layoutType));
}
DEFINE_PRIM(hx_Container_static_create, 3);

// DECL: Animation* getAnimation(const char* id = NULL) const;
value hx_Container_getAnimation(value thisObj, value id)
{
    Container *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getAnimation(_id), true);
}
DEFINE_PRIM(hx_Container_getAnimation, 2);

// DECL: virtual unsigned int getAnimationPropertyComponentCount(int propertyId) const;
value hx_Container_getAnimationPropertyComponentCount(value thisObj, value propertyId)
{
    Container *_thisObj;
    int _propertyId = val_get_int(propertyId);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getAnimationPropertyComponentCount(_propertyId));
}
DEFINE_PRIM(hx_Container_getAnimationPropertyComponentCount, 2);

// DECL: virtual void getAnimationPropertyValue(int propertyId, AnimationValue* value);
void hx_Container_getAnimationPropertyValue(value thisObj, value propertyId, value val)
{
    Container *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(val, _value);
    _thisObj->getAnimationPropertyValue(_propertyId, _value);
}
DEFINE_PRIM(hx_Container_getAnimationPropertyValue, 3);

// DECL: Control* getControl(const char* id) const;
value hx_Container_getControl_Str(value thisObj, value id)
{
    Container *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getControl(_id), true);
}
DEFINE_PRIM(hx_Container_getControl_Str, 2);

// DECL: Control* getControl(unsigned int index) const;
value hx_Container_getControl_Int(value thisObj, value index)
{
    Container *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getControl(_index), true);
}
DEFINE_PRIM(hx_Container_getControl_Int, 2);

// DECL: const std::vector<Control*>& getControls() const;
value hx_Container_getControls(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    const std::vector<Control*>& controls = _thisObj->getControls();

    const value& result = alloc_array(controls.size());
    for (int index = 0; index < controls.size(); index++)
        val_array_set_i(result, index, ReferenceToValue(controls[index], true));

    return result;
}
DEFINE_PRIM(hx_Container_getControls, 1);

// DECL: Layout* getLayout();
value hx_Container_getLayout(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getLayout(), true);
}
DEFINE_PRIM(hx_Container_getLayout, 1);

// DECL: Scroll getScroll() const;
value hx_Container_getScroll(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getScroll());
}
DEFINE_PRIM(hx_Container_getScroll, 1);

// DECL: const char* getType() const;
value hx_Container_getType(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getType());
}
DEFINE_PRIM(hx_Container_getType, 1);

// DECL: void insertControl(Control* control, unsigned int index);
void hx_Container_insertControl(value thisObj, value control, value index)
{
    Container *_thisObj;
    Control *_control;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(control, _control);
    _thisObj->insertControl(_control, _index);
}
DEFINE_PRIM(hx_Container_insertControl, 3);

// DECL: bool isContainer() const;
value hx_Container_isContainer(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isContainer());
}
DEFINE_PRIM(hx_Container_isContainer, 1);

// DECL: bool isScrollBarsAutoHide() const;
value hx_Container_isScrollBarsAutoHide(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isScrollBarsAutoHide());
}
DEFINE_PRIM(hx_Container_isScrollBarsAutoHide, 1);

// DECL: bool isScrolling() const;
value hx_Container_isScrolling(value thisObj)
{
    Container *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isScrolling());
}
DEFINE_PRIM(hx_Container_isScrolling, 1);

// DECL: void removeControl(Control* control);
void hx_Container_removeControl_Ctrl(value thisObj, value control)
{
    Container *_thisObj;
    Control *_control;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(control, _control);
    _thisObj->removeControl(_control);
}
DEFINE_PRIM(hx_Container_removeControl_Ctrl, 2);

// DECL: void removeControl(const char* id);
void hx_Container_removeControl_Str(value thisObj, value id)
{
    Container *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    _thisObj->removeControl(_id);
}
DEFINE_PRIM(hx_Container_removeControl_Str, 2);

// DECL: void removeControl(unsigned int index);
void hx_Container_removeControl_Int(value thisObj, value index)
{
    Container *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    _thisObj->removeControl(_index);
}
DEFINE_PRIM(hx_Container_removeControl_Int, 2);

// DECL: virtual void setAnimationPropertyValue(int propertyId, AnimationValue* value, float blendWeight = 1.0f);
void hx_Container_setAnimationPropertyValue(value thisObj, value propertyId, value val, value blendWeight)
{
    Container *_thisObj;
    int _propertyId = val_get_int(propertyId);
    AnimationValue *_value;
    float _blendWeight = ValueToFloat(blendWeight);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(val, _value);
    _thisObj->setAnimationPropertyValue(_propertyId, _value, _blendWeight);
}
DEFINE_PRIM(hx_Container_setAnimationPropertyValue, 4);

// DECL: void setScroll(Scroll scroll);
void hx_Container_setScroll(value thisObj, value scroll)
{
    Container *_thisObj;
    Container::Scroll _scroll;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(scroll, _scroll);
    _thisObj->setScroll(_scroll);
}
DEFINE_PRIM(hx_Container_setScroll, 2);

// DECL: void setScrollBarsAutoHide(bool autoHide);
void hx_Container_setScrollBarsAutoHide(value thisObj, value autoHide)
{
    Container *_thisObj;
    bool _autoHide = val_get_bool(autoHide);
    ValueToObject(thisObj, _thisObj);
    _thisObj->setScrollBarsAutoHide(_autoHide);
}
DEFINE_PRIM(hx_Container_setScrollBarsAutoHide, 2);

// END
//
