package org.gameplay3d;

import org.gameplay3d.immutable.IVector3;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class PhysicsCollisionShape : public Ref
class PhysicsCollisionShape extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static PhysicsCollisionShape::Definition box();
    public static function box():PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_box());
    }

    // DECL: static PhysicsCollisionShape::Definition box(const Vector3& extents, const Vector3& center = Vector3::zero(), bool absolute = false);
    public static function box_V3X2_Bool(extents:IVector3, center:IVector3, absolute:Bool = false):PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_box_V3X2_Bool(extents.native(), center.native(), absolute));
    }

    // DECL: static PhysicsCollisionShape::Definition capsule();
    public static function capsule():PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_capsule());
    }

    // DECL: static PhysicsCollisionShape::Definition capsule(float radius, float height, const Vector3& center = Vector3::zero(), bool absolute = false);
    public static function capsule_FltX2_V3_Bool(radius:Float, height:Float, center:IVector3, absolute:Bool = false):PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_capsule_FltX2_V3_Bool(radius, height, center.native(), absolute));
    }

    // DECL: PhysicsCollisionShape::Type getType() const;
    public function getType():Int
    {
        return hx_PhysicsCollisionShape_getType(nativeObject);
    }

    // DECL: static PhysicsCollisionShape::Definition heightfield();
    public static function heightfield():PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_heightfield());
    }

    // DECL: static PhysicsCollisionShape::Definition heightfield(HeightField* heightfield);
    public static function heightfield_HghtFld(heightfield:HeightField):PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_heightfield_HghtFld(heightfield.native()));
    }

    // DECL: static PhysicsCollisionShape::Definition mesh(Mesh* mesh);
    public static function mesh(mesh:Mesh):PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_mesh(mesh.native()));
    }

    // DECL: static PhysicsCollisionShape::Definition sphere();
    public static function sphere():PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_sphere());
    }

    // DECL: static PhysicsCollisionShape::Definition sphere(float radius, const Vector3& center = Vector3::zero(), bool absolute = false);
    public static function sphere_Flt_V3_Bool(radius:Float, center:IVector3, absolute:Bool = false):PhysicsCollisionShape_Definition
    {
        return PhysicsCollisionShape_Definition.wrap(hx_PhysicsCollisionShape_static_sphere_Flt_V3_Bool(radius, center.native(), absolute));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_PhysicsCollisionShape_static_box = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_box", 0);
    static var hx_PhysicsCollisionShape_static_box_V3X2_Bool = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_box_V3X2_Bool", 3);
    static var hx_PhysicsCollisionShape_static_capsule = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_capsule", 0);
    static var hx_PhysicsCollisionShape_static_capsule_FltX2_V3_Bool = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_capsule_FltX2_V3_Bool", 4);
    static var hx_PhysicsCollisionShape_getType = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_getType", 1);
    static var hx_PhysicsCollisionShape_static_heightfield = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_heightfield", 0);
    static var hx_PhysicsCollisionShape_static_heightfield_HghtFld = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_heightfield_HghtFld", 1);
    static var hx_PhysicsCollisionShape_static_mesh = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_mesh", 1);
    static var hx_PhysicsCollisionShape_static_sphere = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_sphere", 0);
    static var hx_PhysicsCollisionShape_static_sphere_Flt_V3_Bool = cpp.Lib.load("gameplay", "hx_PhysicsCollisionShape_static_sphere_Flt_V3_Bool", 3);
}

// END
