package org.gameplay3d;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class AIMessage : public GameplayObject
class AIMessage extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static AIMessage* create(unsigned int id, const char* sender, const char* receiver, unsigned int parameterCount);
    public static function create(id:Int, sender:String, receiver:String, parameterCount:Int):AIMessage
    {
        return AIMessage.wrap(hx_AIMessage_static_create(id, sender, receiver, parameterCount));
    }

    // DECL: static void destroy(AIMessage* message);
    public static function destroy(message:AIMessage):Void
    {
        hx_AIMessage_static_destroy(message.native());
    }

    // DECL: bool getBoolean(unsigned int index) const;
    public function getBoolean(index:Int):Bool
    {
        return hx_AIMessage_getBoolean(nativeObject, index);
    }

    // DECL: double getDouble(unsigned int index) const;
    public function getDouble(index:Int):Float
    {
        return hx_AIMessage_getDouble(nativeObject, index);
    }

    // DECL: float getFloat(unsigned int index) const;
    public function getFloat(index:Int):Float
    {
        return hx_AIMessage_getFloat(nativeObject, index);
    }

    // DECL: unsigned int getId() const;
    public function getId():Int
    {
        return hx_AIMessage_getId(nativeObject);
    }

    // DECL: int getInt(unsigned int index) const;
    public function getInt(index:Int):Int
    {
        return hx_AIMessage_getInt(nativeObject, index);
    }

    // DECL: long getLong(unsigned int index) const;
    public function getLong(index:Int):Int
    {
        return hx_AIMessage_getLong(nativeObject, index);
    }

    // DECL: unsigned int getParameterCount() const;
    public function getParameterCount():Int
    {
        return hx_AIMessage_getParameterCount(nativeObject);
    }

    // DECL: ParameterType getParameterType(unsigned int index) const;
    public function getParameterType(index:Int):Int
    {
        return hx_AIMessage_getParameterType(nativeObject, index);
    }

    // DECL: const char* getReceiver() const;
    public function getReceiver():String
    {
        return hx_AIMessage_getReceiver(nativeObject);
    }

    // DECL: const char* getSender() const;
    public function getSender():String
    {
        return hx_AIMessage_getSender(nativeObject);
    }

    // DECL: const char* getString(unsigned int index) const;
    public function getString(index:Int):String
    {
        return hx_AIMessage_getString(nativeObject, index);
    }

    // DECL: void setBoolean(unsigned int index, bool value);
    public function setBoolean(index:Int, value:Bool):Void
    {
        hx_AIMessage_setBoolean(nativeObject, index, value);
    }

    // DECL: void setDouble(unsigned int index, double value);
    public function setDouble(index:Int, value:Float):Void
    {
        hx_AIMessage_setDouble(nativeObject, index, value);
    }

    // DECL: void setFloat(unsigned int index, float value);
    public function setFloat(index:Int, value:Float):Void
    {
        hx_AIMessage_setFloat(nativeObject, index, value);
    }

    // DECL: void setInt(unsigned int index, int value);
    public function setInt(index:Int, value:Int):Void
    {
        hx_AIMessage_setInt(nativeObject, index, value);
    }

    // DECL: void setLong(unsigned int index, long value);
    public function setLong(index:Int, value:Int):Void
    {
        hx_AIMessage_setLong(nativeObject, index, value);
    }

    // DECL: void setString(unsigned int index, const char* value);
    public function setString(index:Int, value:String):Void
    {
        hx_AIMessage_setString(nativeObject, index, value);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_AIMessage_static_create = NativeInterface.loadMember(AIMessage, "static_create", 4);
    static var hx_AIMessage_static_destroy = NativeInterface.loadMember(AIMessage, "static_destroy", 1);
    static var hx_AIMessage_getBoolean = NativeInterface.loadMember(AIMessage, "getBoolean", 2);
    static var hx_AIMessage_getDouble = NativeInterface.loadMember(AIMessage, "getDouble", 2);
    static var hx_AIMessage_getFloat = NativeInterface.loadMember(AIMessage, "getFloat", 2);
    static var hx_AIMessage_getId = NativeInterface.loadMember(AIMessage, "getId", 1);
    static var hx_AIMessage_getInt = NativeInterface.loadMember(AIMessage, "getInt", 2);
    static var hx_AIMessage_getLong = NativeInterface.loadMember(AIMessage, "getLong", 2);
    static var hx_AIMessage_getParameterCount = NativeInterface.loadMember(AIMessage, "getParameterCount", 1);
    static var hx_AIMessage_getParameterType = NativeInterface.loadMember(AIMessage, "getParameterType", 2);
    static var hx_AIMessage_getReceiver = NativeInterface.loadMember(AIMessage, "getReceiver", 1);
    static var hx_AIMessage_getSender = NativeInterface.loadMember(AIMessage, "getSender", 1);
    static var hx_AIMessage_getString = NativeInterface.loadMember(AIMessage, "getString", 2);
    static var hx_AIMessage_setBoolean = NativeInterface.loadMember(AIMessage, "setBoolean", 3);
    static var hx_AIMessage_setDouble = NativeInterface.loadMember(AIMessage, "setDouble", 3);
    static var hx_AIMessage_setFloat = NativeInterface.loadMember(AIMessage, "setFloat", 3);
    static var hx_AIMessage_setInt = NativeInterface.loadMember(AIMessage, "setInt", 3);
    static var hx_AIMessage_setLong = NativeInterface.loadMember(AIMessage, "setLong", 3);
    static var hx_AIMessage_setString = NativeInterface.loadMember(AIMessage, "setString", 3);
}

// END
