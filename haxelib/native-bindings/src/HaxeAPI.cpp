#include <uthash/uthash.h>
#define IMPLEMENT_API
#include "HaxeAPI.h"

/*******************************************************************************
 * OBJECT KINDS DEFINITION & ALLOCATION                                        *
 ******************************************************************************/

DEFINE_KIND(k_Binder);
DEFINE_KIND(k_Handle);
DEFINE_KIND(k_Array);
DEFINE_KIND(k_Object);
DEFINE_KIND(k_Object_AnimationTarget);
DEFINE_KIND(k_Object_PhysicsCollisionObject);
DEFINE_KIND(k_Object_Ref);
DEFINE_KIND(k_Object_ScriptTarget);
DEFINE_KIND(k_Object_Transform_Listener);

extern "C" void allocateKinds()
{
    k_Binder = alloc_kind();
    k_Handle = alloc_kind();
    k_Array = alloc_kind();
    k_Object = alloc_kind();
    k_Object_AnimationTarget = alloc_kind();
    k_Object_PhysicsCollisionObject = alloc_kind();
    k_Object_Ref = alloc_kind();
    k_Object_ScriptTarget = alloc_kind();
    k_Object_Transform_Listener = alloc_kind();

#ifdef DEBUG
    printf("DEBUG: Object kinds allocated.\n");
#endif
}

DEFINE_ENTRY_POINT(allocateKinds);

/*******************************************************************************
 * OUT PARAMETER PASSING                                                       *
 ******************************************************************************/

void SetOutParameterValue(const value& thisObj, const value& _value)
{
    if (!val_is_null(thisObj))
    {
        if (!val_is_object(thisObj))
            hx_failure("Out parameter expected.");
        alloc_field(thisObj, val_id("value"), _value);
    }
}


/*******************************************************************************
 * FUNCTION BINDERS                                                            *
 ******************************************************************************/

value createFunctionBinder(value func)
{
    void *data = static_cast<void*>(new Binder(func));
    const value& binder = alloc_abstract(k_Binder, data);
    return binder;
}
DEFINE_PRIM(createFunctionBinder, 1);

/*******************************************************************************
 * HANDLE PASSING                                                              *
 ******************************************************************************/

void FreeHandle(value object)
{
#ifdef DEBUG
    printf("DEBUG: Freeing garbage collected handle.\n");
#endif

    val_gc(object, NULL);
    if (!val_is_null(object))
        free(val_get_handle(object, k_Handle));
}

/*******************************************************************************
 * NATIVE ARRAYS                                                               *
 ******************************************************************************/

#define NATIVE_ARRAY_CONSTRUCTOR(type, name)                \
value allocNativeArray##name(value size, value reclaim)     \
{                                                           \
    unsigned int _size = ValueToUint(size);                 \
    bool _reclaim = val_get_bool(reclaim);                  \
    type *array = new type[_size];                          \
    void *data = static_cast<void*>(array);                 \
    const value& result = alloc_abstract(k_Array, data);    \
    if (_reclaim)                                           \
        val_gc(result, &FreeArray<type>);                   \
    return result;                                          \
}                                                           \
DEFINE_PRIM(allocNativeArray##name, 2);

#define NATIVE_ARRAY_GETTER_OBJECT(type, name)                  \
value getNativeArrayElement##name(value thisObj, value index)   \
{                                                               \
    type* _thisObj;                                             \
    unsigned int _index = ValueToUint(index);                   \
    ValueToArray(thisObj, _thisObj);                            \
    return ObjectToValue(&_thisObj[_index], false);             \
}                                                               \
DEFINE_PRIM(getNativeArrayElement##name, 2);

#define NATIVE_ARRAY_GETTER_PRIMITIVE(type, name, converter)    \
value getNativeArrayElement##name(value thisObj, value index)   \
{                                                               \
    type* _thisObj;                                             \
    unsigned int _index = ValueToUint(index);                   \
    ValueToArray(thisObj, _thisObj);                            \
    return converter(_thisObj[_index]);                         \
}                                                               \
DEFINE_PRIM(getNativeArrayElement##name, 2);

#define NATIVE_ARRAY_SETTER_PRIMITIVE(type, name, converter)                \
void setNativeArrayElement##name(value thisObj, value index, value _val)    \
{                                                                           \
    type* _thisObj;                                                         \
    unsigned int _index = ValueToUint(index);                               \
    ValueToArray(thisObj, _thisObj);                                        \
    _thisObj[_index] = converter(_val);                                     \
}                                                                           \
DEFINE_PRIM(setNativeArrayElement##name, 3)

#define NATIVE_ARRAY_FUNCTIONS_OBJECT(type) \
    NATIVE_ARRAY_CONSTRUCTOR(type, type)    \
    NATIVE_ARRAY_GETTER_OBJECT(type, type)

#define NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(type, name, from, to)  \
    NATIVE_ARRAY_CONSTRUCTOR(type, name)                        \
    NATIVE_ARRAY_GETTER_PRIMITIVE(type, name, from)             \
    NATIVE_ARRAY_SETTER_PRIMITIVE(type, name, to)

NATIVE_ARRAY_FUNCTIONS_OBJECT(Matrix)
NATIVE_ARRAY_FUNCTIONS_OBJECT(Quaternion)
NATIVE_ARRAY_FUNCTIONS_OBJECT(Vector2)
NATIVE_ARRAY_FUNCTIONS_OBJECT(Vector3)
NATIVE_ARRAY_FUNCTIONS_OBJECT(Vector4)
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(int, Int, alloc_int, val_get_int);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(unsigned int, Uint, alloc_int, ValueToUint);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(short, Short, alloc_int, ValueToShort);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(unsigned short, Ushort, alloc_int, ValueToUshort);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(char, Char, alloc_int, val_get_int);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(unsigned char, Byte, alloc_int, val_get_int);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(float, Float, alloc_float, ValueToFloat);
NATIVE_ARRAY_FUNCTIONS_PRIMITIVE(double, Double, alloc_float, ValueToDouble);

/*******************************************************************************
 * GAMEPLAY OBJECT PASSING                                                     *
 ******************************************************************************/

struct WrappedReference
{
    Ref *key;
    AutoGCRoot wrapper;
    UT_hash_handle hh;

    WrappedReference()
        : wrapper(alloc_null())
    { }
};

static WrappedReference *referenceHash = NULL;
static WrappedReference *referenceCache = NULL;
static std::list<AutoGCRoot*> roots;

void FreeReference(value object)
{
#ifdef DEBUG
    printf("DEBUG: Releasing reference-counted object.\n");
#endif

    val_gc(object, NULL);
    if (!val_is_null(object))
    {
        void *handle = val_get_handle(object, k_Object_Ref);
        WrappedReference *wrappedReference = static_cast<WrappedReference*>(handle);
        HASH_DEL(referenceHash, wrappedReference);
        SAFE_RELEASE(wrappedReference->key);
        SAFE_DELETE(wrappedReference);
    }
}

#define REFERENCE_TO_VALUE(type, name)                                                                      \
static AutoGCRoot refConstructor ## name(alloc_null());                                                     \
value ReferenceToValue (type *object, bool increaseRefCount)                                                \
{                                                                                                           \
    if (object == NULL)                                                                                     \
        return alloc_null();                                                                                \
                                                                                                            \
    WrappedReference *wrappedReference;                                                                     \
    Ref *key = static_cast<Ref*>(object);                                                                   \
    HASH_FIND_PTR(referenceHash, &key, wrappedReference);                                                   \
    if (wrappedReference == NULL)                                                                           \
    {                                                                                                       \
        if (increaseRefCount)                                                                               \
            object->addRef();                                                                               \
                                                                                                            \
        wrappedReference = new WrappedReference();                                                          \
        const value& nativeObject = alloc_abstract(k_Object_Ref, static_cast<void*>(wrappedReference));     \
        val_gc(nativeObject, FreeReference);                                                                \
        const value& wrapper = val_call1(refConstructor ## name.get(), nativeObject);                       \
        wrappedReference->key = key;                                                                        \
        wrappedReference->wrapper.set(wrapper);                                                             \
        HASH_ADD_PTR(referenceHash, key, wrappedReference);                                                 \
    }                                                                                                       \
                                                                                                            \
    referenceCache = wrappedReference;                                                                      \
                                                                                                            \
    return wrappedReference->wrapper.get();                                                                 \
}

static char *errorMsg = "Reference or object kind expected.";

#define OBJECT_TO_VALUE(type, base_type, kind)                                      \
value ObjectToValue(const type *pointer)                                            \
{                                                                                   \
    if (pointer == NULL)                                                            \
        return alloc_null();                                                        \
                                                                                    \
    const base_type *base = static_cast<const base_type*>(pointer);                 \
    const void *handle = static_cast<const void*>(base);                            \
    const value& result =  alloc_abstract(kind, const_cast<void*>(handle));         \
    val_gc(result, &FreeObject<type, base_type>);                                   \
                                                                                    \
    return result;                                                                  \
}

#define OBJECT_TO_VALUE_(type, base_type, kind)                                     \
value ObjectToValue(const type *pointer, bool dummy)                                \
{                                                                                   \
    if (pointer == NULL)                                                            \
        return alloc_null();                                                        \
                                                                                    \
    const base_type *base = static_cast<const base_type*>(pointer);                 \
    const void *handle = static_cast<const void*>(base);                            \
    uintptr_t storage = reinterpret_cast<uintptr_t>(handle);                        \
    return alloc_float(static_cast<double>(storage));                               \
}

#define VALUE_TO_OBJECT(type, base_type)                                                        \
void ValueToObject(value _value, type *&pointer)                                                \
{                                                                                               \
    if (val_is_null(_value))                                                                    \
        pointer = NULL;                                                                         \
    else if (val_is_kind(_value, k_Object_Ref))                                                 \
    {                                                                                           \
        WrappedReference *wrappedReference = static_cast<WrappedReference*>(val_data(_value));  \
        pointer = dynamic_cast<type*>(wrappedReference->key);                                   \
    }                                                                                           \
    else if (val_is_float(_value))                                                              \
    {                                                                                           \
        double storage = ValueToDouble(_value);                                                 \
        uintptr_t ptr = static_cast<uintptr_t>(storage);                                        \
        base_type *base = reinterpret_cast<base_type*>(ptr);                                    \
        pointer = dynamic_cast<type*>(base);                                                    \
    }                                                                                           \
    else if (val_is_kind(_value, k_Object))                                                     \
    {                                                                                           \
        base_type *base = static_cast<base_type*>(val_data(_value));                            \
        pointer = static_cast<type*>(base);                                                     \
    }                                                                                           \
    else if (val_is_kind(_value, k_Object_AnimationTarget))                                     \
    {                                                                                           \
        AnimationTarget *base = static_cast<AnimationTarget*>(val_data(_value));                \
        pointer = dynamic_cast<type*>(base);                                                    \
    }                                                                                           \
    else if (val_is_kind(_value, k_Object_PhysicsCollisionObject))                              \
    {                                                                                           \
        PhysicsCollisionObject *base = static_cast<PhysicsCollisionObject*>(val_data(_value));  \
        pointer = dynamic_cast<type*>(base);                                                    \
    }                                                                                           \
    else if (val_is_kind(_value, k_Object_ScriptTarget))                                        \
    {                                                                                           \
        ScriptTarget *base = static_cast<ScriptTarget*>(val_data(_value));                      \
        pointer = dynamic_cast<type*>(base);                                                    \
    }                                                                                           \
    else if (val_is_kind(_value, k_Object_Transform_Listener))                                  \
    {                                                                                           \
        Transform::Listener *base = static_cast<Transform::Listener*>(val_data(_value));        \
        pointer = dynamic_cast<type*>(base);                                                    \
    }                                                                                           \
    else                                                                                        \
        hx_failure(errorMsg);                                                                   \
}

#define CONVERSION_FUNCTIONS_NO_FINALIZER(type, base_type, kind)    \
    OBJECT_TO_VALUE_(type, base_type, kind)                         \
    VALUE_TO_OBJECT(type, base_type)

#define CONVERSION_FUNCTIONS(type, base_type, kind) \
    OBJECT_TO_VALUE_(type, base_type, kind)         \
    OBJECT_TO_VALUE(type, base_type, kind)          \
    VALUE_TO_OBJECT(type, base_type)

#define CONVERSION_FUNCTIONS_REF(type, name)    \
    REFERENCE_TO_VALUE(type, name)              \
    VALUE_TO_OBJECT(type, Ref)

CONVERSION_FUNCTIONS(AIAgent::Listener, AIAgent::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AIController, AIController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AIMessage, AIMessage, k_Object)
CONVERSION_FUNCTIONS(AIState::Listener, AIState::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AIStateMachine, AIStateMachine, k_Object)
CONVERSION_FUNCTIONS(AnimationClip::Listener, AnimationClip::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AnimationController, AnimationController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AnimationTarget, AnimationTarget, k_Object_AnimationTarget)
CONVERSION_FUNCTIONS_NO_FINALIZER(AnimationValue, AnimationValue, k_Object)
CONVERSION_FUNCTIONS(AudioController, AudioController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AudioListener, Transform::Listener, k_Object_Transform_Listener)
CONVERSION_FUNCTIONS(BoundingBox, BoundingBox, k_Object)
CONVERSION_FUNCTIONS(BoundingSphere, BoundingSphere, k_Object)
CONVERSION_FUNCTIONS(Control::Listener, Control::Listener, k_Object)
CONVERSION_FUNCTIONS(FileSystem, FileSystem, k_Object)
CONVERSION_FUNCTIONS(Font::Text, Font::Text, k_Object)
CONVERSION_FUNCTIONS(Frustum, Frustum, k_Object)
CONVERSION_FUNCTIONS(Game, Game, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(Gamepad, Gamepad, k_Object)
CONVERSION_FUNCTIONS(Gesture, Gesture, k_Object)
CONVERSION_FUNCTIONS(Keyboard, Keyboard, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(Logger, Logger, k_Object)
CONVERSION_FUNCTIONS(Matrix, Matrix, k_Object)
CONVERSION_FUNCTIONS(MeshBatch, MeshBatch, k_Object)
CONVERSION_FUNCTIONS(MeshPart, MeshPart, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(MeshSkin, Transform::Listener, k_Object_Transform_Listener)
CONVERSION_FUNCTIONS(Mouse, Mouse, k_Object)
//CONVERSION_FUNCTIONS(Node::UserData, Node::UserData, k_Object)
CONVERSION_FUNCTIONS(NodeCloneContext, NodeCloneContext, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsCharacter, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS(PhysicsCollisionObject, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS(PhysicsCollisionObject::CollisionListener, PhysicsCollisionObject::CollisionListener, k_Object)
CONVERSION_FUNCTIONS(PhysicsCollisionObject::CollisionPair, PhysicsCollisionObject::CollisionPair, k_Object)
CONVERSION_FUNCTIONS(PhysicsCollisionShape::Definition, PhysicsCollisionShape::Definition, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsConstraint, PhysicsConstraint, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsController, ScriptTarget, k_Object_ScriptTarget)
CONVERSION_FUNCTIONS(PhysicsController::HitFilter, PhysicsController::HitFilter, k_Object)
CONVERSION_FUNCTIONS(PhysicsController::HitResult, PhysicsController::HitResult, k_Object)
CONVERSION_FUNCTIONS(HaxePhysicsController_Listener, PhysicsController::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsController::Listener, PhysicsController::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsFixedConstraint, PhysicsConstraint, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsGenericConstraint, PhysicsConstraint, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsGhostObject, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsHingeConstraint, PhysicsConstraint, k_Object)
CONVERSION_FUNCTIONS(PhysicsRigidBody::Parameters, PhysicsRigidBody::Parameters, k_Object)
//CONVERSION_FUNCTIONS(PhysicsCollisionObject::PhysicsMotionState, PhysicsCollisionObject::PhysicsMotionState, )
//CONVERSION_FUNCTIONS(PhysicsCollisionObject::ScriptListener, PhysicsCollisionObject::CollisionListener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsRigidBody, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsSocketConstraint, PhysicsConstraint, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsSpringConstraint, PhysicsConstraint, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsVehicle, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsVehicleWheel, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS(Plane, Plane, k_Object)
CONVERSION_FUNCTIONS(Platform, Platform, k_Object)
CONVERSION_FUNCTIONS(Properties, Properties, k_Object)
CONVERSION_FUNCTIONS(Quaternion, Quaternion, k_Object)
CONVERSION_FUNCTIONS(Ray, Ray, k_Object)
CONVERSION_FUNCTIONS(gameplay::Rectangle, gameplay::Rectangle, k_Object)
//CONVERSION_FUNCTIONS(SceneLoader, SceneLoader, k_Object)
//CONVERSION_FUNCTIONS(ScreenDisplayer, ScreenDisplayer, k_Object)
CONVERSION_FUNCTIONS(HaxeScreenDisplayer, HaxeScreenDisplayer, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(ScriptController, ScriptController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(ScriptTarget, ScriptTarget, k_Object_ScriptTarget)
CONVERSION_FUNCTIONS(SpriteBatch, SpriteBatch, k_Object)
CONVERSION_FUNCTIONS(Stream, Stream, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(TerrainPatch, TerrainPatch, k_Object)
CONVERSION_FUNCTIONS(Theme::SideRegions, Theme::SideRegions, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(Theme::Style, Theme::Style, k_Object)
CONVERSION_FUNCTIONS(Theme::UVs, Theme::UVs, k_Object)
CONVERSION_FUNCTIONS(TimeListener, TimeListener, k_Object)
CONVERSION_FUNCTIONS(Touch, Touch, k_Object)
CONVERSION_FUNCTIONS(Transform, AnimationTarget, k_Object_AnimationTarget)
CONVERSION_FUNCTIONS(Transform::Listener, Transform::Listener, k_Object_Transform_Listener)
//CONVERSION_FUNCTIONS(Transform::TransformListener, Transform::TransformListener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(Uniform, Uniform, k_Object)
CONVERSION_FUNCTIONS(Vector2, Vector2, k_Object)
CONVERSION_FUNCTIONS(Vector3, Vector3, k_Object)
CONVERSION_FUNCTIONS(Vector4, Vector4, k_Object)
CONVERSION_FUNCTIONS(VertexFormat, VertexFormat, k_Object)
CONVERSION_FUNCTIONS(VertexFormat::Element, VertexFormat::Element, k_Object)

CONVERSION_FUNCTIONS_REF(AbsoluteLayout, AbsoluteLayout)
CONVERSION_FUNCTIONS_REF(AIAgent, AIAgent)
CONVERSION_FUNCTIONS_REF(AIState, AIState)
CONVERSION_FUNCTIONS_REF(Animation, Animation)
CONVERSION_FUNCTIONS_REF(AnimationClip, AnimationClip)
CONVERSION_FUNCTIONS_REF(AudioBuffer, AudioBuffer)
CONVERSION_FUNCTIONS_REF(AudioSource, AudioSource)
CONVERSION_FUNCTIONS_REF(Bundle, Bundle)
CONVERSION_FUNCTIONS_REF(Button, Button)
CONVERSION_FUNCTIONS_REF(Camera, Camera)
CONVERSION_FUNCTIONS_REF(CheckBox, CheckBox)
CONVERSION_FUNCTIONS_REF(Container, Container)
CONVERSION_FUNCTIONS_REF(Control, Control)
CONVERSION_FUNCTIONS_REF(Curve, Curve)
CONVERSION_FUNCTIONS_REF(DepthStencilTarget, DepthStencilTarget)
CONVERSION_FUNCTIONS_REF(Effect, Effect)
CONVERSION_FUNCTIONS_REF(FlowLayout, FlowLayout)
CONVERSION_FUNCTIONS_REF(Font, Font)
CONVERSION_FUNCTIONS_REF(Form, Form)
CONVERSION_FUNCTIONS_REF(FrameBuffer, FrameBuffer)
CONVERSION_FUNCTIONS_REF(HeightField, HeightField)
CONVERSION_FUNCTIONS_REF(Image, Image)
CONVERSION_FUNCTIONS_REF(Joint, Joint)
CONVERSION_FUNCTIONS_REF(Joystick, Joystick)
CONVERSION_FUNCTIONS_REF(Label, Label)
CONVERSION_FUNCTIONS_REF(Layout, Layout)
CONVERSION_FUNCTIONS_REF(Light, Light)
CONVERSION_FUNCTIONS_REF(Material, Material)
CONVERSION_FUNCTIONS_REF(MaterialParameter, MaterialParameter)
CONVERSION_FUNCTIONS_REF(Mesh, Mesh)
CONVERSION_FUNCTIONS_REF(Model, Model)
CONVERSION_FUNCTIONS_REF(Node, Node)
CONVERSION_FUNCTIONS_REF(ParticleEmitter, ParticleEmitter)
CONVERSION_FUNCTIONS_REF(Pass, Pass)
CONVERSION_FUNCTIONS_REF(PhysicsCollisionShape, PhysicsCollisionShape)
CONVERSION_FUNCTIONS_REF(RadioButton, RadioButton)
CONVERSION_FUNCTIONS_REF(Ref, Ref)
CONVERSION_FUNCTIONS_REF(RenderState, RenderState)
CONVERSION_FUNCTIONS_REF(RenderState::StateBlock, RenderState_StateBlock)
CONVERSION_FUNCTIONS_REF(RenderTarget, RenderTarget)
CONVERSION_FUNCTIONS_REF(Scene, Scene)
CONVERSION_FUNCTIONS_REF(Slider, Slider)
CONVERSION_FUNCTIONS_REF(Technique, Technique)
CONVERSION_FUNCTIONS_REF(Terrain, Terrain)
CONVERSION_FUNCTIONS_REF(TextBox, TextBox)
CONVERSION_FUNCTIONS_REF(Texture, Texture)
CONVERSION_FUNCTIONS_REF(Texture::Sampler, Texture_Sampler)
CONVERSION_FUNCTIONS_REF(Theme, Theme)
CONVERSION_FUNCTIONS_REF(Theme::ThemeImage, Theme_ThemeImage)
CONVERSION_FUNCTIONS_REF(VertexAttributeBinding, VertexAttributeBinding)
CONVERSION_FUNCTIONS_REF(VerticalLayout, VerticalLayout)

void setReferenceConstructor(value name, value constructor, value updater)
{
    const char *_name = ValueToString(name);
#define APPLY_CONSTRUCTOR(type)                     \
    if (!strcmp(_name, #type))                      \
    {                                               \
        refConstructor ## type.set(constructor);    \
        roots.push_back(&refConstructor ## type);   \
        return;                                     \
    }
    APPLY_CONSTRUCTOR(AbsoluteLayout)
    APPLY_CONSTRUCTOR(AIAgent)
    APPLY_CONSTRUCTOR(AIState)
    APPLY_CONSTRUCTOR(Animation)
    APPLY_CONSTRUCTOR(AnimationClip)
    APPLY_CONSTRUCTOR(AudioBuffer)
    APPLY_CONSTRUCTOR(Bundle)
    APPLY_CONSTRUCTOR(Button)
    APPLY_CONSTRUCTOR(Camera)
    APPLY_CONSTRUCTOR(CheckBox)
    APPLY_CONSTRUCTOR(Container)
    APPLY_CONSTRUCTOR(Control)
    APPLY_CONSTRUCTOR(Curve)
    APPLY_CONSTRUCTOR(DepthStencilTarget)
    APPLY_CONSTRUCTOR(Effect)
    APPLY_CONSTRUCTOR(FlowLayout)
    APPLY_CONSTRUCTOR(Font)
    APPLY_CONSTRUCTOR(Form)
    APPLY_CONSTRUCTOR(FrameBuffer)
	APPLY_CONSTRUCTOR(HeightField)
    APPLY_CONSTRUCTOR(Image)
    APPLY_CONSTRUCTOR(Joint)
    APPLY_CONSTRUCTOR(Joystick)
    APPLY_CONSTRUCTOR(Label)
    APPLY_CONSTRUCTOR(Layout)
    APPLY_CONSTRUCTOR(Light)
    APPLY_CONSTRUCTOR(Material)
    APPLY_CONSTRUCTOR(MaterialParameter)
    APPLY_CONSTRUCTOR(Mesh)
    APPLY_CONSTRUCTOR(Model)
    APPLY_CONSTRUCTOR(Node)
    APPLY_CONSTRUCTOR(ParticleEmitter)
    APPLY_CONSTRUCTOR(Pass)
    APPLY_CONSTRUCTOR(PhysicsCollisionShape)
    APPLY_CONSTRUCTOR(RadioButton)
    APPLY_CONSTRUCTOR(RenderState)
    APPLY_CONSTRUCTOR(RenderState_StateBlock)
    APPLY_CONSTRUCTOR(RenderTarget)
    APPLY_CONSTRUCTOR(Scene)
    APPLY_CONSTRUCTOR(Slider)
    APPLY_CONSTRUCTOR(Technique)
	APPLY_CONSTRUCTOR(Terrain)
    APPLY_CONSTRUCTOR(TextBox)
    APPLY_CONSTRUCTOR(Texture)
    APPLY_CONSTRUCTOR(Texture_Sampler)
    APPLY_CONSTRUCTOR(Theme)
    APPLY_CONSTRUCTOR(Theme_ThemeImage)
    APPLY_CONSTRUCTOR(VertexAttributeBinding)
    APPLY_CONSTRUCTOR(VerticalLayout)

    hx_failure("Invalid class specified.");
}
DEFINE_PRIM(setReferenceConstructor, 2)

void setReferenceInstance(value refWrapper, value wrapper)
{
    void *data = val_get_handle(refWrapper, k_Object_Ref);
    WrappedReference *_refWrapper = static_cast<WrappedReference*>(data);
    _refWrapper->wrapper.set(wrapper);
}
DEFINE_PRIM(setReferenceInstance, 2)

value wrapCachedReference()
{
    return alloc_abstract(k_Object_Ref, static_cast<void*>(referenceCache));
}
DEFINE_PRIM(wrapCachedReference, 0)

void releaseReferenceConstructors()
{
    for (std::list<AutoGCRoot*>::iterator it = roots.begin(); it != roots.end(); it++)
        (*it)->set(alloc_null());
    roots.clear();
}
DEFINE_PRIM(releaseReferenceConstructors, 0)

/*******************************************************************************
 * EQUIVALENCE TESTING                                                         *
 ******************************************************************************/

template<typename T>
bool TestEquivalence(T* objectA,  const value& objectB)
{
    if (val_is_kind(objectB, k_Object_AnimationTarget))
    {
        AnimationTarget *base = static_cast<AnimationTarget*>(val_data(objectB));
        if (objectA == dynamic_cast<T*>(base))
            return true;
    }
    else if (val_is_kind(objectB, k_Object_PhysicsCollisionObject))
    {
        PhysicsCollisionObject *base = static_cast<PhysicsCollisionObject*>(val_data(objectB));
        if (objectA == dynamic_cast<T*>(base))
            return true;
    }
    else if (val_is_kind(objectB, k_Object_ScriptTarget))
    {
        ScriptTarget *base = static_cast<ScriptTarget*>(val_data(objectB));
        if (objectA == dynamic_cast<T*>(base))
            return true;
    }
    else if (val_is_kind(objectB, k_Object_Transform_Listener))
    {
        Transform::Listener *base = static_cast<Transform::Listener*>(val_data(objectB));
        if (objectA == dynamic_cast<T*>(base))
            return true;
    }
    else
        hx_failure("Invalid destination type specified in equivalence test.");

    return false;
}

value testEquivalence(value objectA, value objectB)
{
    if (val_is_null(objectA))
    {
        if (val_is_null(objectB))
            return val_true;
        else
            return val_false;
    }

    bool result = false;

    if (val_is_kind(objectA, k_Binder))
    {
        if (val_is_kind(objectB, k_Binder))
            result = val_data(objectA) == val_data(objectB);
    }
    else if (val_is_kind(objectA, k_Handle))
    {
        if (val_is_kind(objectB, k_Handle))
            result = val_data(objectA) == val_data(objectB);
    }
    else if (val_is_kind(objectA, k_Array))
    {
        if (val_is_kind(objectB, k_Array))
            result = val_data(objectA) == val_data(objectB);
    }
    else if (val_is_kind(objectA, k_Object_Ref))
    {
        if (val_is_kind(objectB, k_Object_Ref))
            result = val_data(objectA) == val_data(objectB);
    }
    else if (val_is_kind(objectA, k_Object))
    {
        if (val_is_kind(objectB, k_Object))
            result = val_data(objectA) == val_data(objectB);
    }
    else if (val_is_kind(objectA, k_Object_AnimationTarget))
    {
        result = TestEquivalence(static_cast<AnimationTarget*>(val_data(objectA)), objectB);
    }
    else if (val_is_kind(objectA, k_Object_PhysicsCollisionObject))
    {
        result = TestEquivalence(static_cast<PhysicsCollisionObject*>(val_data(objectA)), objectB);
    }
    else if (val_is_kind(objectA, k_Object_ScriptTarget))
    {
        result = TestEquivalence(static_cast<ScriptTarget*>(val_data(objectA)), objectB);
    }
    else if (val_is_kind(objectA, k_Object_Transform_Listener))
    {
        result = TestEquivalence(static_cast<Transform::Listener*>(val_data(objectA)), objectB);
    }
    else
        hx_failure("Invalid kind specified in equivalence check.");

    return alloc_bool(result);
}
DEFINE_PRIM(testEquivalence, 2)

/*******************************************************************************
 * (TODO)                                                                      *
 ******************************************************************************/

#define BEGIN_COPY_OUTSIDE_SCOPE(type)              \
static gameplay::type obj ## type;                  \
value CopyOutsideScope(const gameplay::type& obj)	\
{                                                   \
    gameplay::type& copy = obj ## type;

#define END_COPY_OUTSIDE_SCOPE          \
    return ObjectToValue(&copy, false); \
}

BEGIN_COPY_OUTSIDE_SCOPE(Matrix)
    copy.set(obj);
END_COPY_OUTSIDE_SCOPE

BEGIN_COPY_OUTSIDE_SCOPE(Quaternion)
    copy.set(obj);
END_COPY_OUTSIDE_SCOPE

BEGIN_COPY_OUTSIDE_SCOPE(Rectangle)
    copy.set(obj);
END_COPY_OUTSIDE_SCOPE

BEGIN_COPY_OUTSIDE_SCOPE(Vector2)
    copy.set(obj);
END_COPY_OUTSIDE_SCOPE

BEGIN_COPY_OUTSIDE_SCOPE(Vector3)
    copy.set(obj);
END_COPY_OUTSIDE_SCOPE

BEGIN_COPY_OUTSIDE_SCOPE(Vector4)
    copy.set(obj);
END_COPY_OUTSIDE_SCOPE
