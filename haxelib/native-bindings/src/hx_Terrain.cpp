#include "HaxeAPI.h"

// DECL: static Terrain* create(HeightField* heightfield, const Vector3& scale = Vector3::one(), unsigned int patchSize = 32,
value hx_Terrain_static_create_HghtFld_V3_IntX2_Flt_Str(value *args, int nargs)
{
    const value& heightfield = *args++;
    const value& scale = *args++;
    const value& patchSize = *args++;
    const value& detailLevels = *args++;
    const value& skirtScale = *args++;
    const value& normalMapPath = *args;

    HeightField *_heightfield;
    Vector3 *_scale;
    unsigned int _patchSize = ValueToUint(patchSize);
    unsigned int _detailLevels = ValueToUint(detailLevels);
    float _skirtScale = ValueToFloat(skirtScale);
    const char *_normalMapPath = ValueToString(normalMapPath);
    ValueToObject(heightfield, _heightfield);
    ValueToObject(scale, _scale);
    return ReferenceToValue(Terrain::create(_heightfield, *_scale, _patchSize, _detailLevels, _skirtScale, _normalMapPath));
}
DEFINE_PRIM_MULT(hx_Terrain_static_create_HghtFld_V3_IntX2_Flt_Str);

// DECL: static Terrain* create(Properties* properties);
value hx_Terrain_static_create_Prop(value properties)
{
    Properties *_properties;
    ValueToObject(properties, _properties);
    return ReferenceToValue(Terrain::create(_properties));
}
DEFINE_PRIM(hx_Terrain_static_create_Prop, 1);

// DECL: static Terrain* create(const char* path);
value hx_Terrain_static_create_Str(value path)
{
    const char *_path = ValueToString(path);
    return ReferenceToValue(Terrain::create(_path));
}
DEFINE_PRIM(hx_Terrain_static_create_Str, 1);

// DECL: void draw(bool wireframe = false);
void hx_Terrain_draw(value thisObj, value wireframe)
{
    Terrain *_thisObj;
    bool _wireframe = val_get_bool(wireframe);
    ValueToObject(thisObj, _thisObj);
    _thisObj->draw(_wireframe);
}
DEFINE_PRIM(hx_Terrain_draw, 2);

// DECL: const BoundingBox& getBoundingBox() const;
value hx_Terrain_getBoundingBox(value thisObj)
{
    Terrain *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBoundingBox(), false);
}
DEFINE_PRIM(hx_Terrain_getBoundingBox, 1);

// DECL: float getHeight(float x, float z) const;
value hx_Terrain_getHeight(value thisObj, value x, value z)
{
    Terrain *_thisObj;
    float _x = ValueToFloat(x);
    float _z = ValueToFloat(z);
    ValueToObject(thisObj, _thisObj);
    return alloc_float(_thisObj->getHeight(_x, _z));
}
DEFINE_PRIM(hx_Terrain_getHeight, 3);

// DECL: Node* getNode() const;
value hx_Terrain_getNode(value thisObj)
{
    Terrain *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getNode(), true, true);
}
DEFINE_PRIM(hx_Terrain_getNode, 1);

// DECL: unsigned int getPatchCount() const;
value hx_Terrain_getPatchCount(value thisObj)
{
    Terrain *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getPatchCount());
}
DEFINE_PRIM(hx_Terrain_getPatchCount, 1);

// DECL: unsigned int getTriangleCount() const;
value hx_Terrain_getTriangleCount(value thisObj)
{
    Terrain *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getTriangleCount());
}
DEFINE_PRIM(hx_Terrain_getTriangleCount, 1);

// DECL: unsigned int getVisiblePatchCount() const;
value hx_Terrain_getVisiblePatchCount(value thisObj)
{
    Terrain *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getVisiblePatchCount());
}
DEFINE_PRIM(hx_Terrain_getVisiblePatchCount, 1);

// DECL: unsigned int getVisibleTriangleCount() const;
value hx_Terrain_getVisibleTriangleCount(value thisObj)
{
    Terrain *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getVisibleTriangleCount());
}
DEFINE_PRIM(hx_Terrain_getVisibleTriangleCount, 1);

// DECL: bool isFlagSet(Flags flag) const;
value hx_Terrain_isFlagSet(value thisObj, value flag)
{
    Terrain *_thisObj;
    Terrain::Flags _flag;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(flag, _flag);
    return alloc_bool(_thisObj->isFlagSet(_flag));
}
DEFINE_PRIM(hx_Terrain_isFlagSet, 2);

// DECL: void setFlag(Flags flag, bool on);
void hx_Terrain_setFlag(value thisObj, value flag, value on)
{
    Terrain *_thisObj;
    Terrain::Flags _flag;
    bool _on = val_get_bool(on);
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(flag, _flag);
    _thisObj->setFlag(_flag, _on);
}
DEFINE_PRIM(hx_Terrain_setFlag, 3);

// DECL: bool setLayer(int index,
value hx_Terrain_setLayer(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& index = *args++;
    const value& texturePath = *args++;
    const value& textureRepeat = *args++;
    const value& blendPath = *args++;
    const value& blendChannel = *args++;
    const value& row = *args++;
    const value& column = *args;

    Terrain *_thisObj;
    int _index = val_get_int(index);
    const char *_texturePath = ValueToString(texturePath);
    Vector2 *_textureRepeat;
    const char *_blendPath = ValueToString(blendPath);
    int _blendChannel = val_get_int(blendChannel);
    int _row = val_get_int(row);
    int _column = val_get_int(column);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(textureRepeat, _textureRepeat);
    return alloc_bool(_thisObj->setLayer(_index, _texturePath, *_textureRepeat, _blendPath, _blendChannel, _row, _column));
}
DEFINE_PRIM_MULT(hx_Terrain_setLayer);

// DECL: void transformChanged(Transform* transform, long cookie);
void hx_Terrain_transformChanged(value thisObj, value transform, value cookie)
{
    Terrain *_thisObj;
    Transform *_transform;
    long _cookie = ValueToLong(cookie);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(transform, _transform);
    _thisObj->transformChanged(_transform, _cookie);
}
DEFINE_PRIM(hx_Terrain_transformChanged, 3);

// END
//
