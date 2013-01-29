package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.immutable.IRectangle;
import org.gameplay3d.immutable.IVector2;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.immutable.IVector4;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class SpriteBatch : public GameplayObject
class SpriteBatch extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _projectionMatrix:Matrix;

    // DECL: static SpriteBatch* create(Texture* texture, Effect* effect = NULL, unsigned int initialCapacity = 0);
    public static function create_Tex_Eff_Int(texture:Texture, effect:Effect = null, initialCapacity:Int = 0):SpriteBatch
    {
        return SpriteBatch.wrap(hx_SpriteBatch_static_create_Tex_Eff_Int(texture.native(), effect.native(), initialCapacity));
    }

    // DECL: static SpriteBatch* create(const char* texturePath, Effect* effect = NULL, unsigned int initialCapacity = 0);
    public static function create_Str_Eff_Int(texturePath:String, effect:Effect = null, initialCapacity:Int = 0):SpriteBatch
    {
        return SpriteBatch.wrap(hx_SpriteBatch_static_create_Str_Eff_Int(texturePath, effect.native(), initialCapacity));
    }

    // DECL: void draw(const Rectangle& dst, const Rectangle& src, const Vector4& color = Vector4::one());
    public function draw_RctX2_V4(dst:IRectangle, src:IRectangle, color:IVector4):Void
    {
        hx_SpriteBatch_draw_RctX2_V4(nativeObject, dst.native(), src.native(), color.native());
    }

    // DECL: void draw(const Vector3& dst, const Rectangle& src, const Vector2& scale, const Vector4& color = Vector4::one());
    public function draw_V3_Rct_V2_V4(dst:IVector3, src:IRectangle, scale:IVector2, color:IVector4):Void
    {
        hx_SpriteBatch_draw_V3_Rct_V2_V4(nativeObject, dst.native(), src.native(), scale.native(), color.native());
    }

    // DECL: void draw(const Vector3& dst, const Rectangle& src, const Vector2& scale, const Vector4& color,
    public function draw_V3_Rct_V2_V4_V2_Flt(dst:IVector3, src:IRectangle, scale:IVector2, color:IVector4, rotationPoint:IVector2, rotationAngle:Float):Void
    {
        hx_SpriteBatch_draw_V3_Rct_V2_V4_V2_Flt(nativeObject, dst.native(), src.native(), scale.native(), color.native(), rotationPoint.native(), rotationAngle);
    }

    // DECL: void draw(const Vector3& dst, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color,
    public function draw_V3_FltX6_V4_V2_Flt_Bool(dst:IVector3, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, color:IVector4, rotationPoint:IVector2, rotationAngle:Float, positionIsCenter:Bool = false):Void
    {
        hx_SpriteBatch_draw_V3_FltX6_V4_V2_Flt_Bool(nativeObject, dst.native(), width, height, u1, v1, u2, v2, color.native(), rotationPoint.native(), rotationAngle, positionIsCenter);
    }

    // DECL: void draw(const Vector3& position, const Vector3& right, const Vector3& forward, float width, float height,
    public function draw_V3X3_FltX6_V4_V2_Flt(position:IVector3, right:IVector3, forward:IVector3, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, color:IVector4, rotationPoint:IVector2, rotationAngle:Float):Void
    {
        hx_SpriteBatch_draw_V3X3_FltX6_V4_V2_Flt(nativeObject, position.native(), right.native(), forward.native(), width, height, u1, v1, u2, v2, color.native(), rotationPoint.native(), rotationAngle);
    }

    // DECL: void draw(float x, float y, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color);
    public function draw_FltX8_V4(x:Float, y:Float, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, color:IVector4):Void
    {
        hx_SpriteBatch_draw_FltX8_V4(nativeObject, x, y, width, height, u1, v1, u2, v2, color.native());
    }

    // DECL: void draw(float x, float y, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color, const Rectangle& clip);
    public function draw_FltX8_V4_Rct(x:Float, y:Float, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, color:IVector4, clip:IRectangle):Void
    {
        hx_SpriteBatch_draw_FltX8_V4_Rct(nativeObject, x, y, width, height, u1, v1, u2, v2, color.native(), clip.native());
    }

    // DECL: void draw(float x, float y, float z, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color, bool positionIsCenter = false);
    public function draw_FltX9_V4_Bool(x:Float, y:Float, z:Float, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, color:IVector4, positionIsCenter:Bool = false):Void
    {
        hx_SpriteBatch_draw_FltX9_V4_Bool(nativeObject, x, y, z, width, height, u1, v1, u2, v2, color.native(), positionIsCenter);
    }

    // DECL: void draw(float x, float y, float z, float width, float height, float u1, float v1, float u2, float v2, const Vector4& color,
    public function draw_FltX9_V4_V2_Flt_Bool(x:Float, y:Float, z:Float, width:Float, height:Float, u1:Float, v1:Float, u2:Float, v2:Float, color:IVector4, rotationPoint:IVector2, rotationAngle:Float, positionIsCenter:Bool = false):Void
    {
        hx_SpriteBatch_draw_FltX9_V4_V2_Flt_Bool(nativeObject, x, y, z, width, height, u1, v1, u2, v2, color.native(), rotationPoint.native(), rotationAngle, positionIsCenter);
    }

    // DECL: void finish();
    public function finish():Void
    {
        hx_SpriteBatch_finish(nativeObject);
    }

    // DECL: Material* getMaterial() const;
    public function getMaterial():Material
    {
        return Material.wrap(hx_SpriteBatch_getMaterial(nativeObject));
    }

    // DECL: const Matrix& getProjectionMatrix() const;
    public function getProjectionMatrix():IMatrix
    {
        return Macros.impersonateResult(_projectionMatrix, hx_SpriteBatch_getProjectionMatrix(nativeObject));
    }

    // DECL: Texture::Sampler* getSampler() const;
    public function getSampler():Texture_Sampler
    {
        return Texture_Sampler.wrap(hx_SpriteBatch_getSampler(nativeObject));
    }

    // DECL: RenderState::StateBlock* getStateBlock() const;
    public function getStateBlock():RenderState_StateBlock
    {
        return RenderState_StateBlock.wrap(hx_SpriteBatch_getStateBlock(nativeObject));
    }

    // DECL: void setProjectionMatrix(const Matrix& matrix);
    public function setProjectionMatrix(matrix:IMatrix):Void
    {
        hx_SpriteBatch_setProjectionMatrix(nativeObject, matrix.native());
    }

    // DECL: void start();
    public function start():Void
    {
        hx_SpriteBatch_start(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_SpriteBatch_static_create_Tex_Eff_Int:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_static_create_Tex_Eff_Int", 3);
    static var hx_SpriteBatch_static_create_Str_Eff_Int:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_static_create_Str_Eff_Int", 3);
    static var hx_SpriteBatch_draw_RctX2_V4:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_RctX2_V4", 4);
    static var hx_SpriteBatch_draw_V3_Rct_V2_V4:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_V3_Rct_V2_V4", 5);
    static var hx_SpriteBatch_draw_V3_Rct_V2_V4_V2_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_V3_Rct_V2_V4_V2_Flt", -1);
    static var hx_SpriteBatch_draw_V3_FltX6_V4_V2_Flt_Bool:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_V3_FltX6_V4_V2_Flt_Bool", -1);
    static var hx_SpriteBatch_draw_V3X3_FltX6_V4_V2_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_V3X3_FltX6_V4_V2_Flt", -1);
    static var hx_SpriteBatch_draw_FltX8_V4:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_FltX8_V4", -1);
    static var hx_SpriteBatch_draw_FltX8_V4_Rct:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_FltX8_V4_Rct", -1);
    static var hx_SpriteBatch_draw_FltX9_V4_Bool:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_FltX9_V4_Bool", -1);
    static var hx_SpriteBatch_draw_FltX9_V4_V2_Flt_Bool:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_draw_FltX9_V4_V2_Flt_Bool", -1);
    static var hx_SpriteBatch_finish:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_finish", 1);
    static var hx_SpriteBatch_getMaterial:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_getMaterial", 1);
    static var hx_SpriteBatch_getProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_getProjectionMatrix", 1);
    static var hx_SpriteBatch_getSampler:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_getSampler", 1);
    static var hx_SpriteBatch_getStateBlock:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_getStateBlock", 1);
    static var hx_SpriteBatch_setProjectionMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_setProjectionMatrix", 2);
    static var hx_SpriteBatch_start:Dynamic = cpp.Lib.load("gameplay", "hx_SpriteBatch_start", 1);
}

// END
