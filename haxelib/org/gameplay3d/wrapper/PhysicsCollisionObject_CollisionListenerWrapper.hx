package org.gameplay3d.wrapper;

import org.gameplay3d.immutable.IVector3;
import org.gameplay3d.intern.ListenerWrapper;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.PhysicsCollisionObject_CollisionListener;
import org.gameplay3d.PhysicsCollisionObject_CollisionPair;
import org.gameplay3d.shared.SharedPhysicsCollisionObject_CollisionPair;
import org.gameplay3d.shared.SharedVector3;
import org.gameplay3d.Vector3;

using org.gameplay3d.GameplayObject;

// DECL: class CollisionListener
class PhysicsCollisionObject_CollisionListenerWrapper extends ListenerWrapper<PhysicsCollisionObject_CollisionListener> implements PhysicsCollisionObject_CollisionListener
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _collisionPair:SharedPhysicsCollisionObject_CollisionPair;
    var _contactPointA:Vector3;
    var _contactPointB:Vector3;

    // DECL: (none)
    public static function make(target)
    {
        return new PhysicsCollisionObject_CollisionListenerWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual void collisionEvent(PhysicsCollisionObject::CollisionListener::EventType type,
    public function collisionEvent(type:Int, collisionPair:PhysicsCollisionObject_CollisionPair, contactPointA:SharedVector3, contactPointB:SharedVector3):Void
    {
        target.collisionEvent(type, collisionPair, contactPointA, contactPointB);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function collisionEventWrapper(type, collisionPair, contactPointA, contactPointB)
    {
        collisionEvent(
                    type,
                    Macros.impersonateResult(_collisionPair, collisionPair),
                    Macros.impersonateResult(_contactPointA, contactPointA),
                    Macros.impersonateResult(_contactPointB, contactPointB)
                );
    }

    // DECL: (none)
    static function constructNativeObject(thisObj:PhysicsCollisionObject_CollisionListenerWrapper):Dynamic
    {
        return hx_PhysicsCollisionObject_CollisionListener_Construct(thisObj.collisionEventWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_CollisionListener_Construct = NativeInterface.loadMember(PhysicsCollisionObject_CollisionListener, "Construct", 1);
}

// END
