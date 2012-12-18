package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class CollisionPair
class PhysicsCollisionObject_CollisionPair extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var objectA(get, set):PhysicsCollisionObject;
    public var objectB(get, set):PhysicsCollisionObject;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: CollisionPair(PhysicsCollisionObject* objectA, PhysicsCollisionObject* objectB);
    public static function make(objectA:PhysicsCollisionObject, objectB:PhysicsCollisionObject):PhysicsCollisionObject_CollisionPair
    {
        return new PhysicsCollisionObject_CollisionPair(constructNativeObject(objectA, objectB));
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: CollisionPair(PhysicsCollisionObject* objectA, PhysicsCollisionObject* objectB);
    static function constructNativeObject(objectA:PhysicsCollisionObject, objectB:PhysicsCollisionObject):Dynamic
    {
        return hx_PhysicsCollisionObject_CollisionPair_Construct(objectA.native(), objectB.native());
    }

    /***************************************************************************
     * PROPERTY ACCESSORS                                                      *
     **************************************************************************/

    function get_objectA():PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_PhysicsCollisionObject_CollisionPair_property_objectA_get(nativeObject));
    }

    function set_objectA(value:PhysicsCollisionObject):PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_PhysicsCollisionObject_CollisionPair_property_objectA_set(nativeObject, value.native()));
    }

    function get_objectB():PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_PhysicsCollisionObject_CollisionPair_property_objectB_get(nativeObject));
    }

    function set_objectB(value:PhysicsCollisionObject):PhysicsCollisionObject
    {
        return PhysicsCollisionObject.wrap(hx_PhysicsCollisionObject_CollisionPair_property_objectB_set(nativeObject, value.native()));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_CollisionPair_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_Construct", 2);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectA_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectA_get", 1);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectA_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectA_set", 2);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectB_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectB_get", 1);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectB_set:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectB_set", 2);
}

// END
