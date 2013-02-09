#include "HaxeAPI.h"

// DECL: static HeightField* create(unsigned int rows, unsigned int columns);
value hx_HeightField_static_create(value rows, value columns)
{
    unsigned int _rows = ValueToUint(rows);
    unsigned int _columns = ValueToUint(columns);
    return ReferenceToValue(HeightField::create(_rows, _columns));
}
DEFINE_PRIM(hx_HeightField_static_create, 2);

// DECL: static HeightField* createFromImage(const char* path, float heightMin = 0, float heightMax = 1);
value hx_HeightField_static_createFromImage(value path, value heightMin, value heightMax)
{
    const char *_path = ValueToString(path);
    float _heightMin = ValueToFloat(heightMin);
    float _heightMax = ValueToFloat(heightMax);
    return ReferenceToValue(HeightField::createFromImage(_path, _heightMin, _heightMax));
}
DEFINE_PRIM(hx_HeightField_static_createFromImage, 3);

// DECL: static HeightField* createFromRAW(const char* path, unsigned int width, unsigned int height, float heightMin = 0, float heightMax = 1);
value hx_HeightField_static_createFromRAW(value path, value width, value height, value heightMin, value heightMax)
{
    const char *_path = ValueToString(path);
    unsigned int _width = ValueToUint(width);
    unsigned int _height = ValueToUint(height);
    float _heightMin = ValueToFloat(heightMin);
    float _heightMax = ValueToFloat(heightMax);
    return ReferenceToValue(HeightField::createFromRAW(_path, _width, _height, _heightMin, _heightMax));
}
DEFINE_PRIM(hx_HeightField_static_createFromRAW, 5);

// DECL: float* getArray() const;
value hx_HeightField_getArray(value thisObj)
{
    HeightField *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ArrayToValue(_thisObj->getArray());
}
DEFINE_PRIM(hx_HeightField_getArray, 1);

// DECL: unsigned int getColumnCount() const;
value hx_HeightField_getColumnCount(value thisObj)
{
    HeightField *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getColumnCount());
}
DEFINE_PRIM(hx_HeightField_getColumnCount, 1);

// DECL: float getHeight(float column, float row) const;
value hx_HeightField_getHeight(value thisObj, value column, value row)
{
    HeightField *_thisObj;
    float _column = ValueToFloat(column);
    float _row = ValueToFloat(row);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getHeight(_column, _row));
}
DEFINE_PRIM(hx_HeightField_getHeight, 3);

// DECL: unsigned int getRowCount() const;
value hx_HeightField_getRowCount(value thisObj)
{
    HeightField *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getRowCount());
}
DEFINE_PRIM(hx_HeightField_getRowCount, 1);

// END
//
