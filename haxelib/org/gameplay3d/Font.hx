package org.gameplay3d;

import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.GameplayObject;
using org.gameplay3d.intern.NativeBinding;

// DECL: class Font : public Ref
class Font extends GameplayObject implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Font* create(const char* path, const char* id = NULL);
    public static function create(path:String, id:String = null):Font
    {
        return Font.wrap(hx_Font_static_create(path, id));
    }

    // DECL: Text* createText(const char* text, const Rectangle& area, const Vector4& color, unsigned int size = 0,
    public function createText(text:String, area:IRectangle, color:IVector4, size:Int = 0, justify:Int = Font_Justify.ALIGN_TOP_LEFT, wrap:Bool = true, rightToLeft:Bool = false, clip:Rectangle = null):Font_Text
    {
        return Font_Text.wrap(hx_Font_createText(nativeObject, text, area.native(), color.native(), size, justify, wrap, rightToLeft, clip.native()));
    }

    // DECL: void drawText(Text* text);
    public function drawText_Txt(text:Font_Text):Void
    {
        hx_Font_drawText_Txt(nativeObject, text.native());
    }

    // DECL: void drawText(const char* text, const Rectangle& area, const Vector4& color, unsigned int size = 0,
    public function drawText_Str_Rct_V4_IntX2_BoolX2_Rct(text:String, area:IRectangle, color:IVector4, size:Int = 0, justify:Int = Font_Justify.ALIGN_TOP_LEFT, wrap:Bool = true, rightToLeft:Bool = false, clip:Rectangle = null):Void
    {
        hx_Font_drawText_Str_Rct_V4_IntX2_BoolX2_Rct(nativeObject, text, area.native(), color.native(), size, justify, wrap, rightToLeft, clip.native());
    }

    // DECL: void drawText(const char* text, int x, int y, const Vector4& color, unsigned int size = 0, bool rightToLeft = false);
    public function drawText_Str_IntX2_V4_Int_Bool(text:String, x:Int, y:Int, color:IVector4, size:Int = 0, rightToLeft:Bool = false):Void
    {
        hx_Font_drawText_Str_IntX2_V4_Int_Bool(nativeObject, text, x, y, color.native(), size, rightToLeft);
    }

    // DECL: void drawText(const char* text, int x, int y, float red, float green, float blue, float alpha, unsigned int size = 0, bool rightToLeft = false);
    public function drawText_Str_IntX2_FltX4_Int_Bool(text:String, x:Int, y:Int, red:Float, green:Float, blue:Float, alpha:Float, size:Int = 0, rightToLeft:Bool = false):Void
    {
        hx_Font_drawText_Str_IntX2_FltX4_Int_Bool(nativeObject, text, x, y, red, green, blue, alpha, size, rightToLeft);
    }

    // DECL: void finish();
    public function finish():Void
    {
        hx_Font_finish(nativeObject);
    }

    // DECL: int getIndexAtLocation(const char* text, const Rectangle& clip, unsigned int size, const Vector2& inLocation, Vector2* outLocation,
    public function getIndexAtLocation(text:String, clip:IRectangle, size:Int, inLocation:IVector2, outLocation:Vector2, justify:Int = Font_Justify.ALIGN_TOP_LEFT, wrap:Bool = true, rightToLeft:Bool = false):Int
    {
        return hx_Font_getIndexAtLocation(nativeObject, text, clip.native(), size, inLocation.native(), outLocation.native(), justify, wrap, rightToLeft);
    }

    // DECL: static Justify getJustify(const char* justify);
    public static function getJustify(justify:String):Int
    {
        return hx_Font_static_getJustify(justify);
    }

    // DECL: void getLocationAtIndex(const char* text, const Rectangle& clip, unsigned int size, Vector2* outLocation, const unsigned int destIndex,
    public function getLocationAtIndex(text:String, clip:IRectangle, size:Int, outLocation:Vector2, destIndex:Int, justify:Int = Font_Justify.ALIGN_TOP_LEFT, wrap:Bool = true, rightToLeft:Bool = false):Void
    {
        hx_Font_getLocationAtIndex(nativeObject, text, clip.native(), size, outLocation.native(), destIndex, justify, wrap, rightToLeft);
    }

    // DECL: unsigned int getSize();
    public function getSize():Int
    {
        return hx_Font_getSize(nativeObject);
    }

    // DECL: SpriteBatch* getSpriteBatch() const;
    public function getSpriteBatch():SpriteBatch
    {
        return SpriteBatch.wrap(hx_Font_getSpriteBatch(nativeObject));
    }

    // DECL: void measureText(const char* text, const Rectangle& clip, unsigned int size, Rectangle* out,
    public function measureText_Str_Rct_Int_Rct_Int_BoolX2(text:String, clip:IRectangle, size:Int, out:Rectangle, justify:Int = Font_Justify.ALIGN_TOP_LEFT, wrap:Bool = true, ignoreClip:Bool = false):Void
    {
        hx_Font_measureText_Str_Rct_Int_Rct_Int_BoolX2(nativeObject, text, clip.native(), size, out.native(), justify, wrap, ignoreClip);
    }

    // DECL: void measureText(const char* text, unsigned int size, unsigned int* widthOut, unsigned int* heightOut);
    public function measureText_Str_Int_OutIntX2(text:String, size:Int, widthOut:OutParameter<Int>, heightOut:OutParameter<Int>):Void
    {
        hx_Font_measureText_Str_Int_OutIntX2(nativeObject, text, size, widthOut, heightOut);
    }

    // DECL: void start();
    public function start():Void
    {
        hx_Font_start(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Font_static_create = NativeInterface.loadMember(Font, "static_create", 2);
    static var hx_Font_createText = NativeInterface.loadMember(Font, "createText", -1);
    static var hx_Font_drawText_Txt = NativeInterface.loadMember(Font, "drawText_Txt", 2);
    static var hx_Font_drawText_Str_Rct_V4_IntX2_BoolX2_Rct = NativeInterface.loadMember(Font, "drawText_Str_Rct_V4_IntX2_BoolX2_Rct", -1);
    static var hx_Font_drawText_Str_IntX2_V4_Int_Bool = NativeInterface.loadMember(Font, "drawText_Str_IntX2_V4_Int_Bool", -1);
    static var hx_Font_drawText_Str_IntX2_FltX4_Int_Bool = NativeInterface.loadMember(Font, "drawText_Str_IntX2_FltX4_Int_Bool", -1);
    static var hx_Font_finish = NativeInterface.loadMember(Font, "finish", 1);
    static var hx_Font_getIndexAtLocation = NativeInterface.loadMember(Font, "getIndexAtLocation", -1);
    static var hx_Font_static_getJustify = NativeInterface.loadMember(Font, "static_getJustify", 1);
    static var hx_Font_getLocationAtIndex = NativeInterface.loadMember(Font, "getLocationAtIndex", -1);
    static var hx_Font_getSize = NativeInterface.loadMember(Font, "getSize", 1);
    static var hx_Font_getSpriteBatch = NativeInterface.loadMember(Font, "getSpriteBatch", 1);
    static var hx_Font_measureText_Str_Rct_Int_Rct_Int_BoolX2 = NativeInterface.loadMember(Font, "measureText_Str_Rct_Int_Rct_Int_BoolX2", -1);
    static var hx_Font_measureText_Str_Int_OutIntX2 = NativeInterface.loadMember(Font, "measureText_Str_Int_OutIntX2", 5);
    static var hx_Font_start = NativeInterface.loadMember(Font, "start", 1);
}

// END
