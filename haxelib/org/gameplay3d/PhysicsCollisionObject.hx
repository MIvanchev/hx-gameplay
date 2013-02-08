package org.gameplay3d;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
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

    static var hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj", 3);
    static var hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj", 3);
    static var hx_PhysicsCollisionObject_asCharacter = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_asCharacter", 1);
    static var hx_PhysicsCollisionObject_asGhostObject = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_asGhostObject", 1);
    static var hx_PhysicsCollisionObject_asRigidBody = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_asRigidBody", 1);
    static var hx_PhysicsCollisionObject_asVehicle = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_asVehicle", 1);
    static var hx_PhysicsCollisionObject_asVehicleWheel = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_asVehicleWheel", 1);
    static var hx_PhysicsCollisionObject_collidesWith = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_collidesWith", 2);
    static var hx_PhysicsCollisionObject_getCollisionShape = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getCollisionShape", 1);
    static var hx_PhysicsCollisionObject_getNode = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getNode", 1);
    static var hx_PhysicsCollisionObject_getShapeType = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getShapeType", 1);
    static var hx_PhysicsCollisionObject_getType = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getType", 1);
    static var hx_PhysicsCollisionObject_isDynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_isDynamic", 1);
    static var hx_PhysicsCollisionObject_isEnabled = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_isEnabled", 1);
    static var hx_PhysicsCollisionObject_isKinematic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_isKinematic", 1);
    static var hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj", 3);
    static var hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj", 3);
    static var hx_PhysicsCollisionObject_setEnabled = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_setEnabled", 2);
    static var hx_PhysicsCollisionObject_CollisionListener_Construct = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionListener_Construct", 1);
    static var hx_PhysicsCollisionObject_CollisionPair_Construct = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_Construct", 2);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectA_get = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectA_get", 1);
    static var hx_PhysicsCollisionObject_CollisionPair_property_objectB_get = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_CollisionPair_property_objectB_get", 1);
}

// END
