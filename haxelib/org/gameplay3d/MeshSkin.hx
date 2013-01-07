package org.gameplay3d;

import org.gameplay3d.intern.impl.Transform_ListenerImpl;
import org.gameplay3d.intern.ConversionTools;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class MeshSkin : public Transform::Listener
class MeshSkin extends Transform_ListenerImpl
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: const Matrix& getBindShape() const;
    public function getBindShape():Matrix
    {
        return Matrix.wrap(hx_MeshSkin_getBindShape(nativeObject));
    }

    // DECL: Joint* getJoint(const char* id) const;
    public function getJoint_Str(id:String):Joint
    {
        return Joint.wrap(hx_MeshSkin_getJoint_Str(nativeObject, id));
    }

    // DECL: Joint* getJoint(unsigned int index) const;
    public function getJoint_Int(index:Int):Joint
    {
        return Joint.wrap(hx_MeshSkin_getJoint_Int(nativeObject, index));
    }

    // DECL: unsigned int getJointCount() const;
    public function getJointCount():Int
    {
        return hx_MeshSkin_getJointCount(nativeObject);
    }

    // DECL: int getJointIndex(Joint* joint) const;
    public function getJointIndex(joint:Joint):Int
    {
        return hx_MeshSkin_getJointIndex(nativeObject, joint.native());
    }

    // DECL: Vector4* getMatrixPalette() const;
    public function getMatrixPalette():Array<Vector4>
    {
        return ConversionTools.extractVector4Array(hx_MeshSkin_getMatrixPalette(nativeObject));
    }

    // DECL: unsigned int getMatrixPaletteSize() const;
    public function getMatrixPaletteSize():Int
    {
        return hx_MeshSkin_getMatrixPaletteSize(nativeObject);
    }

    // DECL: Model* getModel() const;
    public function getModel():Model
    {
        return Model.wrap(hx_MeshSkin_getModel(nativeObject));
    }

    // DECL: Joint* getRootJoint() const;
    public function getRootJoint():Joint
    {
        return Joint.wrap(hx_MeshSkin_getRootJoint(nativeObject));
    }

    // DECL: void setBindShape(const float* matrix);
    public function setBindShape(matrix:Float):Void
    {
        hx_MeshSkin_setBindShape(nativeObject, matrix);
    }

    // DECL: void setRootJoint(Joint* joint);
    public function setRootJoint(joint:Joint):Void
    {
        hx_MeshSkin_setRootJoint(nativeObject, joint.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_MeshSkin_getBindShape:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getBindShape", 1);
    static var hx_MeshSkin_getJoint_Str:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getJoint_Str", 2);
    static var hx_MeshSkin_getJoint_Int:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getJoint_Int", 2);
    static var hx_MeshSkin_getJointCount:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getJointCount", 1);
    static var hx_MeshSkin_getJointIndex:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getJointIndex", 2);
    static var hx_MeshSkin_getMatrixPalette:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getMatrixPalette", 1);
    static var hx_MeshSkin_getMatrixPaletteSize:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getMatrixPaletteSize", 1);
    static var hx_MeshSkin_getModel:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getModel", 1);
    static var hx_MeshSkin_getRootJoint:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_getRootJoint", 1);
    static var hx_MeshSkin_setBindShape:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_setBindShape", 2);
    static var hx_MeshSkin_setRootJoint:Dynamic = cpp.Lib.load("gameplay", "hx_MeshSkin_setRootJoint", 2);
}

// END
