package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Joint : public Node
class Joint extends Node
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _inverseBindPose:Matrix;

    function new(
            nativeObjectInitializer:Dynamic,
            nativeObjectInitializerParams:Array<Dynamic> = null
        )
    {
        super(nativeObjectInitializer, nativeObjectInitializerParams);
        _inverseBindPose = Matrix.make();
    }

    // DECL: const Matrix& getInverseBindPose() const;
    public function getInverseBindPose():IMatrix
    {
        return _inverseBindPose.impersonate(hx_Joint_getInverseBindPose(nativeObject));
    }

    // DECL: Node::Type getType() const;
    override public function getType():Int
    {
        return hx_Joint_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Joint_getInverseBindPose:Dynamic = cpp.Lib.load("gameplay", "hx_Joint_getInverseBindPose", 1);
    static var hx_Joint_getType:Dynamic = cpp.Lib.load("gameplay", "hx_Joint_getType", 1);
}

// END
