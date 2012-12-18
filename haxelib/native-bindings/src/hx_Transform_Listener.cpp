#include "HaxeAPI.h"

/*******************************************************************************
 * WRAPPER CLASS                                                               *
 ******************************************************************************/

class HaxeTransform_Listener : public Transform::Listener
{
private:

    AutoGCRoot clbkTransformChanged;

public:

    HaxeTransform_Listener(const value& _clbkTransformChanged)
        : clbkTransformChanged(_clbkTransformChanged)
    {
    }

    void transformChanged(Transform *transform, long cookie)
    {
        val_call2(
                clbkTransformChanged.get(),
                ObjectToValue(transform, false),
                alloc_int(cookie)
            );
    }
};

value hx_Transform_Listener_Construct(value clbkTransformChanged)
{
    HaxeTransform_Listener *instance =
        new HaxeTransform_Listener(clbkTransformChanged);
    return ObjectToValue(instance);
}
DEFINE_PRIM(hx_Transform_Listener_Construct, 1);

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

// DECL: virtual void transformChanged(Transform* transform, long cookie) = 0;
// void hx_Transform_Listener_transformChanged(value thisObj, value transform, value cookie)
// {
    // Transform::Listener *_thisObj;
    // Transform *_transform;
    // long _cookie = ValueToLong(cookie);
    // ValueToObject(thisObj, _thisObj);
    // ValueToObject(transform, _transform);
    // _thisObj->transformChanged(_transform, _cookie);
// }
// DEFINE_PRIM(hx_Transform_Listener_transformChanged, 3);

// END
//
