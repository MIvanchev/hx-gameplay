#ifndef __HAXEAPI_H__
#define __HAXEAPI_H__

#include "gameplay.h"
#include <hx/CFFI.h>

using namespace gameplay;

#if defined _WIN32 || defined __CYGWIN__
    #ifdef __GNUC__
        #define DLL_PUBLIC __attribute__ ((dllexport))
    #else
        #define DLL_PUBLIC __declspec(dllexport)
    #endif
#else
    #if __GNUC__ >= 4
        #define DLL_PUBLIC __attribute__ ((visibility ("default")))
    #else
        #define DLL_PUBLIC
    #endif
#endif

/*******************************************************************************
 * OBJECT KINDS DECLARATION                                                    *
 ******************************************************************************/

DECLARE_KIND(k_OutParameter);
DECLARE_KIND(k_Handle);
DECLARE_KIND(k_Array);
DECLARE_KIND(k_Object);
DECLARE_KIND(k_Object_AnimationTarget);
DECLARE_KIND(k_Object_PhysicsCollisionObject);
DECLARE_KIND(k_Object_Ref);
DECLARE_KIND(k_Object_Ref_Hash);
DECLARE_KIND(k_Object_ScriptTarget);
DECLARE_KIND(k_Object_Transform_Listener);

/*******************************************************************************
 * OUT PARAMETER PASSING                                                       *
 ******************************************************************************/

struct OutParameter
{
    AutoGCRoot _value;

    OutParameter()
        : _value(alloc_null())
    {
    }
};

value CreateOutParameter();
value SetOutParameterValue(const value& thisObj, const value& _value);
value GetOutParameterValue(const value& thisObj);

/*******************************************************************************
 * HANDLE PASSING                                                              *
 ******************************************************************************/

void FreeHandle(value object);

template <typename T>
struct Handle
{
    T _value;
};

#define HandleToValueOrNull(_value, nullExpr) \
    ( ((_value) == (nullExpr)) ? alloc_null() : HandleToValue(_value) )

template <typename T>
value HandleToValue(const T& _value)
{
    void *data = malloc(sizeof(Handle<T>));
    Handle<T> *handle = static_cast<Handle<T> *>(data);
    handle->_value = _value;
    const value& result = alloc_abstract(k_Handle, data);
    val_gc(result, FreeHandle);
    return result;
}

template <typename T>
bool ValueToHandle(value thisObj, T& _value)
{
    if (val_is_null(thisObj))
        return false;

    void *data = val_get_handle(thisObj, k_Handle);
    Handle<T> *handle = static_cast<Handle<T> *>(data);
    _value = handle->_value;

    return true;
}

/*******************************************************************************
 * NATIVE ARRAYS                                                               *
 ******************************************************************************/

template<typename T>
void FreeArray(value object)
{
    val_gc(object, NULL);
    if (!val_is_null(object))
    {
        void *data = val_get_handle(object, k_Array);
        T* array = static_cast<T*>(data);
        SAFE_DELETE_ARRAY(array);
    }
}

template<typename TYPE>
void ValueToArray(value _value, TYPE*& _array)
{
    if (val_is_null(_value))
        _array = NULL;
    else if (val_is_float(_value))
    {
        double storage = ValueToDouble(_value);
        uintptr_t ptr = static_cast<uintptr_t>(storage);
        _array = reinterpret_cast<TYPE*>(ptr);
    }
    else
    {
        void *data = val_get_handle(_value, k_Array);
        _array = static_cast<TYPE*>(data);
    }
}

template<typename TYPE>
value ArrayToValue(const TYPE* _array, bool reclaim = false)
{
    if (reclaim)
    {
        const void *data = static_cast<const void*>(_array);
        const value& result = alloc_abstract(k_Array, const_cast<void*>(data));
        val_gc(result, &FreeArray<TYPE>);
        return result;
    }
    uintptr_t storage = reinterpret_cast<uintptr_t>(_array);
    return alloc_float(static_cast<double>(storage));
}

/*******************************************************************************
 * BOXING / UNBOXING FUNCTIONS                                                 *
 ******************************************************************************/

float ValueToFloat(value _value);
double ValueToDouble(value _value);
unsigned int ValueToUint(value _value);
short ValueToShort(value _value);
unsigned short ValueToUshort(value _value);
long ValueToLong(value _value);
unsigned long ValueToUlong(value _value);
size_t ValueToSizeT(value _value);
const char *ValueToString(value _value);

template<typename TYPE>
void ValueToBuffer(value _value, TYPE*& _bufferVal)
{
    if (val_is_null(_value))
        _bufferVal = NULL;
    else if (val_is_buffer(_value))
        _bufferVal = reinterpret_cast<TYPE *>(buffer_data(val_to_buffer(_value)));
    else
        hx_failure("Buffer expected.");
}

template<typename TYPE>
void ValueToEnum(value _value, TYPE &_enumVal)
{
    _enumVal = static_cast<TYPE>(val_get_int(_value));
}

value StringToValue(const char *str);

template<typename TYPE>
value BufferToValue(const TYPE *data, unsigned long size)
{
    if (data == NULL)
        return alloc_null();

    const buffer& result = alloc_buffer_len(0);
    buffer_append_sub(result, reinterpret_cast<const char *>(data), size);

    return buffer_val(result);
}

template<typename TYPE>
value EnumToValue(TYPE _enumVal)
{
    return alloc_int(_enumVal);
}

/*******************************************************************************
 * WRAPPER TYPES                                                               *
 ******************************************************************************/

class HaxeScreenDisplayer
{
private:

    ScreenDisplayer *screenDisplayer;
    bool initialized;
    const value *clbkMethod;

public:

    HaxeScreenDisplayer();
    virtual ~HaxeScreenDisplayer();
    void run(const value& method, void *cookie, unsigned long time);
    void complete();
    void delegateCall(void *param);
};

class HaxePhysicsController_Listener : public PhysicsController::Listener
{
private:

    AutoGCRoot clbkStatusEvent;

public:

    HaxePhysicsController_Listener(const value& _clbkStatusEvent);
    void statusEvent(EventType type);
};

/*******************************************************************************
 * GAMEPLAY OBJECT PASSING                                                     *
 ******************************************************************************/

template<typename TYPE, typename BASETYPE>
void FreeObject(value object)
{
#ifdef DEBUG
    printf("DEBUG: Freeing garbage collected object.\n");
#endif

    val_gc(object, NULL);
    if (!val_is_null(object))
    {
        void *handle = val_data(object);
        BASETYPE *base = static_cast<BASETYPE*>(handle);
        TYPE *pointer = static_cast<TYPE*>(base);
        SAFE_DELETE(pointer);
    }
}

#define CONVERSION_PROTOTYPES(type)                         \
    value ObjectToValue(const type *pointer);               \
    value ObjectToValue(const type *pointer, bool dummy);   \
    void ValueToObject(value _value, type *&pointer);

#define CONVERSION_PROTOTYPES_NO_FINALIZER(type)            \
    value ObjectToValue(const type *pointer, bool dummy);   \
    void ValueToObject(value _value, type *&pointer);

#define CONVERSION_PROTOTYPES_REF(type, name)                                       \
    void ValueToObject(value _value, type *&pointer);                               \
    value Reference ## name ## ToValue(type *object, bool increaseRefCount = true);

CONVERSION_PROTOTYPES(AIAgent::Listener)
CONVERSION_PROTOTYPES_NO_FINALIZER(AIController)
CONVERSION_PROTOTYPES_NO_FINALIZER(AIMessage)
CONVERSION_PROTOTYPES(AIState::Listener)
CONVERSION_PROTOTYPES_NO_FINALIZER(AIStateMachine)
CONVERSION_PROTOTYPES(AnimationClip::Listener)
CONVERSION_PROTOTYPES_NO_FINALIZER(AnimationController)
CONVERSION_PROTOTYPES_NO_FINALIZER(AnimationTarget)
CONVERSION_PROTOTYPES_NO_FINALIZER(AnimationValue)
CONVERSION_PROTOTYPES(AudioController)
CONVERSION_PROTOTYPES_NO_FINALIZER(AudioListener)
CONVERSION_PROTOTYPES(BoundingBox)
CONVERSION_PROTOTYPES(BoundingSphere)
CONVERSION_PROTOTYPES(Control::Listener)
CONVERSION_PROTOTYPES(FileSystem)
CONVERSION_PROTOTYPES(Font::Text)
CONVERSION_PROTOTYPES(Frustum)
CONVERSION_PROTOTYPES(Game)
CONVERSION_PROTOTYPES_NO_FINALIZER(Gamepad)
CONVERSION_PROTOTYPES(Gesture)
CONVERSION_PROTOTYPES(Keyboard)
CONVERSION_PROTOTYPES_NO_FINALIZER(Logger)
CONVERSION_PROTOTYPES(Matrix)
CONVERSION_PROTOTYPES(MeshBatch)
CONVERSION_PROTOTYPES(MeshPart)
CONVERSION_PROTOTYPES_NO_FINALIZER(MeshSkin)
CONVERSION_PROTOTYPES(Mouse)
//CONVERSION_PROTOTYPES(Node::UserData)
CONVERSION_PROTOTYPES(NodeCloneContext)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsCharacter)
CONVERSION_PROTOTYPES(PhysicsCollisionObject)
CONVERSION_PROTOTYPES(PhysicsCollisionObject::CollisionListener)
CONVERSION_PROTOTYPES(PhysicsCollisionObject::CollisionPair)
CONVERSION_PROTOTYPES(PhysicsCollisionShape::Definition)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsConstraint)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsController)
CONVERSION_PROTOTYPES(PhysicsController::HitFilter)
CONVERSION_PROTOTYPES(PhysicsController::HitResult)
CONVERSION_PROTOTYPES(HaxePhysicsController_Listener)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsController::Listener)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsFixedConstraint)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsGenericConstraint)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsGhostObject)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsHingeConstraint)
CONVERSION_PROTOTYPES(PhysicsRigidBody::Parameters)
//CONVERSION_PROTOTYPES(PhysicsCollisionObject::PhysicsMotionState)
//CONVERSION_PROTOTYPES(PhysicsCollisionObject::ScriptListener)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsRigidBody)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsSocketConstraint)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsSpringConstraint)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsVehicle)
CONVERSION_PROTOTYPES_NO_FINALIZER(PhysicsVehicleWheel)
CONVERSION_PROTOTYPES(Plane)
CONVERSION_PROTOTYPES(Platform)
CONVERSION_PROTOTYPES(Properties)
CONVERSION_PROTOTYPES(Quaternion)
CONVERSION_PROTOTYPES(Ray)
CONVERSION_PROTOTYPES(gameplay::Rectangle)
//CONVERSION_PROTOTYPES(SceneLoader)
//CONVERSION_PROTOTYPES(ScreenDisplayer)
CONVERSION_PROTOTYPES(HaxeScreenDisplayer)
CONVERSION_PROTOTYPES_NO_FINALIZER(ScriptController)
CONVERSION_PROTOTYPES_NO_FINALIZER(ScriptTarget)
CONVERSION_PROTOTYPES(SpriteBatch)
CONVERSION_PROTOTYPES(Stream)
CONVERSION_PROTOTYPES_NO_FINALIZER(TerrainPatch)
CONVERSION_PROTOTYPES(Theme::SideRegions)
CONVERSION_PROTOTYPES_NO_FINALIZER(Theme::Style)
CONVERSION_PROTOTYPES(Theme::UVs)
CONVERSION_PROTOTYPES(TimeListener)
CONVERSION_PROTOTYPES(Touch)
CONVERSION_PROTOTYPES(Transform)
CONVERSION_PROTOTYPES(Transform::Listener)
//CONVERSION_PROTOTYPES(Transform::TransformListener)
CONVERSION_PROTOTYPES_NO_FINALIZER(Uniform)
CONVERSION_PROTOTYPES(Vector2)
CONVERSION_PROTOTYPES(Vector3)
CONVERSION_PROTOTYPES(Vector4)
CONVERSION_PROTOTYPES(VertexFormat)
CONVERSION_PROTOTYPES(VertexFormat::Element)

CONVERSION_PROTOTYPES_REF(AbsoluteLayout, AbsoluteLayout)
CONVERSION_PROTOTYPES_REF(AIAgent, AIAgent)
CONVERSION_PROTOTYPES_REF(AIState, AIState)
CONVERSION_PROTOTYPES_REF(Animation, Animation)
CONVERSION_PROTOTYPES_REF(AnimationClip, AnimationClip)
CONVERSION_PROTOTYPES_REF(AudioBuffer, AudioBuffer)
CONVERSION_PROTOTYPES_REF(AudioSource, AudioSource)
CONVERSION_PROTOTYPES_REF(Bundle, Bundle)
CONVERSION_PROTOTYPES_REF(Button, Button)
CONVERSION_PROTOTYPES_REF(Camera, Camera)
CONVERSION_PROTOTYPES_REF(CheckBox, CheckBox)
CONVERSION_PROTOTYPES_REF(Container, Container)
CONVERSION_PROTOTYPES_REF(Control, Control)
CONVERSION_PROTOTYPES_REF(Curve, Curve)
CONVERSION_PROTOTYPES_REF(DepthStencilTarget, DepthStencilTarget)
CONVERSION_PROTOTYPES_REF(Effect, Effect)
CONVERSION_PROTOTYPES_REF(FlowLayout, FlowLayout)
CONVERSION_PROTOTYPES_REF(Font, Font)
CONVERSION_PROTOTYPES_REF(Form, Form)
CONVERSION_PROTOTYPES_REF(FrameBuffer, FrameBuffer)
CONVERSION_PROTOTYPES_REF(HeightField, HeightField)
CONVERSION_PROTOTYPES_REF(Image, Image)
CONVERSION_PROTOTYPES_REF(Joint, Joint)
CONVERSION_PROTOTYPES_REF(Joystick, Joystick)
CONVERSION_PROTOTYPES_REF(Label, Label)
CONVERSION_PROTOTYPES_REF(Layout, Layout)
CONVERSION_PROTOTYPES_REF(Light, Light)
CONVERSION_PROTOTYPES_REF(Material, Material)
CONVERSION_PROTOTYPES_REF(MaterialParameter, MaterialParameter)
CONVERSION_PROTOTYPES_REF(Mesh, Mesh)
CONVERSION_PROTOTYPES_REF(Model, Model)
CONVERSION_PROTOTYPES_REF(Node, Node)
CONVERSION_PROTOTYPES_REF(ParticleEmitter, ParticleEmitter)
CONVERSION_PROTOTYPES_REF(Pass, Pass)
CONVERSION_PROTOTYPES_REF(PhysicsCollisionShape, PhysicsCollisionShape)
CONVERSION_PROTOTYPES_REF(RadioButton, RadioButton)
CONVERSION_PROTOTYPES_REF(Ref, Ref)
CONVERSION_PROTOTYPES_REF(RenderState, RenderState)
CONVERSION_PROTOTYPES_REF(RenderState::StateBlock, RenderState_StateBlock)
CONVERSION_PROTOTYPES_REF(RenderTarget, RenderTarget)
CONVERSION_PROTOTYPES_REF(Scene, Scene)
CONVERSION_PROTOTYPES_REF(Slider, Slider)
CONVERSION_PROTOTYPES_REF(Technique, Technique)
CONVERSION_PROTOTYPES_REF(Terrain, Terrain)
CONVERSION_PROTOTYPES_REF(TextBox, TextBox)
CONVERSION_PROTOTYPES_REF(Texture, Texture)
CONVERSION_PROTOTYPES_REF(Texture::Sampler, Texture_Sampler)
CONVERSION_PROTOTYPES_REF(Theme, Theme)
CONVERSION_PROTOTYPES_REF(Theme::ThemeImage, Theme_ThemeImage)
CONVERSION_PROTOTYPES_REF(VertexAttributeBinding, VertexAttributeBinding)
CONVERSION_PROTOTYPES_REF(VerticalLayout, VerticalLayout)

value ReferenceToValue(Ref *pointer, bool free = true, bool increaseRefCount = false);

/*******************************************************************************
 * (TODO)                                                                      *
 ******************************************************************************/

#define COPY_OUTSIDE_SCOPE_PROTOTYPE(type) value CopyOutsideScope(const gameplay::type& obj);

COPY_OUTSIDE_SCOPE_PROTOTYPE(Matrix)
COPY_OUTSIDE_SCOPE_PROTOTYPE(Quaternion)
COPY_OUTSIDE_SCOPE_PROTOTYPE(Vector2)
COPY_OUTSIDE_SCOPE_PROTOTYPE(Vector3)
COPY_OUTSIDE_SCOPE_PROTOTYPE(Vector4)

#endif /* __HAXEAPI_H__ */
