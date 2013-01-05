package org.gameplay3d.wrapper;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.PhysicsController_HitFilter;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class HitFilter
class PhysicsController_HitFilterWrapper extends GameplayObject, implements PhysicsController_HitFilter
{
    /***************************************************************************
     * PROPERTIES                                                              *
     **************************************************************************/

    public var target(default, null):PhysicsController_HitFilter;

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
        return new PhysicsController_HitFilterWrapper(target, constructNativeObject, [ null ]);
    }

    // DECL: virtual bool filter(PhysicsCollisionObject* object);
    public function filter(object:PhysicsCollisionObject):Bool
    {
        return target.filter(object);
    }

    // DECL: virtual bool hit(const HitResult& result);
    public function hit(result:PhysicsController_HitResult):Bool
    {
        return target.hit(result);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    function filterWrapper(object)
    {
        return filter(PhysicsCollisionObject.wrap(object));
    }

    function hitWrapper(result)
    {
        return hit(PhysicsController_HitResult.wrap(result));
    }

    // DECL: HitFilter();
    static function constructNativeObject(thisObj:PhysicsController_HitFilterWrapper):Dynamic
    {
        return hx_HaxePhysicsController_HitFilter_Construct(thisObj.filterWrapper, thisObj.hitWrapper);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_HaxePhysicsController_HitFilter_Construct:Dynamic = cpp.Lib.load("gameplay", "hx_HaxePhysicsController_HitFilter_Construct", 2);
}

// END
