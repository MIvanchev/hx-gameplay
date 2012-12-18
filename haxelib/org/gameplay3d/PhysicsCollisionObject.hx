package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsCollisionObject
class PhysicsCollisionObject extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: void addCollisionListener(CollisionListener* listener, PhysicsCollisionObject* object = NULL);
    public function addCollisionListener_Lsnr_ColObj(listener:PhysicsCollisionObject_CollisionListener, object:PhysicsCollisionObject = null):Void
    {
        hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj(nativeObject, listener.native(), object.native());
    }

    // DECL: void addCollisionListener(const char* function, PhysicsCollisionObject* object = NULL);
    public function addCollisionListener_Str_ColObj(_function:String, object:PhysicsCollisionObject = null):Void
    {
        hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj(nativeObject, _function, object.native());
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
    public function removeCollisionListener_Lsnr_ColObj(listener:PhysicsCollisionObject_CollisionListener, object:PhysicsCollisionObject = null):Void
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

    static var hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_addCollisionListener_Lsnr_ColObj", 3);
    static var hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_addCollisionListener_Str_ColObj", 3);
    static var hx_PhysicsCollisionObject_collidesWith:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_collidesWith", 2);
    static var hx_PhysicsCollisionObject_getCollisionShape:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getCollisionShape", 1);
    static var hx_PhysicsCollisionObject_getNode:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getNode", 1);
    static var hx_PhysicsCollisionObject_getShapeType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getShapeType", 1);
    static var hx_PhysicsCollisionObject_getType:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_getType", 1);
    static var hx_PhysicsCollisionObject_isDynamic:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_isDynamic", 1);
    static var hx_PhysicsCollisionObject_isEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_isEnabled", 1);
    static var hx_PhysicsCollisionObject_isKinematic:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_isKinematic", 1);
    static var hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_removeCollisionListener_Lsnr_ColObj", 3);
    static var hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_removeCollisionListener_Str_ColObj", 3);
    static var hx_PhysicsCollisionObject_setEnabled:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsCollisionObject_setEnabled", 2);
}

// END
