package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class HitFilter
class PhysicsController_HitFilter extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: HitFilter();
    public static function make():PhysicsController_HitFilter
    {
        return new PhysicsController_HitFilter(constructNativeObject());
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: HitFilter();
    static function constructNativeObject():Dynamic
    {
        return hx_PhysicsController_HitFilter_Construct();
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsController_HitFilter_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_PhysicsController_HitFilter_Construct", 0);
}

// END
