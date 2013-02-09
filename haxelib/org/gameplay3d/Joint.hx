package org.gameplay3d;

import org.gameplay3d.immutable.IMatrix;
import org.gameplay3d.intern.INativeBinding;
import org.gameplay3d.intern.Macros;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Joint : public Node
class Joint extends Node
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    var _inverseBindPose:Matrix;

    // DECL: const Matrix& getInverseBindPose() const;
    public function getInverseBindPose():IMatrix
    {
        return Macros.impersonateResult(_inverseBindPose, hx_Joint_getInverseBindPose(nativeObject));
    }

    // DECL: Node::Type getType() const;
    override public function getType():Int
    {
        return hx_Joint_getType(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Joint_getInverseBindPose = NativeInterface.loadMember(Joint, "getInverseBindPose", 1);
    static var hx_Joint_getType = NativeInterface.loadMember(Joint, "getType", 1);
}

// END
