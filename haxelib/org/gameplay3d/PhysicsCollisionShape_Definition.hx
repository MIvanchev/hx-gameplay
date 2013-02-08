package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: struct PhysicsCollisionShape_Definition : public GameplayObject
class PhysicsCollisionShape_Definition extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Definition();
    public static function make():PhysicsCollisionShape_Definition
    {
        return new PhysicsCollisionShape_Definition(constructNativeObject());
    }

    // DECL: Definition(const Definition &definition);
    public static function make_ColShpDef(definition:PhysicsCollisionShape_Definition):PhysicsCollisionShape_Definition
    {
        return new PhysicsCollisionShape_Definition(constructNativeObject_ColShpDef(definition));
    }

    // DECL: bool isEmpty() const;
    public function isEmpty():Bool
    {
        return hx_PhysicsCollisionShape_Definition_isEmpty();
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Definition();
    static function constructNativeObject():Dynamic
    {
        return hx_PhysicsCollisionShape_Definition_Construct();
    }

    // DECL: Definition(const Definition &definition);
    static function constructNativeObject_ColShpDef(definition:PhysicsCollisionShape_Definition):Dynamic
    {
        return hx_PhysicsCollisionShape_Definition_Construct_ColShpDef(definition.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionShape_Definition_Construct = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_Definition_Construct", 0);
    static var hx_PhysicsCollisionShape_Definition_Construct_ColShpDef = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_Definition_Construct_ColShpDef", 1);
    static var hx_PhysicsCollisionShape_Definition_isEmpty = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_Definition_isEmpty", 1);
}

// END
