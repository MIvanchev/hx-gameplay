package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsGhostObject : public PhysicsCollisionObject, public Transform::Listener
class PhysicsGhostObject extends PhysicsCollisionObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: PhysicsCollisionObject::Type getType() const;
    override public function getType():Int
    {
        return hx_PhysicsGhostObject_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsGhostObject_getType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsGhostObject_getType", 1);
}

// END
