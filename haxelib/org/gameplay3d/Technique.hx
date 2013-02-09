package org.gameplay3d;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Technique : public RenderState
class Technique extends RenderState
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: const char* getId() const;
    public function getId():String
    {
        return hx_Technique_getId(nativeObject);
    }

    // DECL: Pass* getPass(const char* id) const;
    public function getPass(id:String):Pass
    {
        return Pass.wrap(hx_Technique_getPass(nativeObject, id));
    }

    // DECL: Pass* getPassByIndex(unsigned int index) const;
    public function getPassByIndex(index:Int):Pass
    {
        return Pass.wrap(hx_Technique_getPassByIndex(nativeObject, index));
    }

    // DECL: unsigned int getPassCount() const;
    public function getPassCount():Int
    {
        return hx_Technique_getPassCount(nativeObject);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Technique_getId = NativeInterface.loadMember(Technique, "getId", 1);
    static var hx_Technique_getPass = NativeInterface.loadMember(Technique, "getPass", 2);
    static var hx_Technique_getPassByIndex = NativeInterface.loadMember(Technique, "getPassByIndex", 2);
    static var hx_Technique_getPassCount = NativeInterface.loadMember(Technique, "getPassCount", 1);
}

// END
