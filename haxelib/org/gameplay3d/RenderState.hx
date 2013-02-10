package org.gameplay3d;
import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class RenderState : public Ref
class RenderState extends GameplayObject implements Ref
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: MaterialParameter* getParameter(const char* name) const;
    public function getParameter(name:String):MaterialParameter
    {
        return MaterialParameter.wrap(hx_RenderState_getParameter(nativeObject, name));
    }

    // DECL: StateBlock* getStateBlock() const;
    public function getStateBlock():RenderState_StateBlock
    {
        return RenderState_StateBlock.wrap(hx_RenderState_getStateBlock(nativeObject));
    }

    // DECL: void setParameterAutoBinding(const char* name, AutoBinding autoBinding);
    public function setParameterAutoBinding_Str_Int(name:String, autoBinding:Int):Void
    {
        hx_RenderState_setParameterAutoBinding_Str_Int(nativeObject, name, autoBinding);
    }

    // DECL: void setParameterAutoBinding(const char* name, const char* autoBinding);
    public function setParameterAutoBinding_StrX2(name:String, autoBinding:String):Void
    {
        hx_RenderState_setParameterAutoBinding_StrX2(nativeObject, name, autoBinding);
    }

    // DECL: void setStateBlock(StateBlock* state);
    public function setStateBlock(state:RenderState_StateBlock):Void
    {
        hx_RenderState_setStateBlock(nativeObject, state.native());
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_RenderState_getParameter = NativeInterface.loadMember(RenderState, "getParameter", 2);
    static var hx_RenderState_getStateBlock = NativeInterface.loadMember(RenderState, "getStateBlock", 1);
    static var hx_RenderState_setParameterAutoBinding_Str_Int = NativeInterface.loadMember(RenderState, "setParameterAutoBinding_Str_Int", 3);
    static var hx_RenderState_setParameterAutoBinding_StrX2 = NativeInterface.loadMember(RenderState, "setParameterAutoBinding_StrX2", 3);
    static var hx_RenderState_setStateBlock = NativeInterface.loadMember(RenderState, "setStateBlock", 2);
}

// END
