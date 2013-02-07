package org.gameplay3d.wrapper;

import org.gameplay3d.intern.ListenerWrapper;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.PhysicsController_HitFilter;
import org.gameplay3d.PhysicsController_HitResult;
import org.gameplay3d.shared.SharedPhysicsController_HitResult;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class HitFilter
class PhysicsController_HitFilterWrapper extends ListenerWrapper<PhysicsController_HitFilter>, implements PhysicsController_HitFilter
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _result:SharedPhysicsController_HitResult;

    // DECL: (none)
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
    public function hit(result:SharedPhysicsController_HitResult):Bool
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
        return hit(Macros.impersonateResult(_result, result));
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
