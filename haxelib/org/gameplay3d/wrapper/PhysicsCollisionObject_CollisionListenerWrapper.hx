package org.gameplay3d.wrapper;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.PhysicsCollisionObject_CollisionListener;
import org.gameplay3d.PhysicsCollisionObject_CollisionPair;
import org.gameplay3d.Vector3;

using org.gameplay3d.GameplayObject;

// DECL: class CollisionListener
class PhysicsCollisionObject_CollisionListenerWrapper extends GameplayObject, implements PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):PhysicsCollisionObject_CollisionListener;

    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    function new(target, nativeObject, nativeObjectInitializerParams)
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.target = target;
    }

    public static function make(target)
    {
        return new PhysicsCollisionObject_CollisionListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:IVector3, contactPointB:IVector3):Void
    {
        target.collisionEvent(type, collisionPair, contactPointA, contactPointB);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function collisionEventWrapper(type, collisionPair, contactPointA, contactPointB)
    {
        collisionEvent(type, PhysicsCollisionObject_CollisionPair.wrap(collisionPair), Vector3.wrap(contactPointA), Vector3.wrap(contactPointB));
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:PhysicsCollisionObject_CollisionListenerWrapper):Dynamic
    {
        return hx_PhysicsCollisionObject_CollisionListener_Construct(thisObj.collisionEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_CollisionListener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionListener_Construct", 1);
}

// END
