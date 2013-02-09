#include "HaxeAPI.h"

// DECL: static Properties* create(const char* url);
value hx_Properties_static_create(value url)
{
    const char *_url = ValueToString(url);
    return ObjectToValue(Properties::create(_url));
}
DEFINE_PRIM(hx_Properties_static_create, 1);

// DECL: bool exists(const char* name) const;
value hx_Properties_exists(value thisObj, value name)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->exists(_name));
}
DEFINE_PRIM(hx_Properties_exists, 2);

// DECL: bool getBool(const char* name = NULL, bool defaultValue = false) const;
value hx_Properties_getBool(value thisObj, value name, value defaultValue)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    bool _defaultValue = val_get_bool(defaultValue);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->getBool(_name, _defaultValue));
}
DEFINE_PRIM(hx_Properties_getBool, 3);

// DECL: bool getColor(const char* name, Vector3* out) const;
value hx_Properties_getColor_Str_V3(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Vector3 *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getColor(_name, _out));
}
DEFINE_PRIM(hx_Properties_getColor_Str_V3, 3);

// DECL: bool getColor(const char* name, Vector4* out) const;
value hx_Properties_getColor_Str_V4(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Vector4 *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getColor(_name, _out));
}
DEFINE_PRIM(hx_Properties_getColor_Str_V4, 3);

// DECL: float getFloat(const char* name = NULL) const;
value hx_Properties_getFloat(value thisObj, value name)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getFloat(_name));
}
DEFINE_PRIM(hx_Properties_getFloat, 2);

// DECL: const char* getId() const;
value hx_Properties_getId(value thisObj)
{
    Properties *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getId());
}
DEFINE_PRIM(hx_Properties_getId, 1);

// DECL: int getInt(const char* name = NULL) const;
value hx_Properties_getInt(value thisObj, value name)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getInt(_name));
}
DEFINE_PRIM(hx_Properties_getInt, 2);

// DECL: long getLong(const char* name = NULL) const;
value hx_Properties_getLong(value thisObj, value name)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getLong(_name));
}
DEFINE_PRIM(hx_Properties_getLong, 2);

// DECL: bool getMatrix(const char* name, Matrix* out) const;
value hx_Properties_getMatrix(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Matrix *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getMatrix(_name, _out));
}
DEFINE_PRIM(hx_Properties_getMatrix, 3);

// DECL: Properties* getNamespace(const char* id, bool searchNames = false) const;
value hx_Properties_getNamespace_Str_Bool(value thisObj, value id, value searchNames)
{
    Properties *_thisObj;
    const char *_id = ValueToString(id);
    bool _searchNames = val_get_bool(searchNames);
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getNamespace(_id, _searchNames), false);
}
DEFINE_PRIM(hx_Properties_getNamespace_Str_Bool, 3);

// DECL: const char* getNamespace() const;
value hx_Properties_getNamespace(value thisObj)
{
    Properties *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getNamespace());
}
DEFINE_PRIM(hx_Properties_getNamespace, 1);

// DECL: Properties* getNextNamespace();
value hx_Properties_getNextNamespace(value thisObj)
{
    Properties *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(_thisObj->getNextNamespace(), false);
}
DEFINE_PRIM(hx_Properties_getNextNamespace, 1);

// DECL: const char* getNextProperty(char** value = NULL);
value hx_Properties_getNextProperty(value thisObj, value _value)
{
    Properties *_thisObj;
    char *_val;
    ValueToObject(thisObj, _thisObj);
    const value& result = StringToValue(_thisObj->getNextProperty(&_val));
    SetOutParameterValue(_value, alloc_string(_val));
    return result;
}
DEFINE_PRIM(hx_Properties_getNextProperty, 2);

// DECL: bool getQuaternionFromAxisAngle(const char* name, Quaternion* out) const;
value hx_Properties_getQuaternionFromAxisAngle(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Quaternion *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getQuaternionFromAxisAngle(_name, _out));
}
DEFINE_PRIM(hx_Properties_getQuaternionFromAxisAngle, 3);

// DECL: const char* getString(const char* name = NULL) const;
value hx_Properties_getString(value thisObj, value name)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getString(_name));
}
DEFINE_PRIM(hx_Properties_getString, 2);

// DECL: Type getType(const char* name = NULL) const;
value hx_Properties_getType(value thisObj, value name)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getType(_name));
}
DEFINE_PRIM(hx_Properties_getType, 2);

// DECL: bool getVector2(const char* name, Vector2* out) const;
value hx_Properties_getVector2(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Vector2 *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getVector2(_name, _out));
}
DEFINE_PRIM(hx_Properties_getVector2, 3);

// DECL: bool getVector3(const char* name, Vector3* out) const;
value hx_Properties_getVector3(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Vector3 *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getVector3(_name, _out));
}
DEFINE_PRIM(hx_Properties_getVector3, 3);

// DECL: bool getVector4(const char* name, Vector4* out) const;
value hx_Properties_getVector4(value thisObj, value name, value out)
{
    Properties *_thisObj;
    const char *_name = ValueToString(name);
    Vector4 *_out;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(out, _out);
    return alloc_bool(_thisObj->getVector4(_name, _out));
}
DEFINE_PRIM(hx_Properties_getVector4, 3);

// DECL: void rewind();
void hx_Properties_rewind(value thisObj)
{
    Properties *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->rewind();
}
DEFINE_PRIM(hx_Properties_rewind, 1);

// END
//
