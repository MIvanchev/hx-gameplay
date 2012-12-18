package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Layout : public Ref
class Layout extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual Type getType() = 0;
    public function getType():Int
    {
        return hx_Layout_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Layout_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Layout_getType", 1);
}

// END
