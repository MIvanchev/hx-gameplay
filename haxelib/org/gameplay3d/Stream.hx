package org.gameplay3d;

import haxe.io.BytesData;
import dk.bluewolf.gameplay.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Stream : public GameplayObject
class Stream extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual bool canRead() = 0;
    public function canRead():Bool
    {
        return hx_Stream_canRead(nativeObject);
    }

    // DECL: virtual bool canSeek() = 0;
    public function canSeek():Bool
    {
        return hx_Stream_canSeek(nativeObject);
    }

    // DECL: virtual bool canWrite() = 0;
    public function canWrite():Bool
    {
        return hx_Stream_canWrite(nativeObject);
    }

    // DECL: virtual void close() = 0;
    public function close():Void
    {
        hx_Stream_close(nativeObject);
    }

    // DECL: virtual bool eof() = 0;
    public function eof():Bool
    {
        return hx_Stream_eof(nativeObject);
    }

    // DECL: virtual size_t length() = 0;
    public function length():Int
    {
        return hx_Stream_length(nativeObject);
    }

    // DECL: virtual long int position() = 0;
    public function position():Int
    {
        return hx_Stream_position(nativeObject);
    }

    // DECL: virtual size_t read(void* ptr, size_t size, size_t count) = 0;
    public function read(ptr:OutParameter<BytesData>, size:Int, count:Int):Int
    {
        var _ptr = new NativeOutParameter();
        var result = hx_Stream_read(nativeObject, _ptr.native(), size, count);
        ptr.value = _ptr.value;
        return result;
    }

    // DECL: virtual char* readLine(char* str, int num) = 0;
    public function readLine(str:OutParameter<String>, num:Int):String
    {
        var _str = new NativeOutParameter();
        var result = hx_Stream_readLine(nativeObject, _str.native(), num);
        str.value = _str.value;
        return result;
    }

    // DECL: virtual bool rewind() = 0;
    public function rewind():Bool
    {
        return hx_Stream_rewind(nativeObject);
    }

    // DECL: virtual bool seek(long int offset, int origin) = 0;
    public function seek(offset:Int, origin:Int):Bool
    {
        return hx_Stream_seek(nativeObject, offset, origin);
    }

    // DECL: virtual size_t write(const void* ptr, size_t size, size_t count) = 0;
    public function write(ptr:BytesData, size:Int, count:Int):Int
    {
        return hx_Stream_write(nativeObject, ptr, size, count);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Stream_canRead:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_canRead", 1);
    static var hx_Stream_canSeek:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_canSeek", 1);
    static var hx_Stream_canWrite:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_canWrite", 1);
    static var hx_Stream_close:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_close", 1);
    static var hx_Stream_eof:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_eof", 1);
    static var hx_Stream_length:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_length", 1);
    static var hx_Stream_position:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_position", 1);
    static var hx_Stream_read:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_read", 4);
    static var hx_Stream_readLine:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_readLine", 3);
    static var hx_Stream_rewind:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_rewind", 1);
    static var hx_Stream_seek:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_seek", 3);
    static var hx_Stream_write:Dynamic = cpp.Lib.load("gameplay", "hx_Stream_write", 4);
}

// END
