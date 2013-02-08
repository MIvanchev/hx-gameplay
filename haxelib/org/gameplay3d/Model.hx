package org.gameplay3d;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Model : public Ref
class Model extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static Model* create(Mesh* mesh);
    public static function create(mesh:Mesh):Model
    {
        return Model.wrap(hx_Model_static_create(mesh.native()));
    }

    // DECL: void draw(bool wireframe = false);
    public function draw(wireframe:Bool = false):Void
    {
        hx_Model_draw(nativeObject, wireframe);
    }

    // DECL: Material* getMaterial(int partIndex = -1);
    public function getMaterial(partIndex:Int = -1):Material
    {
        return Material.wrap(hx_Model_getMaterial(nativeObject, partIndex));
    }

    // DECL: Mesh* getMesh() const;
    public function getMesh():Mesh
    {
        return Mesh.wrap(hx_Model_getMesh(nativeObject));
    }

    // DECL: unsigned int getMeshPartCount() const;
    public function getMeshPartCount():Int
    {
        return hx_Model_getMeshPartCount(nativeObject);
    }

    // DECL: Node* getNode() const;
    public function getNode():Node
    {
        return Node.wrap(hx_Model_getNode(nativeObject));
    }

    // DECL: MeshSkin* getSkin() const;
    public function getSkin():MeshSkin
    {
        return MeshSkin.wrap(hx_Model_getSkin(nativeObject));
    }

    // DECL: bool hasMaterial(unsigned int partIndex) const;
    public function hasMaterial(partIndex:Int):Bool
    {
        return hx_Model_hasMaterial(nativeObject, partIndex);
    }

    // DECL: Material* setMaterial(const char* materialPath, int partIndex = -1);
    public function setMaterial_Str_Int(materialPath:String, partIndex:Int = -1):Material
    {
        return Material.wrap(hx_Model_setMaterial_Str_Int(nativeObject, materialPath, partIndex));
    }

    // DECL: Material* setMaterial(const char* vshPath, const char* fshPath, const char* defines = NULL, int partIndex = -1);
    public function setMaterial_StrX3_Int(vshPath:String, fshPath:String, defines:String = null, partIndex:Int = -1):Material
    {
        return Material.wrap(hx_Model_setMaterial_StrX3_Int(nativeObject, vshPath, fshPath, defines, partIndex));
    }

    // DECL: void setMaterial(Material* material, int partIndex = -1);
    public function setMaterial_Mtrl_Int(material:Material, partIndex:Int = -1):Void
    {
        hx_Model_setMaterial_Mtrl_Int(nativeObject, material.native(), partIndex);
    }

    // DECL: void setNode(Node* node);
    public function setNode(node:Node):Void
    {
        hx_Model_setNode(nativeObject, node.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Model_static_create = cpp.Lib.load("gameplay", "hx_Model_static_create", 1);
    static var hx_Model_draw = cpp.Lib.load("gameplay", "hx_Model_draw", 2);
    static var hx_Model_getMaterial = cpp.Lib.load("gameplay", "hx_Model_getMaterial", 2);
    static var hx_Model_getMesh = cpp.Lib.load("gameplay", "hx_Model_getMesh", 1);
    static var hx_Model_getMeshPartCount = cpp.Lib.load("gameplay", "hx_Model_getMeshPartCount", 1);
    static var hx_Model_getNode = cpp.Lib.load("gameplay", "hx_Model_getNode", 1);
    static var hx_Model_getSkin = cpp.Lib.load("gameplay", "hx_Model_getSkin", 1);
    static var hx_Model_hasMaterial = cpp.Lib.load("gameplay", "hx_Model_hasMaterial", 2);
    static var hx_Model_setMaterial_Str_Int = cpp.Lib.load("gameplay", "hx_Model_setMaterial_Str_Int", 3);
    static var hx_Model_setMaterial_StrX3_Int = cpp.Lib.load("gameplay", "hx_Model_setMaterial_StrX3_Int", 5);
    static var hx_Model_setMaterial_Mtrl_Int = cpp.Lib.load("gameplay", "hx_Model_setMaterial_Mtrl_Int", 3);
    static var hx_Model_setNode = cpp.Lib.load("gameplay", "hx_Model_setNode", 2);
}

// END
