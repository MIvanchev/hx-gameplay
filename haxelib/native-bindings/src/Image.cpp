#include "HaxeAPI.h"

// DECL: static Image* create(const char* path);
value hx_Image_static_create(value path)
{
    const char *_path = ValueToString(path);
    return ReferenceToValue(Image::create(_path));
}
DEFINE_PRIM(hx_Image_static_create, 1);

// DECL: inline unsigned char* getData() const;
value hx_Image_getData(value thisObj)
{
    Image *_thisObj;
    ValueToObject(thisObj, _thisObj);
    unsigned char *data = _thisObj->getData();

    unsigned long length = _thisObj->getWidth() * _thisObj->getHeight();
    switch (_thisObj->getFormat())
    {
    case Image::Format::RGB:
        length *= 3;
        break;
    case Image::Format::RGBA:
        length *= 4;
        break;
    }

    return BufferToValue(data, length);
}
DEFINE_PRIM(hx_Image_getData, 1);

// DECL: inline Format getFormat() const;
value hx_Image_getFormat(value thisObj)
{
    Image *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return EnumToValue(_thisObj->getFormat());
}
DEFINE_PRIM(hx_Image_getFormat, 1);

// DECL: inline unsigned int getHeight() const;
value hx_Image_getHeight(value thisObj)
{
    Image *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getHeight());
}
DEFINE_PRIM(hx_Image_getHeight, 1);

// DECL: inline unsigned int getWidth() const;
value hx_Image_getWidth(value thisObj)
{
    Image *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getWidth());
}
DEFINE_PRIM(hx_Image_getWidth, 1);

// END
//
