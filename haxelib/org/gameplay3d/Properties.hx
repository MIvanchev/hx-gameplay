package org.gameplay3d;

import org.gameplay3d.intern.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Properties : public GameplayObject
class Properties extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Properties* create(const char* url);
    public static function create(url:String):Properties
    {
        return Properties.wrap(hx_Properties_static_create(url));
    }

    // DECL: bool exists(const char* name) const;
    public function exists(name:String):Bool
    {
        return hx_Properties_exists(nativeObject, name);
    }

    // DECL: bool getBool(const char* name = NULL, bool defaultValue = false) const;
    public function getBool(name:String = null, defaultValue:Bool = false):Bool
    {
        return hx_Properties_getBool(nativeObject, name, defaultValue);
    }

    // DECL: bool getColor(const char* name, Vector3* out) const;
    public function getColor_Str_V3(name:String, out:Vector3):Bool
    {
        return hx_Properties_getColor_Str_V3(nativeObject, name, out.native());
    }

    // DECL: bool getColor(const char* name, Vector4* out) const;
    public function getColor_Str_V4(name:String, out:Vector4):Bool
    {
        return hx_Properties_getColor_Str_V4(nativeObject, name, out.native());
    }

    // DECL: float getFloat(const char* name = NULL) const;
    public function getFloat(name:String = null):Float
    {
        return hx_Properties_getFloat(nativeObject, name);
    }

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Properties_getId(nativeObject);
    }

    // DECL: int getInt(const char* name = NULL) const;
    public function getInt(name:String = null):Int
    {
        return hx_Properties_getInt(nativeObject, name);
    }

    // DECL: long getLong(const char* name = NULL) const;
    public function getLong(name:String = null):Int
    {
        return hx_Properties_getLong(nativeObject, name);
    }

    // DECL: bool getMatrix(const char* name, Matrix* out) const;
    public function getMatrix(name:String, out:Matrix):Bool
    {
        return hx_Properties_getMatrix(nativeObject, name, out.native());
    }

    // DECL: Properties* getNamespace(const char* id, bool searchNames = false) const;
    public function getNamespace_Str_Bool(id:String, searchNames:Bool = false):Properties
    {
        return Properties.wrap(hx_Properties_getNamespace_Str_Bool(nativeObject, id, searchNames));
    }

    // DECL: const char* getNamespace() const;
    public function getNamespace():String
    {
        return hx_Properties_getNamespace(nativeObject);
    }

    // DECL: Properties* getNextNamespace();
    public function getNextNamespace():Properties
    {
        return Properties.wrap(hx_Properties_getNextNamespace(nativeObject));
    }

    // DECL: const char* getNextProperty(char** value = NULL);
    public function getNextProperty(value:OutParameter<String> = null):String
    {
        var _value =
            if (value == null)
                null;
            else
                new NativeOutParameter();

        var result = hx_Properties_getNextProperty(nativeObject, _value.native());

        if (value != null)
            value.value = _value.value;

        return result;
    }

    // DECL: bool getQuaternionFromAxisAngle(const char* name, Quaternion* out) const;
    public function getQuaternionFromAxisAngle(name:String, out:Quaternion):Bool
    {
        return hx_Properties_getQuaternionFromAxisAngle(nativeObject, name, out.native());
    }

    // DECL: const char* getString(const char* name = NULL) const;
    public function getString(name:String = null):String
    {
        return hx_Properties_getString(nativeObject, name);
    }

    // DECL: Type getType(const char* name = NULL) const;
    public function getType(name:String = null):Int
    {
        return hx_Properties_getType(nativeObject, name);
    }

    // DECL: bool getVector2(const char* name, Vector2* out) const;
    public function getVector2(name:String, out:Vector2):Bool
    {
        return hx_Properties_getVector2(nativeObject, name, out.native());
    }

    // DECL: bool getVector3(const char* name, Vector3* out) const;
    public function getVector3(name:String, out:Vector3):Bool
    {
        return hx_Properties_getVector3(nativeObject, name, out.native());
    }

    // DECL: bool getVector4(const char* name, Vector4* out) const;
    public function getVector4(name:String, out:Vector4):Bool
    {
        return hx_Properties_getVector4(nativeObject, name, out.native());
    }

    // DECL: void rewind();
    public function rewind():Void
    {
        hx_Properties_rewind(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Properties_static_create:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_static_create", 1);
    static var hx_Properties_exists:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_exists", 2);
    static var hx_Properties_getBool:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getBool", 3);
    static var hx_Properties_getColor_Str_V3:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getColor_Str_V3", 3);
    static var hx_Properties_getColor_Str_V4:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getColor_Str_V4", 3);
    static var hx_Properties_getFloat:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getFloat", 2);
    static var hx_Properties_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getId", 1);
    static var hx_Properties_getInt:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getInt", 2);
    static var hx_Properties_getLong:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getLong", 2);
    static var hx_Properties_getMatrix:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getMatrix", 3);
    static var hx_Properties_getNamespace_Str_Bool:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getNamespace_Str_Bool", 3);
    static var hx_Properties_getNamespace:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getNamespace", 1);
    static var hx_Properties_getNextNamespace:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getNextNamespace", 1);
    static var hx_Properties_getNextProperty:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getNextProperty", 2);
    static var hx_Properties_getQuaternionFromAxisAngle:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getQuaternionFromAxisAngle", 3);
    static var hx_Properties_getString:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getString", 2);
    static var hx_Properties_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getType", 2);
    static var hx_Properties_getVector2:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getVector2", 3);
    static var hx_Properties_getVector3:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getVector3", 3);
    static var hx_Properties_getVector4:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_getVector4", 3);
    static var hx_Properties_rewind:Dynamic = cpp.Lib.load("gameplay", "hx_Properties_rewind", 1);
}

// END
