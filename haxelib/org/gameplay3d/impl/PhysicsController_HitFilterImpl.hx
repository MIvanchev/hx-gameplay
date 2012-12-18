package org.gameplay3d.impl;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class HitFilter
class PhysicsController_HitFilterImpl extends PhysicsController_HitFilter
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: HitFilter();
    public static function make():PhysicsController_HitFilterImpl
    {
        return new PhysicsController_HitFilterImpl(constructNativeObject, [ null ]);
    }

    // DECL: virtual bool filter(PhysicsCollisionObject* object);
    public function filter(object:PhysicsCollisionObject):Bool
    {
        return false;
    }

    // DECL: virtual bool hit(const HitResult& result);
    public function hit(result:PhysicsController_HitResult):Bool
    {
        return false;
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: HitFilter();
    static function constructNativeObject(thisObj:PhysicsController_HitFilterImpl):Dynamic
    {
        return hx_HaxePhysicsController_HitFilter_Construct(thisObj.filter, thisObj.hit);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_HaxePhysicsController_HitFilter_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_HaxePhysicsController_HitFilter_Construct", 2);
}

// END
