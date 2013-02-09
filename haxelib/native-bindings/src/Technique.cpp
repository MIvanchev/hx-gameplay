#include "HaxeAPI.h"

// DECL: const char* getId() const;
value hx_Technique_getId(value thisObj)
{
    Technique *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Technique_getId, 1);

// DECL: Pass* getPass(const char* id) const;
value hx_Technique_getPass(value thisObj, value id)
{
    Technique *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getPass(_id), true);
}
DEFINE_PRIM(hx_Technique_getPass, 2);

// DECL: Pass* getPassByIndex(unsigned int index) const;
value hx_Technique_getPassByIndex(value thisObj, value index)
{
    Technique *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getPassByIndex(_index), true);
}
DEFINE_PRIM(hx_Technique_getPassByIndex, 2);

// DECL: unsigned int getPassCount() const;
value hx_Technique_getPassCount(value thisObj)
{
    Technique *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getPassCount());
}
DEFINE_PRIM(hx_Technique_getPassCount, 1);

// END
//
