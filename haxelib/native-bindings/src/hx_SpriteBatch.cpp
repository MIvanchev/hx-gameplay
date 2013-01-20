#include "HaxeAPI.h"

// DECL: static SpriteBatch* create(Texture* texture, Effect* effect = NULL, unsigned int initialCapacity = 0);
value hx_SpriteBatch_static_create_Tex_Eff_Int(value texture, value effect, value initialCapacity)
{
    Texture *_texture;
    Effect *_effect;
    unsigned int _initialCapacity = ValueToUint(initialCapacity);
    ValueToObject(texture, _texture);
    ValueToObject(effect, _effect);
    return ObjectToValue(SpriteBatch::create(_texture, _effect, _initialCapacity));
}
DEFINE_PRIM(hx_SpriteBatch_static_create_Tex_Eff_Int, 3);

// DECL: static SpriteBatch* create(const char* texturePath, Effect* effect = NULL, unsigned int initialCapacity = 0);
value hx_SpriteBatch_static_create_Str_Eff_Int(value texturePath, value effect, value initialCapacity)
{
    const char *_texturePath = ValueToString(texturePath);
    Effect *_effect;
    unsigned int _initialCapacity = ValueToUint(initialCapacity);
    ValueToObject(effect, _effect);
    return ObjectToValue(SpriteBatch::create(_texturePath, _effect, _initialCapacity));
}
DEFINE_PRIM(hx_SpriteBatch_static_create_Str_Eff_Int, 3);

// DECL: void draw(const Rectangle& dst, const Rectangle& src, const Vector4& color = Vector4::one());
void hx_SpriteBatch_draw_RctX2_V4(value thisObj, value dst, value src, value color)
{
    SpriteBatch *_thisObj;
    Rectangle *_dst, *_src;
    Vector4 *_color;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    ValueToObject(src, _src);
    ValueToObject(color, _color);
    _thisObj->draw(*_dst, *_src, *_color);
}
DEFINE_PRIM(hx_SpriteBatch_draw_RctX2_V4, 4);

// DECL: void draw(const Vector3& dst, const Rectangle& src, const Vector2& scale, const Vector4& color = Vector4::one());
void hx_SpriteBatch_draw_V3_Rct_V2_V4(value thisObj, value dst, value src, value scale, value color)
{
    SpriteBatch *_thisObj;
    Vector3 *_dst;
    Rectangle *_src;
    Vector2 *_scale;
    Vector4 *_color;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    ValueToObject(src, _src);
    ValueToObject(scale, _scale);
    ValueToObject(color, _color);
    _thisObj->draw(*_dst, *_src, *_scale, *_color);
}
DEFINE_PRIM(hx_SpriteBatch_draw_V3_Rct_V2_V4, 5);

// DECL: void draw(const Vector3& dst, const Rectangle& src, const Vector2& scale, const Vector4& color,
void hx_SpriteBatch_draw_V3_Rct_V2_V4_V2_Flt(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& dst = *args++;
    const value& src = *args++;
    const value& scale = *args++;
    const value& color = *args++;
    const value& rotationPoint = *args++;
    const value& rotationAngle = *args;

    SpriteBatch *_thisObj;
    Vector3 *_dst;
    Rectangle *_src;
    Vector2 *_scale, *_rotationPoint;
    Vector4 *_color;
    float _rotationAngle = ValueToFloat(rotationAngle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    ValueToObject(src, _src);
    ValueToObject(scale, _scale);
    ValueToObject(rotationPoint, _rotationPoint);
    ValueToObject(color, _color);
    _thisObj->draw(*_dst, *_src, *_scale, *_color, *_rotationPoint, _rotationAngle);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_V3_Rct_V2_V4_V2_Flt);

// DECL: void draw(const Vector3& dst, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color,
void hx_SpriteBatch_draw_V3_FltX6_V4_V2_Flt_Bool(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& dst = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& u1 = *args++;
    const value& v1 = *args++;
    const value& u2 = *args++;
    const value& v2 = *args++;
    const value& color = *args++;
    const value& rotationPoint = *args++;
    const value& rotationAngle = *args++;
    const value& positionIsCenter = *args;

    SpriteBatch *_thisObj;
    Vector3 *_dst;
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    Vector4 *_color;
    Vector2 *_rotationPoint;
    float _rotationAngle = ValueToFloat(rotationAngle);
    bool _positionIsCenter = val_get_bool(positionIsCenter);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(dst, _dst);
    ValueToObject(color, _color);
    ValueToObject(rotationPoint, _rotationPoint);
    _thisObj->draw(*_dst, _width, _height, _u1, _v1, _u2, _v2, *_color, *_rotationPoint, _rotationAngle, _positionIsCenter);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_V3_FltX6_V4_V2_Flt_Bool);

// DECL: void draw(const Vector3& position, const Vector3& right, const Vector3& forward, float width, float height,
void hx_SpriteBatch_draw_V3X3_FltX6_V4_V2_Flt(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& position = *args++;
    const value& right = *args++;
    const value& forward = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& u1 = *args++;
    const value& v1 = *args++;
    const value& u2 = *args++;
    const value& v2 = *args++;
    const value& color = *args++;
    const value& rotationPoint = *args++;
    const value& rotationAngle = *args;

    SpriteBatch *_thisObj;
    Vector3 *_position, *_right, *_forward;
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    Vector4 *_color;
    Vector2 *_rotationPoint;
    float _rotationAngle = ValueToFloat(rotationAngle);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(position, _position);
    ValueToObject(right, _right);
    ValueToObject(forward, _forward);
    ValueToObject(color, _color);
    ValueToObject(rotationPoint, _rotationPoint);
    _thisObj->draw(*_position, *_right, *_forward, _width, _height, _u1, _v1, _u2, _v2, *_color, *_rotationPoint, _rotationAngle);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_V3X3_FltX6_V4_V2_Flt);

// DECL: void draw(float x, float y, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color);
void hx_SpriteBatch_draw_FltX8_V4(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& u1 = *args++;
    const value& v1 = *args++;
    const value& u2 = *args++;
    const value& v2 = *args++;
    const value& color = *args;

    SpriteBatch *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    Vector4 *_color;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->draw(_x, _y, _width, _height, _u1, _v1, _u2, _v2, *_color);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_FltX8_V4);

// DECL: void draw(float x, float y, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color, const Rectangle& clip);
void hx_SpriteBatch_draw_FltX8_V4_Rct(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& u1 = *args++;
    const value& v1 = *args++;
    const value& u2 = *args++;
    const value& v2 = *args++;
    const value& color = *args++;
    const value& clip = *args;

    SpriteBatch *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    Vector4 *_color;
    Rectangle *_clip;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    ValueToObject(clip, _clip);
    _thisObj->draw(_x, _y, _width, _height, _u1, _v1, _u2, _v2, *_color, *_clip);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_FltX8_V4_Rct);

// DECL: void draw(float x, float y, float z, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color, bool positionIsCenter = false);
void hx_SpriteBatch_draw_FltX9_V4_Bool(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& z = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& u1 = *args++;
    const value& v1 = *args++;
    const value& u2 = *args++;
    const value& v2 = *args++;
    const value& color = *args++;
    const value& positionIsCenter = *args;

    SpriteBatch *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    Vector4 *_color;
    bool _positionIsCenter = val_get_bool(positionIsCenter);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    _thisObj->draw(_x, _y, _z, _width, _height, _u1, _v1, _u2, _v2, *_color, _positionIsCenter);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_FltX9_V4_Bool);

// DECL: void draw(float x, float y, float z, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color,
void hx_SpriteBatch_draw_FltX9_V4_V2_Flt_Bool(value *args, int nargs)
{
    const value& thisObj = *args++;
    const value& x = *args++;
    const value& y = *args++;
    const value& z = *args++;
    const value& width = *args++;
    const value& height = *args++;
    const value& u1 = *args++;
    const value& v1 = *args++;
    const value& u2 = *args++;
    const value& v2 = *args++;
    const value& color = *args++;
    const value& rotationPoint = *args++;
    const value& rotationAngle = *args++;
    const value& positionIsCenter = *args;

    SpriteBatch *_thisObj;
    float _x = ValueToFloat(x);
    float _y = ValueToFloat(y);
    float _z = ValueToFloat(z);
    float _width = ValueToFloat(width);
    float _height = ValueToFloat(height);
    float _u1 = ValueToFloat(u1);
    float _v1 = ValueToFloat(v1);
    float _u2 = ValueToFloat(u2);
    float _v2 = ValueToFloat(v2);
    Vector4 *_color;
    Vector2 *_rotationPoint;
    float _rotationAngle = ValueToFloat(rotationAngle);
    bool _positionIsCenter = val_get_bool(positionIsCenter);
    ValueToObject(thisObj, _thisObj);
    ValueToObject(color, _color);
    ValueToObject(rotationPoint, _rotationPoint);
    _thisObj->draw(_x, _y, _z, _width, _height, _u1, _v1, _u2, _v2, *_color, *_rotationPoint, _rotationAngle, _positionIsCenter);
}
DEFINE_PRIM_MULT(hx_SpriteBatch_draw_FltX9_V4_V2_Flt_Bool);

// DECL: void finish();
void hx_SpriteBatch_finish(value thisObj)
{
    SpriteBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->finish();
}
DEFINE_PRIM(hx_SpriteBatch_finish, 1);

// DECL: Material* getMaterial() const;
value hx_SpriteBatch_getMaterial(value thisObj)
{
    SpriteBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getMaterial(), true);
}
DEFINE_PRIM(hx_SpriteBatch_getMaterial, 1);

// DECL: const Matrix& getProjectionMatrix() const;
value hx_SpriteBatch_getProjectionMatrix(value thisObj)
{
    SpriteBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getProjectionMatrix(), false);
}
DEFINE_PRIM(hx_SpriteBatch_getProjectionMatrix, 1);

// DECL: Texture::Sampler* getSampler() const;
value hx_SpriteBatch_getSampler(value thisObj)
{
    SpriteBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getSampler(), true);
}
DEFINE_PRIM(hx_SpriteBatch_getSampler, 1);

// DECL: RenderState::StateBlock* getStateBlock() const;
value hx_SpriteBatch_getStateBlock(value thisObj)
{
    SpriteBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getStateBlock(), true);
}
DEFINE_PRIM(hx_SpriteBatch_getStateBlock, 1);

// DECL: void setProjectionMatrix(const Matrix& matrix);
void hx_SpriteBatch_setProjectionMatrix(value thisObj, value matrix)
{
    SpriteBatch *_thisObj;
    Matrix *_matrix;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(matrix, _matrix);
    _thisObj->setProjectionMatrix(*_matrix);
}
DEFINE_PRIM(hx_SpriteBatch_setProjectionMatrix, 2);

// DECL: void start();
void hx_SpriteBatch_start(value thisObj)
{
    SpriteBatch *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->start();
}
DEFINE_PRIM(hx_SpriteBatch_start, 1);

// END
//
