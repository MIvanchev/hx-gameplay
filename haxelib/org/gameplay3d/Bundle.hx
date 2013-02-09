package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Bundle : public Ref
class Bundle extends GameplayObject, implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: bool contains(const char* id) const;
    public function contains(id:String):Bool
    {
        return hx_Bundle_contains(nativeObject, id);
    }

    // DECL: static Bundle* create(const char* path);
    public static function create(path:String):Bundle
    {
        return Bundle.wrap(hx_Bundle_static_create(path));
    }

    // DECL: unsigned int getObjectCount() const;
    public function getObjectCount():Int
    {
        return hx_Bundle_getObjectCount(nativeObject);
    }

    // DECL: const char* getObjectId(unsigned int index) const;
    public function getObjectId(index:Int):String
    {
        return hx_Bundle_getObjectId(nativeObject, index);
    }

    // DECL: Font* loadFont(const char* id);
    public function loadFont(id:String):Font
    {
        return Font.wrap(hx_Bundle_loadFont(nativeObject, id));
    }

    // DECL: Mesh* loadMesh(const char* id);
    public function loadMesh(id:String):Mesh
    {
        return Mesh.wrap(hx_Bundle_loadMesh(nativeObject, id));
    }

    // DECL: Node* loadNode(const char* id);
    public function loadNode(id:String):Node
    {
        return Node.wrap(hx_Bundle_loadNode(nativeObject, id));
    }

    // DECL: Scene* loadScene(const char* id = NULL);
    public function loadScene(id:String = null):Scene
    {
        return Scene.wrap(hx_Bundle_loadScene(nativeObject, id));
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Bundle_contains = NativeInterface.loadMember(Bundle, "contains", 2);
    static var hx_Bundle_static_create = NativeInterface.loadMember(Bundle, "static_create", 1);
    static var hx_Bundle_getObjectCount = NativeInterface.loadMember(Bundle, "getObjectCount", 1);
    static var hx_Bundle_getObjectId = NativeInterface.loadMember(Bundle, "getObjectId", 2);
    static var hx_Bundle_loadFont = NativeInterface.loadMember(Bundle, "loadFont", 2);
    static var hx_Bundle_loadMesh = NativeInterface.loadMember(Bundle, "loadMesh", 2);
    static var hx_Bundle_loadNode = NativeInterface.loadMember(Bundle, "loadNode", 2);
    static var hx_Bundle_loadScene = NativeInterface.loadMember(Bundle, "loadScene", 2);
}

// END
