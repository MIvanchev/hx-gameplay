#define IMPLEMENT_API
#include "HaxeAPI.h"

/*******************************************************************************
 * OBJECT KINDS DEFINITION & ALLOCATION                                        *
 ******************************************************************************/

DEFINE_KIND(k_OutParameter);
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
    k_OutParameter = alloc_kind();
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
    else if (val_is_kind(objectB, k_Object_Ref))
    {
        Ref *base = static_cast<Ref*>(val_data(objectB));
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

    if (val_is_kind(objectA, k_OutParameter))
    {
        if (val_is_kind(objectB, k_OutParameter))
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
    else if (val_is_kind(objectA, k_Object_Ref))
    {
        result = TestEquivalence(static_cast<Ref*>(val_data(objectA)), objectB);
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
        hx_failure("Invalid kind specified for equivalence check.");

    return alloc_bool(result);
}
DEFINE_PRIM(testEquivalence, 2)

/*******************************************************************************
 * OUT PARAMETER PASSING                                                       *
 ******************************************************************************/

void FreeOutParameter(value object)
{
#ifdef DEBUG
    printf("DEBUG: Freeing garbage collected out parameter.\n");
#endif

    val_gc(object, NULL);
    if (!val_is_null(object))
    {
        void *handle = val_get_handle(object, k_OutParameter);
        OutParameter *_thisObj = static_cast<OutParameter *>(handle);
        SAFE_DELETE(_thisObj);
    }
}

value CreateOutParameter()
{
    value result = alloc_abstract(k_OutParameter, new OutParameter());
    val_gc(result, FreeOutParameter);
    return result;
}

value SetOutParameterValue(const value& thisObj, const value& _value)
{
    void *handle = val_get_handle(thisObj, k_OutParameter);
    static_cast<OutParameter*>(handle)->_value.set(_value);
    return _value;
}

value GetOutParameterValue(const value& thisObj)
{
    void *handle = val_get_handle(thisObj, k_OutParameter);
    return static_cast<OutParameter*>(handle)->_value.get();
}

inline value createOutParameter()
{
    return CreateOutParameter();
}
DEFINE_PRIM(createOutParameter, 0);

inline value setOutParameterValue(value thisObj, value _value)
{
    return SetOutParameterValue(thisObj, _value);
}
DEFINE_PRIM(setOutParameterValue, 2);

inline value getOutParameterValue(value thisObj)
{
    return GetOutParameterValue(thisObj);
}
DEFINE_PRIM(getOutParameterValue, 1);

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
    {
        void *handle = val_get_handle(object, k_Handle);
        free(handle);
    }
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
 * BOXING / UNBOXING FUNCTIONS                                                 *
 ******************************************************************************/

float ValueToFloat(value _value)
{
    double number = val_get_double(_value);
    return static_cast<float>(number);
}

double ValueToDouble(value _value)
{
    double number = val_get_double(_value);
    return number;
}

unsigned int ValueToUint(value _value)
{
    int number = val_get_int(_value);
    return static_cast<unsigned int>(number);
}

short ValueToShort(value _value)
{
    int number = val_get_int(_value);
    return static_cast<short>(number);
}

unsigned short ValueToUshort(value _value)
{
    int number = val_get_int(_value);
    return static_cast<unsigned short>(number);
}

long ValueToLong(value _value)
{
    int number = val_get_int(_value);
    return static_cast<long>(number);
}

unsigned long ValueToUlong(value _value)
{
    int number = val_get_int(_value);
    return static_cast<unsigned long>(number);
}

size_t ValueToSizeT(value _value)
{
    size_t number = val_get_int(_value);
    return static_cast<size_t>(number);
}

const char *ValueToString(value _value)
{
    if (val_is_null(_value))
        return NULL;

    return val_get_string(_value);
}

value StringToValue(const char *str)
{
    if (str == NULL)
        return alloc_null();

    return alloc_string(str);
}

/*******************************************************************************
 * GAMEPLAY OBJECT PASSING                                                     *
 ******************************************************************************/

value ReferenceToValue(Ref *pointer, bool free, bool increaseRefCount)
{
    if (pointer == NULL)
        return alloc_null();

    void *handle = static_cast<void*>(pointer);
    const value& result = alloc_abstract(k_Object_Ref, handle);

    if (free)
        val_gc(result, &FreeReference);

    if (increaseRefCount)
        pointer->addRef();

    return result;
}

void FreeReference(value object)
{
#ifdef DEBUG
    printf("DEBUG: Releasing reference-counted object.\n");
#endif

    val_gc(object, NULL);
    if (!val_is_null(object))
    {
        void *handle = val_get_handle(object, k_Object_Ref);
        Ref *reference = static_cast<Ref*>(handle);
        SAFE_RELEASE(reference);
    }
}

static char *errorMsg = "Reference or object kind expected.";

#define OBJECT_TO_VALUE(type, base_type, kind)                  					\
value ObjectToValue(const type *pointer)                        					\
{                                                               					\
    if (pointer == NULL)                                        					\
        return alloc_null();                                    					\
																					\
    const base_type *base = static_cast<const base_type*>(pointer);         		\
    const void *handle = static_cast<const void*>(base);                    		\
    const value& result =  alloc_abstract(kind, const_cast<void*>(handle));			\
																					\
    val_gc(result, &FreeObject<type, base_type>);               					\
																					\
    return result;                                              					\
}

#define OBJECT_TO_VALUE_(type, base_type, kind)                 					\
value ObjectToValue(const type *pointer, bool dummy)            					\
{                                                               					\
    if (pointer == NULL)                                        					\
        return alloc_null();                                    					\
																					\
    const base_type *base = static_cast<const base_type*>(pointer);         		\
    const void *handle = static_cast<const void*>(base);                    		\
    const value& result =  alloc_abstract(kind, const_cast<void*>(handle));			\
																					\
    return result;                                              					\
}

#define VALUE_TO_OBJECT(type, base_type)                                                        \
void ValueToObject(value _value, type *&pointer)                                                \
{                                                                                               \
    if (val_is_null(_value))                                                                    \
        pointer = NULL;                                                                         \
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
    else if (val_is_kind(_value, k_Object_Ref))                                                 \
    {                                                                                           \
        Ref *base = static_cast<Ref*>(val_data(_value));                                        \
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

#define CONVERSION_FUNCTIONS_REF(type)  \
    VALUE_TO_OBJECT(type, Ref)

CONVERSION_FUNCTIONS_REF(AbsoluteLayout)
CONVERSION_FUNCTIONS_REF(AIAgent)
CONVERSION_FUNCTIONS(AIAgent::Listener, AIAgent::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AIController, AIController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AIMessage, AIMessage, k_Object)
CONVERSION_FUNCTIONS_REF(AIState)
CONVERSION_FUNCTIONS(AIState::Listener, AIState::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AIStateMachine, AIStateMachine, k_Object)
CONVERSION_FUNCTIONS_REF(Animation)
CONVERSION_FUNCTIONS_REF(AnimationClip)
CONVERSION_FUNCTIONS(AnimationClip::Listener, AnimationClip::Listener, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AnimationController, AnimationController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AnimationTarget, AnimationTarget, k_Object_AnimationTarget)
CONVERSION_FUNCTIONS_NO_FINALIZER(AnimationValue, AnimationValue, k_Object)
CONVERSION_FUNCTIONS_REF(AudioBuffer)
CONVERSION_FUNCTIONS(AudioController, AudioController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(AudioListener, Transform::Listener, k_Object_Transform_Listener)
CONVERSION_FUNCTIONS_REF(AudioSource)
CONVERSION_FUNCTIONS(BoundingBox, BoundingBox, k_Object)
CONVERSION_FUNCTIONS(BoundingSphere, BoundingSphere, k_Object)
CONVERSION_FUNCTIONS_REF(Bundle)
CONVERSION_FUNCTIONS_REF(Button)
CONVERSION_FUNCTIONS_REF(Camera)
CONVERSION_FUNCTIONS_REF(CheckBox)
CONVERSION_FUNCTIONS_REF(Container)
CONVERSION_FUNCTIONS_REF(Control)
CONVERSION_FUNCTIONS(Control::Listener, Control::Listener, k_Object)
CONVERSION_FUNCTIONS_REF(Curve)
CONVERSION_FUNCTIONS_REF(DepthStencilTarget)
CONVERSION_FUNCTIONS_REF(Effect)
CONVERSION_FUNCTIONS(FileSystem, FileSystem, k_Object)
CONVERSION_FUNCTIONS_REF(FlowLayout)
CONVERSION_FUNCTIONS_REF(Font)
CONVERSION_FUNCTIONS(Font::Text, Font::Text, k_Object)
CONVERSION_FUNCTIONS_REF(Form)
CONVERSION_FUNCTIONS_REF(FrameBuffer)
CONVERSION_FUNCTIONS(Frustum, Frustum, k_Object)
CONVERSION_FUNCTIONS(Game, Game, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(Gamepad, Gamepad, k_Object)
CONVERSION_FUNCTIONS(Gesture, Gesture, k_Object)
CONVERSION_FUNCTIONS_REF(Image)
CONVERSION_FUNCTIONS_REF(Joint)
CONVERSION_FUNCTIONS_REF(Joystick)
CONVERSION_FUNCTIONS(Keyboard, Keyboard, k_Object)
CONVERSION_FUNCTIONS_REF(Label)
CONVERSION_FUNCTIONS_REF(Layout)
CONVERSION_FUNCTIONS_REF(Light)
CONVERSION_FUNCTIONS_NO_FINALIZER(Logger, Logger, k_Object)
CONVERSION_FUNCTIONS_REF(Material)
CONVERSION_FUNCTIONS_REF(MaterialParameter)
CONVERSION_FUNCTIONS(Matrix, Matrix, k_Object)
CONVERSION_FUNCTIONS_REF(Mesh)
CONVERSION_FUNCTIONS(MeshBatch, MeshBatch, k_Object)
CONVERSION_FUNCTIONS(MeshPart, MeshPart, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(MeshSkin, Transform::Listener, k_Object_Transform_Listener)
CONVERSION_FUNCTIONS_REF(Model)
CONVERSION_FUNCTIONS(Mouse, Mouse, k_Object)
CONVERSION_FUNCTIONS_REF(Node)
//CONVERSION_FUNCTIONS(Node::UserData, Node::UserData, k_Object)
CONVERSION_FUNCTIONS(NodeCloneContext, NodeCloneContext, k_Object)
CONVERSION_FUNCTIONS_REF(ParticleEmitter)
CONVERSION_FUNCTIONS_REF(Pass)
CONVERSION_FUNCTIONS_NO_FINALIZER(PhysicsCharacter, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS(PhysicsCollisionObject, PhysicsCollisionObject, k_Object_PhysicsCollisionObject)
CONVERSION_FUNCTIONS(PhysicsCollisionObject::CollisionListener, PhysicsCollisionObject::CollisionListener, k_Object)
CONVERSION_FUNCTIONS(PhysicsCollisionObject::CollisionPair, PhysicsCollisionObject::CollisionPair, k_Object)
CONVERSION_FUNCTIONS_REF(PhysicsCollisionShape)
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
CONVERSION_FUNCTIONS_REF(RadioButton)
CONVERSION_FUNCTIONS(Ray, Ray, k_Object)
CONVERSION_FUNCTIONS(gameplay::Rectangle, gameplay::Rectangle, k_Object)
CONVERSION_FUNCTIONS_REF(Ref)
CONVERSION_FUNCTIONS_REF(RenderState)
CONVERSION_FUNCTIONS_REF(RenderState::StateBlock)
CONVERSION_FUNCTIONS_REF(RenderTarget)
CONVERSION_FUNCTIONS_REF(Scene)
//CONVERSION_FUNCTIONS(SceneLoader, SceneLoader, k_Object)
//CONVERSION_FUNCTIONS(ScreenDisplayer, ScreenDisplayer, k_Object)
CONVERSION_FUNCTIONS(HaxeScreenDisplayer, HaxeScreenDisplayer, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(ScriptController, ScriptController, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(ScriptTarget, ScriptTarget, k_Object_ScriptTarget)
CONVERSION_FUNCTIONS_REF(Slider)
CONVERSION_FUNCTIONS(SpriteBatch, SpriteBatch, k_Object)
CONVERSION_FUNCTIONS(Stream, Stream, k_Object)
CONVERSION_FUNCTIONS_REF(Technique)
CONVERSION_FUNCTIONS_REF(TextBox)
CONVERSION_FUNCTIONS_REF(Texture)
CONVERSION_FUNCTIONS_REF(Texture::Sampler)
CONVERSION_FUNCTIONS_REF(Theme)
CONVERSION_FUNCTIONS(Theme::SideRegions, Theme::SideRegions, k_Object)
CONVERSION_FUNCTIONS_NO_FINALIZER(Theme::Style, Theme::Style, k_Object)
CONVERSION_FUNCTIONS_REF(Theme::ThemeImage)
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
CONVERSION_FUNCTIONS_REF(VertexAttributeBinding)
CONVERSION_FUNCTIONS(VertexFormat, VertexFormat, k_Object)
CONVERSION_FUNCTIONS(VertexFormat::Element, VertexFormat::Element, k_Object)
CONVERSION_FUNCTIONS_REF(VerticalLayout)

/*******************************************************************************
 * (TODO)                                                                      *
 ******************************************************************************/

static Vector2 objVector2;
Vector2& SaveFromScopeDeath(const Vector2& obj)
{
	objVector2.set(obj);
	return objVector2;
}

static Vector3 objVector3;
Vector3& SaveFromScopeDeath(const Vector3& obj)
{
	objVector3.set(obj);
	return objVector3;
}

static Vector4 objVector4;
Vector4& SaveFromScopeDeath(const Vector4& obj)
{
	objVector4.set(obj);
	return objVector4;
}
