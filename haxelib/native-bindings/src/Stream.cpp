#include "HaxeAPI.h"

// DECL: virtual bool canRead() = 0;
value hx_Stream_canRead(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->canRead());
}
DEFINE_PRIM(hx_Stream_canRead, 1);

// DECL: virtual bool canSeek() = 0;
value hx_Stream_canSeek(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->canSeek());
}
DEFINE_PRIM(hx_Stream_canSeek, 1);

// DECL: virtual bool canWrite() = 0;
value hx_Stream_canWrite(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->canWrite());
}
DEFINE_PRIM(hx_Stream_canWrite, 1);

// DECL: virtual void close() = 0;
void hx_Stream_close(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    _thisObj->close();
}
DEFINE_PRIM(hx_Stream_close, 1);

// DECL: virtual bool eof() = 0;
value hx_Stream_eof(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->eof());
}
DEFINE_PRIM(hx_Stream_eof, 1);

// DECL: virtual size_t length() = 0;
value hx_Stream_length(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->length());
}
DEFINE_PRIM(hx_Stream_length, 1);

// DECL: virtual long int position() = 0;
value hx_Stream_position(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->position());
}
DEFINE_PRIM(hx_Stream_position, 1);

// DECL: virtual size_t read(void* ptr, size_t size, size_t count) = 0;
value hx_Stream_read(value thisObj, value ptr, value size, value count)
{
    Stream *_thisObj;
    size_t _size = ValueToSizeT(size);
    size_t _count = ValueToSizeT(count);
    ValueToObject(thisObj, _thisObj);

    const buffer& _ptr = alloc_buffer_len(_size * _count);
    size_t result = _thisObj->read(buffer_data(_ptr), _size, _count);

    SetOutParameterValue(ptr, buffer_val(_ptr));

    return alloc_int(result);
}
DEFINE_PRIM(hx_Stream_read, 4);

// DECL: virtual char* readLine(char* str, int num) = 0;
value hx_Stream_readLine(value thisObj, value str, value num)
{
    Stream *_thisObj;
    int _num = val_get_int(num);
    ValueToObject(thisObj, _thisObj);

    const buffer& _ptr = alloc_buffer_len(sizeof(char) * _num);
    char *data = buffer_data(_ptr);
    _thisObj->readLine(data, _num);
    const value& result = StringToValue(data);
    SetOutParameterValue(str, result);

    return result;
}
DEFINE_PRIM(hx_Stream_readLine, 3);

// DECL: virtual bool rewind() = 0;
value hx_Stream_rewind(value thisObj)
{
    Stream *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->rewind());
}
DEFINE_PRIM(hx_Stream_rewind, 1);

// DECL: virtual bool seek(long int offset, int origin) = 0;
value hx_Stream_seek(value thisObj, value offset, value origin)
{
    Stream *_thisObj;
    long _offset = ValueToLong(offset);
    int _origin = val_get_int(origin);
    ValueToObject(thisObj, _thisObj);
    return alloc_bool(_thisObj->seek(_offset, _origin));
}
DEFINE_PRIM(hx_Stream_seek, 3);

// DECL: virtual size_t write(const void* ptr, size_t size, size_t count) = 0;
value hx_Stream_write(value thisObj, value ptr, value size, value count)
{
    Stream *_thisObj;
    void *_ptr;
    size_t _size = ValueToSizeT(size);
    size_t _count = ValueToSizeT(count);
    ValueToObject(thisObj, _thisObj);
    ValueToBuffer(ptr, _ptr);
    return alloc_int(_thisObj->write(_ptr, _size, _count));
}
DEFINE_PRIM(hx_Stream_write, 4);

// END
//
