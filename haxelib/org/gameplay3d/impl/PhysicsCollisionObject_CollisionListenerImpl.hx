package org.gameplay3d.impl;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.PhysicsCollisionObject_CollisionListener;

using org.gameplay3d.GameplayObject;

// DECL: class CollisionListener
class PhysicsCollisionObject_CollisionListenerImpl extends GameplayObject, implements PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var listener:PhysicsCollisionObject_CollisionListener;

    function new(
            listener:PhysicsCollisionObject_CollisionListener,
            nativeObject:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObject, nativeObjectInitializerParams);
        this.listener = listener;
    }

    public static function make(listener:PhysicsCollisionObject_CollisionListener):PhysicsCollisionObject_CollisionListenerImpl
    {
        return new PhysicsCollisionObject_CollisionListenerImpl(listener, constructNativeObject, [ null ]);
    }

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:Vector3, contactPointB:Vector3):Void
    {
        listener.collisionEvent(type, collisionPair, contactPointA, contactPointB);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function collisionEventWrapper(type:Int, collisionPair:Dynamic, contactPointA:Dynamic, contactPointB:Dynamic)
    {
        collisionEvent(type, PhysicsCollisionObject_CollisionPair.wrap(collisionPair), Vector3.wrap(contactPointA), Vector3.wrap(contactPointB));
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:PhysicsCollisionObject_CollisionListenerImpl):Dynamic
    {
        return hx_PhysicsCollisionObject_CollisionListener_Construct(thisObj.collisionEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_CollisionListener_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionListener_Construct", 1);
}

// END
