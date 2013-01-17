package org.gameplay3d;
import org.gameplay3d.intern.INativeBinding;

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
        var initialized = this.nativeObject != null;
        super.impersonate(nativeObject);
        if (!initialized)
        {
            objectA = PhysicsCollisionObject.wrap(hx_PhysicsCollisionObject_CollisionPair_property_objectA_get(nativeObject));
            objectB = PhysicsCollisionObject.wrap(hx_PhysicsCollisionObject_CollisionPair_property_objectB_get(nativeObject));
        }
        else
        {
            objectA.impersonate(hx_PhysicsCollisionObject_CollisionPair_property_objectA_get(nativeObject));
            objectB.impersonate(hx_PhysicsCollisionObject_CollisionPair_property_objectB_get(nativeObject));
        }
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

    static var hx_PhysicsCollisionObject_CollisionPair_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_Construct", 2);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectA_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectA_get", 1);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectB_get:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectB_get", 1);
}

// END
