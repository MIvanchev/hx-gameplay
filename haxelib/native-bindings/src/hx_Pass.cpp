#include "HaxeAPI.h"

// DECL: void bind();
void hx_Pass_bind(value thisObj)
{
    Pass *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->bind();
}
DEFINE_PRIM(hx_Pass_bind, 1);

// DECL: Effect* getEffect() const;
value hx_Pass_getEffect(value thisObj)
{
    Pass *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getEffect(), true);
}
DEFINE_PRIM(hx_Pass_getEffect, 1);

// DECL: const char* getId() const;
value hx_Pass_getId(value thisObj)
{
    Pass *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Pass_getId, 1);

// DECL: VertexAttributeBinding* getVertexAttributeBinding() const;
value hx_Pass_getVertexAttributeBinding(value thisObj)
{
    Pass *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getVertexAttributeBinding(), true);
}
DEFINE_PRIM(hx_Pass_getVertexAttributeBinding, 1);

// DECL: void setVertexAttributeBinding(VertexAttributeBinding* binding);
void hx_Pass_setVertexAttributeBinding(value thisObj, value binding)
{
    Pass *_thisObj;
    VertexAttributeBinding *_binding;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(binding, _binding);
    _thisObj->setVertexAttributeBinding(_binding);
}
DEFINE_PRIM(hx_Pass_setVertexAttributeBinding, 2);

// DECL: void unbind();
void hx_Pass_unbind(value thisObj)
{
    Pass *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->unbind();
}
DEFINE_PRIM(hx_Pass_unbind, 1);

// END
//
