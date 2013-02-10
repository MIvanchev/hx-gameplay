package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Light : public Ref
class Light extends GameplayObject implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _color:Vector3;

    // DECL: static Light* createDirectional(const Vector3& color);
    public static function createDirectional_V3(color:IVector3):Light
    {
        return Light.wrap(hx_Light_static_createDirectional_V3(color.native()));
    }

    // DECL: static Light* createDirectional(float red, float green, float blue);
    public static function createDirectional_FltX3(red:Float, green:Float, blue:Float):Light
    {
        return Light.wrap(hx_Light_static_createDirectional_FltX3(red, green, blue));
    }

    // DECL: static Light* createPoint(const Vector3& color, float range);
    public static function createPoint_V3_Flt(color:IVector3, range:Float):Light
    {
        return Light.wrap(hx_Light_static_createPoint_V3_Flt(color.native(), range));
    }

    // DECL: static Light* createPoint(float red, float green, float blue, float range);
    public static function createPoint_FltX4(red:Float, green:Float, blue:Float, range:Float):Light
    {
        return Light.wrap(hx_Light_static_createPoint_FltX4(red, green, blue, range));
    }

    // DECL: static Light* createSpot(const Vector3& color, float range, float innerAngle, float outerAngle);
    public static function createSpot_V3_FltX3(color:IVector3, range:Float, innerAngle:Float, outerAngle:Float):Light
    {
        return Light.wrap(hx_Light_static_createSpot_V3_FltX3(color.native(), range, innerAngle, outerAngle));
    }

    // DECL: static Light* createSpot(float red, float green, float blue, float range, float innerAngle, float outerAngle);
    public static function createSpot_FltX6(red:Float, green:Float, blue:Float, range:Float, innerAngle:Float, outerAngle:Float):Light
    {
        return Light.wrap(hx_Light_static_createSpot_FltX6(red, green, blue, range, innerAngle, outerAngle));
    }

    // DECL: const Vector3& getColor() const;
    public function getColor():IVector3
    {
        return Macros.impersonateResult(_color, hx_Light_getColor(nativeObject));
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
    public function setColor_V3(color:IVector3):Void
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

    static var hx_Light_static_createDirectional_V3 = NativeInterface.loadMember(Light, "static_createDirectional_V3", 1);
    static var hx_Light_static_createDirectional_FltX3 = NativeInterface.loadMember(Light, "static_createDirectional_FltX3", 3);
    static var hx_Light_static_createPoint_V3_Flt = NativeInterface.loadMember(Light, "static_createPoint_V3_Flt", 2);
    static var hx_Light_static_createPoint_FltX4 = NativeInterface.loadMember(Light, "static_createPoint_FltX4", 4);
    static var hx_Light_static_createSpot_V3_FltX3 = NativeInterface.loadMember(Light, "static_createSpot_V3_FltX3", 4);
    static var hx_Light_static_createSpot_FltX6 = NativeInterface.loadMember(Light, "static_createSpot_FltX6", -1);
    static var hx_Light_getColor = NativeInterface.loadMember(Light, "getColor", 1);
    static var hx_Light_getInnerAngle = NativeInterface.loadMember(Light, "getInnerAngle", 1);
    static var hx_Light_getInnerAngleCos = NativeInterface.loadMember(Light, "getInnerAngleCos", 1);
    static var hx_Light_getLightType = NativeInterface.loadMember(Light, "getLightType", 1);
    static var hx_Light_getNode = NativeInterface.loadMember(Light, "getNode", 1);
    static var hx_Light_getOuterAngle = NativeInterface.loadMember(Light, "getOuterAngle", 1);
    static var hx_Light_getOuterAngleCos = NativeInterface.loadMember(Light, "getOuterAngleCos", 1);
    static var hx_Light_getRange = NativeInterface.loadMember(Light, "getRange", 1);
    static var hx_Light_getRangeInverse = NativeInterface.loadMember(Light, "getRangeInverse", 1);
    static var hx_Light_setColor_V3 = NativeInterface.loadMember(Light, "setColor_V3", 2);
    static var hx_Light_setColor_FltX3 = NativeInterface.loadMember(Light, "setColor_FltX3", 4);
    static var hx_Light_setInnerAngle = NativeInterface.loadMember(Light, "setInnerAngle", 2);
    static var hx_Light_setOuterAngle = NativeInterface.loadMember(Light, "setOuterAngle", 2);
    static var hx_Light_setRange = NativeInterface.loadMember(Light, "setRange", 2);
}

// END
