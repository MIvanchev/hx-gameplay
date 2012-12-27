package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Light : public Ref
class Light extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Light* createDirectional(const Vector3& color);
    public static function createDirectional_V3(color:Vector3):Light
    {
        return Light.wrap(hx_Light_static_createDirectional_V3(color.native()));
    }

    // DECL: static Light* createDirectional(float red, float green, float blue);
    public static function createDirectional_FltX3(red:Float, green:Float, blue:Float):Light
    {
        return Light.wrap(hx_Light_static_createDirectional_FltX3(red, green, blue));
    }

    // DECL: static Light* createPoint(const Vector3& color, float range);
    public static function createPoint_V3_Flt(color:Vector3, range:Float):Light
    {
        return Light.wrap(hx_Light_static_createPoint_V3_Flt(color.native(), range));
    }

    // DECL: static Light* createPoint(float red, float green, float blue, float range);
    public static function createPoint_FltX4(red:Float, green:Float, blue:Float, range:Float):Light
    {
        return Light.wrap(hx_Light_static_createPoint_FltX4(red, green, blue, range));
    }

    // DECL: static Light* createSpot(const Vector3& color, float range, float innerAngle, float outerAngle);
    public static function createSpot_V3_FltX3(color:Vector3, range:Float, innerAngle:Float, outerAngle:Float):Light
    {
        return Light.wrap(hx_Light_static_createSpot_V3_FltX3(color.native(), range, innerAngle, outerAngle));
    }

    // DECL: static Light* createSpot(float red, float green, float blue, float range, float innerAngle, float outerAngle);
    public static function createSpot_FltX6(red:Float, green:Float, blue:Float, range:Float, innerAngle:Float, outerAngle:Float):Light
    {
        return Light.wrap(hx_Light_static_createSpot_FltX6(red, green, blue, range, innerAngle, outerAngle));
    }

    // DECL: const Vector3& getColor() const;
    public function getColor():Vector3
    {
        return Vector3.wrap(hx_Light_getColor(nativeObject));
    }

    // DECL: float getInnerAngle() const;
    public function getInnerAngle():Float
    {
        return hx_Light_getInnerAngle(nativeObject);
    }

    // DECL: float getInnerAngleCos() const;
    public function getInnerAngleCos():Float
    {
        return hx_Light_getInnerAngleCos(nativeObject);
    }

    // DECL: Type getLightType() const;
    public function getLightType():Int
    {
        return hx_Light_getLightType(nativeObject);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_Light_getNode(nativeObject));
    }

    // DECL: float getOuterAngle() const;
    public function getOuterAngle():Float
    {
        return hx_Light_getOuterAngle(nativeObject);
    }

    // DECL: float getOuterAngleCos() const;
    public function getOuterAngleCos():Float
    {
        return hx_Light_getOuterAngleCos(nativeObject);
    }

    // DECL: float getRange() const;
    public function getRange():Float
    {
        return hx_Light_getRange(nativeObject);
    }

    // DECL: float getRangeInverse() const;
    public function getRangeInverse():Float
    {
        return hx_Light_getRangeInverse(nativeObject);
    }

    // DECL: void setColor(const Vector3& color);
    public function setColor_V3(color:Vector3):Void
    {
        hx_Light_setColor_V3(nativeObject, color.native());
    }

    // DECL: void setColor(float red, float green, float blue);
    public function setColor_FltX3(red:Float, green:Float, blue:Float):Void
    {
        hx_Light_setColor_FltX3(nativeObject, red, green, blue);
    }

    // DECL: void setInnerAngle(float innerAngle);
    public function setInnerAngle(innerAngle:Float):Void
    {
        hx_Light_setInnerAngle(nativeObject, innerAngle);
    }

    // DECL: void setOuterAngle(float outerAngle);
    public function setOuterAngle(outerAngle:Float):Void
    {
        hx_Light_setOuterAngle(nativeObject, outerAngle);
    }

    // DECL: void setRange(float range);
    public function setRange(range:Float):Void
    {
        hx_Light_setRange(nativeObject, range);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Light_static_createDirectional_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Light_static_createDirectional_V3", 1);
    static var hx_Light_static_createDirectional_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Light_static_createDirectional_FltX3", 3);
    static var hx_Light_static_createPoint_V3_Flt:Dynamic = cpp.Lib.load("gameplay", "hx_Light_static_createPoint_V3_Flt", 2);
    static var hx_Light_static_createPoint_FltX4:Dynamic = cpp.Lib.load("gameplay", "hx_Light_static_createPoint_FltX4", 4);
    static var hx_Light_static_createSpot_V3_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Light_static_createSpot_V3_FltX3", 4);
    static var hx_Light_static_createSpot_FltX6:Dynamic = cpp.Lib.load("gameplay", "hx_Light_static_createSpot_FltX6", -1);
    static var hx_Light_getColor:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getColor", 1);
    static var hx_Light_getInnerAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getInnerAngle", 1);
    static var hx_Light_getInnerAngleCos:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getInnerAngleCos", 1);
    static var hx_Light_getLightType:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getLightType", 1);
    static var hx_Light_getNode:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getNode", 1);
    static var hx_Light_getOuterAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getOuterAngle", 1);
    static var hx_Light_getOuterAngleCos:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getOuterAngleCos", 1);
    static var hx_Light_getRange:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getRange", 1);
    static var hx_Light_getRangeInverse:Dynamic = cpp.Lib.load("gameplay", "hx_Light_getRangeInverse", 1);
    static var hx_Light_setColor_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Light_setColor_V3", 2);
    static var hx_Light_setColor_FltX3:Dynamic = cpp.Lib.load("gameplay", "hx_Light_setColor_FltX3", 4);
    static var hx_Light_setInnerAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Light_setInnerAngle", 2);
    static var hx_Light_setOuterAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Light_setOuterAngle", 2);
    static var hx_Light_setRange:Dynamic = cpp.Lib.load("gameplay", "hx_Light_setRange", 2);
}

// END
