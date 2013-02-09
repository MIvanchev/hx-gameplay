package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;
import org.gameplay3d.wrapper.PhysicsCollisionObject_CollisionListenerWrapper;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsCollisionObject
class PhysicsCollisionObject extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _character:PhysicsCharacter;
    var _ghostObject:PhysicsGhostObject;
    var _rigidBody:PhysicsRigidBody;
    var _vehicle:PhysicsVehicle;
    var _vehicleWheel:PhysicsVehicleWheel;

    // DECL: void addCollisionListener(CollisionListener* listener, PhysicsCollisionObject* object = NULL);
    public function addCollisionListener_Lsnr_ColObj(listener:PhysicsCollisionObject_CollisionListenerWrapper, object:PhysicsCollisionObject = null):Void
    {
        hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj(nativeObject, listener.native(), object.native());
    }

    // DECL: void addCollisionListener(const char* function, PhysicsCollisionObject* object = NULL);
    public function addCollisionListener_Str_ColObj(_function:String, object:PhysicsCollisionObject = null):Void
    {
        hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj(nativeObject, _function, object.native());
    }

    // DECL: PhysicsCharacter* asCharacter();
    public function asCharacter():PhysicsCharacter
    {
        return Macros.impersonateResult(_character, hx_PhysicsCollisionObject_asCharacter(nativeObject));
    }

    // DECL: PhysicsGhostObject* asGhostObject();
    public function asGhostObject():PhysicsGhostObject
    {
        return Macros.impersonateResult(_ghostObject, hx_PhysicsCollisionObject_asGhostObject(nativeObject));
    }

    // DECL: PhysicsRigidBody* asRigidBody();
    public function asRigidBody():PhysicsRigidBody
    {
        return Macros.impersonateResult(_rigidBody, hx_PhysicsCollisionObject_asRigidBody(nativeObject));
    }

    // DECL: PhysicsVehicle* asVehicle();
    public function asVehicle():PhysicsVehicle
    {
        return Macros.impersonateResult(_vehicle, hx_PhysicsCollisionObject_asVehicle(nativeObject));
    }

    // DECL: PhysicsVehicleWheel* asVehicleWheel();
    public function asVehicleWheel():PhysicsVehicleWheel
    {
        return Macros.impersonateResult(_vehicleWheel, hx_PhysicsCollisionObject_asVehicleWheel(nativeObject));
    }

    // DECL: bool collidesWith(PhysicsCollisionObject* object) const;
    public function collidesWith(object:PhysicsCollisionObject):Bool
    {
        return hx_PhysicsCollisionObject_collidesWith(nativeObject, object.native());
    }

    // DECL: PhysicsCollisionShape* getCollisionShape() const;
    public function getCollisionShape():PhysicsCollisionShape
    {
        return PhysicsCollisionShape.wrap(hx_PhysicsCollisionObject_getCollisionShape(nativeObject));
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_PhysicsCollisionObject_getNode(nativeObject));
    }

    // DECL: PhysicsCollisionShape::Type getShapeType() const;
    public function getShapeType():Int
    {
        return hx_PhysicsCollisionObject_getShapeType(nativeObject);
    }

    // DECL: virtual PhysicsCollisionObject::Type getType() const = 0;
    public function getType():Int
    {
        return hx_PhysicsCollisionObject_getType(nativeObject);
    }

    // DECL: bool isDynamic() const;
    public function isDynamic():Bool
    {
        return hx_PhysicsCollisionObject_isDynamic(nativeObject);
    }

    // DECL: bool isEnabled() const;
    public function isEnabled():Bool
    {
        return hx_PhysicsCollisionObject_isEnabled(nativeObject);
    }

    // DECL: bool isKinematic() const;
    public function isKinematic():Bool
    {
        return hx_PhysicsCollisionObject_isKinematic(nativeObject);
    }

    // DECL: void removeCollisionListener(CollisionListener* listener, PhysicsCollisionObject* object = NULL);
    public function removeCollisionListener_Lsnr_ColObj(listener:PhysicsCollisionObject_CollisionListenerWrapper, object:PhysicsCollisionObject = null):Void
    {
        hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj(nativeObject, listener.native(), object.native());
    }

    // DECL: void removeCollisionListener(const char* function, PhysicsCollisionObject* object = NULL);
    public function removeCollisionListener_Str_ColObj(_function:String, object:PhysicsCollisionObject = null):Void
    {
        hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj(nativeObject, _function, object.native());
    }

    // DECL: void setEnabled(bool enable);
    public function setEnabled(enable:Bool):Void
    {
        hx_PhysicsCollisionObject_setEnabled(nativeObject, enable);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj = NativeInterface.loadMember(PhysicsCollisionObject, "addCollisionListener_Lsnr_ColObj", 3);
    static var hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj = NativeInterface.loadMember(PhysicsCollisionObject, "addCollisionListener_Str_ColObj", 3);
    static var hx_PhysicsCollisionObject_asCharacter = NativeInterface.loadMember(PhysicsCollisionObject, "asCharacter", 1);
    static var hx_PhysicsCollisionObject_asGhostObject = NativeInterface.loadMember(PhysicsCollisionObject, "asGhostObject", 1);
    static var hx_PhysicsCollisionObject_asRigidBody = NativeInterface.loadMember(PhysicsCollisionObject, "asRigidBody", 1);
    static var hx_PhysicsCollisionObject_asVehicle = NativeInterface.loadMember(PhysicsCollisionObject, "asVehicle", 1);
    static var hx_PhysicsCollisionObject_asVehicleWheel = NativeInterface.loadMember(PhysicsCollisionObject, "asVehicleWheel", 1);
    static var hx_PhysicsCollisionObject_collidesWith = NativeInterface.loadMember(PhysicsCollisionObject, "collidesWith", 2);
    static var hx_PhysicsCollisionObject_getCollisionShape = NativeInterface.loadMember(PhysicsCollisionObject, "getCollisionShape", 1);
    static var hx_PhysicsCollisionObject_getNode = NativeInterface.loadMember(PhysicsCollisionObject, "getNode", 1);
    static var hx_PhysicsCollisionObject_getShapeType = NativeInterface.loadMember(PhysicsCollisionObject, "getShapeType", 1);
    static var hx_PhysicsCollisionObject_getType = NativeInterface.loadMember(PhysicsCollisionObject, "getType", 1);
    static var hx_PhysicsCollisionObject_isDynamic = NativeInterface.loadMember(PhysicsCollisionObject, "isDynamic", 1);
    static var hx_PhysicsCollisionObject_isEnabled = NativeInterface.loadMember(PhysicsCollisionObject, "isEnabled", 1);
    static var hx_PhysicsCollisionObject_isKinematic = NativeInterface.loadMember(PhysicsCollisionObject, "isKinematic", 1);
    static var hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj = NativeInterface.loadMember(PhysicsCollisionObject, "removeCollisionListener_Lsnr_ColObj", 3);
    static var hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj = NativeInterface.loadMember(PhysicsCollisionObject, "removeCollisionListener_Str_ColObj", 3);
    static var hx_PhysicsCollisionObject_setEnabled = NativeInterface.loadMember(PhysicsCollisionObject, "setEnabled", 2);
}

// END
