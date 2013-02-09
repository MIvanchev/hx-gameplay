#include "HaxeAPI.h"

// DECL: const Matrix& getBindShape() const;
value hx_MeshSkin_getBindShape(value thisObj)
{
    MeshSkin *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ObjectToValue(&_thisObj->getBindShape(), false);
}
DEFINE_PRIM(hx_MeshSkin_getBindShape, 1);

// DECL: Joint* getJoint(const char* id) const;
value hx_MeshSkin_getJoint_Str(value thisObj, value id)
{
    MeshSkin *_thisObj;
    const char *_id = ValueToString(id);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getJoint(_id), true);
}
DEFINE_PRIM(hx_MeshSkin_getJoint_Str, 2);

// DECL: Joint* getJoint(unsigned int index) const;
value hx_MeshSkin_getJoint_Int(value thisObj, value index)
{
    MeshSkin *_thisObj;
    unsigned int _index = ValueToUint(index);
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getJoint(_index), true);
}
DEFINE_PRIM(hx_MeshSkin_getJoint_Int, 2);

// DECL: unsigned int getJointCount() const;
value hx_MeshSkin_getJointCount(value thisObj)
{
    MeshSkin *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getJointCount());
}
DEFINE_PRIM(hx_MeshSkin_getJointCount, 1);

// DECL: int getJointIndex(Joint* joint) const;
value hx_MeshSkin_getJointIndex(value thisObj, value joint)
{
    MeshSkin *_thisObj;
    Joint *_joint;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(joint, _joint);
    return alloc_int(_thisObj->getJointIndex(_joint));
}
DEFINE_PRIM(hx_MeshSkin_getJointIndex, 2);

// DECL: Vector4* getMatrixPalette() const;
value hx_MeshSkin_getMatrixPalette(value thisObj)
{
    MeshSkin *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ArrayToValue(_thisObj->getMatrixPalette());
}
DEFINE_PRIM(hx_MeshSkin_getMatrixPalette, 1);

// DECL: unsigned int getMatrixPaletteSize() const;
value hx_MeshSkin_getMatrixPaletteSize(value thisObj)
{
    MeshSkin *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return alloc_int(_thisObj->getMatrixPaletteSize());
}
DEFINE_PRIM(hx_MeshSkin_getMatrixPaletteSize, 1);

// DECL: Model* getModel() const;
value hx_MeshSkin_getModel(value thisObj)
{
    MeshSkin *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getModel(), true);
}
DEFINE_PRIM(hx_MeshSkin_getModel, 1);

// DECL: Joint* getRootJoint() const;
value hx_MeshSkin_getRootJoint(value thisObj)
{
    MeshSkin *_thisObj;
    ValueToObject(thisObj, _thisObj);
    return ReferenceToValue(_thisObj->getRootJoint(), true);
}
DEFINE_PRIM(hx_MeshSkin_getRootJoint, 1);

// DECL: void setBindShape(const float* matrix);
void hx_MeshSkin_setBindShape(value thisObj, value matrix)
{
    MeshSkin *_thisObj;
    const float _matrix[] =
        {
            ValueToFloat(val_array_i(matrix, 0)),
            ValueToFloat(val_array_i(matrix, 1)),
            ValueToFloat(val_array_i(matrix, 2)),
            ValueToFloat(val_array_i(matrix, 3)),
            ValueToFloat(val_array_i(matrix, 4)),
            ValueToFloat(val_array_i(matrix, 5)),
            ValueToFloat(val_array_i(matrix, 6)),
            ValueToFloat(val_array_i(matrix, 7)),
            ValueToFloat(val_array_i(matrix, 8)),
            ValueToFloat(val_array_i(matrix, 9)),
            ValueToFloat(val_array_i(matrix, 10)),
            ValueToFloat(val_array_i(matrix, 11)),
            ValueToFloat(val_array_i(matrix, 12)),
            ValueToFloat(val_array_i(matrix, 13)),
            ValueToFloat(val_array_i(matrix, 14)),
            ValueToFloat(val_array_i(matrix, 15))
        };
    ValueToObject(thisObj, _thisObj);
    _thisObj->setBindShape(_matrix);
}
DEFINE_PRIM(hx_MeshSkin_setBindShape, 2);

// DECL: void setRootJoint(Joint* joint);
void hx_MeshSkin_setRootJoint(value thisObj, value joint)
{
    MeshSkin *_thisObj;
    Joint *_joint;
    ValueToObject(thisObj, _thisObj);
    ValueToObject(joint, _joint);
    _thisObj->setRootJoint(_joint);
}
DEFINE_PRIM(hx_MeshSkin_setRootJoint, 2);

// TODO:
// DECL: void transformChanged(Transform* transform, long cookie);
// void hx_MeshSkin_transformChanged(value thisObj, value transform, value cookie)
// {
    // MeshSkin *_thisObj;
    // Transform *_transform;
    // long _cookie = ValueToLong(cookie);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(transform, _transform);
    // _thisObj->transformChanged(_transform, _cookie);
// }
// DEFINE_PRIM(hx_MeshSkin_transformChanged, 3);

// END
//
