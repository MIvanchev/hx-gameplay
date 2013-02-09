package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class CollisionPair
class PhysicsCollisionObject_CollisionPair extends GameplayObject
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var objectA(default, null):PhysicsCollisionObject;
    public var objectB(default, null):PhysicsCollisionObject;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    override function impersonate<T : INativeBinding>(nativeObject:Dynamic):T
    {
        super.impersonate(nativeObject);
        Macros.impersonateResult(objectA, hx_PhysicsCollisionObject_CollisionPair_property_objectA_get(nativeObject));
        Macros.impersonateResult(objectB, hx_PhysicsCollisionObject_CollisionPair_property_objectB_get(nativeObject));
        return cast(this);
    }

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
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_CollisionPair_Construct = NativeInterface.loadMember(PhysicsCollisionObject_CollisionPair, "Construct", 2);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectA_get = NativeInterface.loadMember(PhysicsCollisionObject_CollisionPair, "property_objectA_get", 1);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectB_get = NativeInterface.loadMember(PhysicsCollisionObject_CollisionPair, "property_objectB_get", 1);
}

// END
