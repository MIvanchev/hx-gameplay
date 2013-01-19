#include "HaxeAPI.h"

// DECL: static Texture* create(Format format, unsigned int width, unsigned int height, unsigned char* data, bool generateMipmaps = false);
value hx_Texture_static_create_IntX3_Dat_Bool(value format, value width, value height, value data, value generateMipmaps)
{
    Texture::Format _format;
    unsigned int _width = ValueToUint(width);
    unsigned int _height = ValueToUint(height);
    unsigned char *_data;
    bool _generateMipmaps = val_get_bool(generateMipmaps);
    ValueToEnum(format, _format);
    ValueToBuffer(data, _data);
    return ReferenceToValue(Texture::create(_format, _width, _height, _data, _generateMipmaps));
}
DEFINE_PRIM(hx_Texture_static_create_IntX3_Dat_Bool, 5);

// DECL: static Texture* create(Image* image, bool generateMipmaps = false);
value hx_Texture_static_create_Img_Bool(value image, value generateMipmaps)
{
    Image *_image;
    bool _generateMipmaps = val_get_bool(generateMipmaps);
    ValueToObject(image, _image);
    return ReferenceToValue(Texture::create(_image, _generateMipmaps));
}
DEFINE_PRIM(hx_Texture_static_create_Img_Bool, 2);

// DECL: static Texture* create(TextureHandle handle, int width, int height, Format format = UNKNOWN);
value hx_Texture_static_create_Hndl_IntX3(value handle, value width, value height, value format)
{
    TextureHandle _handle;
    int _width = val_get_int(width);
    int _height = val_get_int(height);
    Texture::Format _format;
    ValueToHandle(handle, _handle);
    ValueToEnum(format, _format);
    return ReferenceToValue(Texture::create(_handle, _width, _height, _format));
}
DEFINE_PRIM(hx_Texture_static_create_Hndl_IntX3, 4);

// DECL: static Texture* create(const char* path, bool generateMipmaps = false);
value hx_Texture_static_create_Str_Bool(value path, value generateMipmaps)
{
    const char *_path = ValueToString(path);
    bool _generateMipmaps = val_get_bool(generateMipmaps);
    return ReferenceToValue(Texture::create(_path, _generateMipmaps));
}
DEFINE_PRIM(hx_Texture_static_create_Str_Bool, 2);

// DECL: void generateMipmaps();
void hx_Texture_generateMipmaps(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->generateMipmaps();
}
DEFINE_PRIM(hx_Texture_generateMipmaps, 1);

// DECL: Format getFormat() const;
value hx_Texture_getFormat(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getFormat());
}
DEFINE_PRIM(hx_Texture_getFormat, 1);

// DECL: TextureHandle getHandle() const;
value hx_Texture_getHandle(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return HandleToValue(_thisObj->getHandle());
}
DEFINE_PRIM(hx_Texture_getHandle, 1);

// DECL: unsigned int getHeight() const;
value hx_Texture_getHeight(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getHeight());
}
DEFINE_PRIM(hx_Texture_getHeight, 1);

// DECL: const char* getPath() const;
value hx_Texture_getPath(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return StringToValue(_thisObj->getPath());
}
DEFINE_PRIM(hx_Texture_getPath, 1);

// DECL: unsigned int getWidth() const;
value hx_Texture_getWidth(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getWidth());
}
DEFINE_PRIM(hx_Texture_getWidth, 1);

// DECL: bool isCompressed() const;
value hx_Texture_isCompressed(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isCompressed());
}
DEFINE_PRIM(hx_Texture_isCompressed, 1);

// DECL: bool isMipmapped() const;
value hx_Texture_isMipmapped(value thisObj)
{
    Texture *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->isMipmapped());
}
DEFINE_PRIM(hx_Texture_isMipmapped, 1);

// DECL: void setFilterMode(Filter minificationFilter, Filter magnificationFilter);
void hx_Texture_setFilterMode(value thisObj, value minificationFilter, value magnificationFilter)
{
    Texture *_thisObj;
    Texture::Filter _minificationFilter, _magnificationFilter;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(minificationFilter, _minificationFilter);
    ValueToEnum(magnificationFilter, _magnificationFilter);
    _thisObj->setFilterMode(_minificationFilter, _magnificationFilter);
}
DEFINE_PRIM(hx_Texture_setFilterMode, 3);

// DECL: void setWrapMode(Wrap wrapS, Wrap wrapT);
void hx_Texture_setWrapMode(value thisObj, value wrapS, value wrapT)
{
    Texture *_thisObj;
    Texture::Wrap _wrapS, _wrapT;
    ValueToObject(thisObj, _thisObj);
    ValueToEnum(wrapS, _wrapS);
    ValueToEnum(wrapT, _wrapT);
    _thisObj->setWrapMode(_wrapS, _wrapT);
}
DEFINE_PRIM(hx_Texture_setWrapMode, 3);

// END
//
