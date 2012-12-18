package org.gameplay3d;

using dk.bluewolf.gameplay.NativeBinding;
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

    static var hx_Technique_getId:Dynamic = cpp.Lib.load("gameplay", "hx_Technique_getId", 1);
    static var hx_Technique_getPass:Dynamic = cpp.Lib.load("gameplay", "hx_Technique_getPass", 2);
    static var hx_Technique_getPassByIndex:Dynamic = cpp.Lib.load("gameplay", "hx_Technique_getPassByIndex", 2);
    static var hx_Technique_getPassCount:Dynamic = cpp.Lib.load("gameplay", "hx_Technique_getPassCount", 1);
}

// END
