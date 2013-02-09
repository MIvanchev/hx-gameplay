package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;
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
        return hx_Properties_getNextProperty(nativeObject, value);
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

    static var hx_Properties_static_create = NativeInterface.loadMember(Properties, "static_create", 1);
    static var hx_Properties_exists = NativeInterface.loadMember(Properties, "exists", 2);
    static var hx_Properties_getBool = NativeInterface.loadMember(Properties, "getBool", 3);
    static var hx_Properties_getColor_Str_V3 = NativeInterface.loadMember(Properties, "getColor_Str_V3", 3);
    static var hx_Properties_getColor_Str_V4 = NativeInterface.loadMember(Properties, "getColor_Str_V4", 3);
    static var hx_Properties_getFloat = NativeInterface.loadMember(Properties, "getFloat", 2);
    static var hx_Properties_getId = NativeInterface.loadMember(Properties, "getId", 1);
    static var hx_Properties_getInt = NativeInterface.loadMember(Properties, "getInt", 2);
    static var hx_Properties_getLong = NativeInterface.loadMember(Properties, "getLong", 2);
    static var hx_Properties_getMatrix = NativeInterface.loadMember(Properties, "getMatrix", 3);
    static var hx_Properties_getNamespace_Str_Bool = NativeInterface.loadMember(Properties, "getNamespace_Str_Bool", 3);
    static var hx_Properties_getNamespace = NativeInterface.loadMember(Properties, "getNamespace", 1);
    static var hx_Properties_getNextNamespace = NativeInterface.loadMember(Properties, "getNextNamespace", 1);
    static var hx_Properties_getNextProperty = NativeInterface.loadMember(Properties, "getNextProperty", 2);
    static var hx_Properties_getQuaternionFromAxisAngle = NativeInterface.loadMember(Properties, "getQuaternionFromAxisAngle", 3);
    static var hx_Properties_getString = NativeInterface.loadMember(Properties, "getString", 2);
    static var hx_Properties_getType = NativeInterface.loadMember(Properties, "getType", 2);
    static var hx_Properties_getVector2 = NativeInterface.loadMember(Properties, "getVector2", 3);
    static var hx_Properties_getVector3 = NativeInterface.loadMember(Properties, "getVector3", 3);
    static var hx_Properties_getVector4 = NativeInterface.loadMember(Properties, "getVector4", 3);
    static var hx_Properties_rewind = NativeInterface.loadMember(Properties, "rewind", 1);
}

// END
