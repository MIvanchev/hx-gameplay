package org.gameplay3d.intern.impl;

import org.gameplay3d.GameplayObject;
import org.gameplay3d.ScriptTarget;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class ScriptTarget : public GameplayObject
class ScriptTargetImpl extends GameplayObject, implements ScriptTarget
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addScriptCallback(const std::string& eventName, const std::string& function);
    public function addScriptCallback(eventName:String, _function:String):Void
    {
        hx_ScriptTarget_addScriptCallback(nativeObject, eventName, _function);
    }

    // DECL: virtual void removeScriptCallback(const std::string& eventName, const std::string& function);
    public function removeScriptCallback(eventName:String, _function:String):Void
    {
        hx_ScriptTarget_removeScriptCallback(nativeObject, eventName, _function);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_ScriptTarget_addScriptCallback:Dynamic = cpp.Lib.load("gameplay", "hx_ScriptTarget_addScriptCallback", 3);
    static var hx_ScriptTarget_removeScriptCallback:Dynamic = cpp.Lib.load("gameplay", "hx_ScriptTarget_removeScriptCallback", 3);
}

// END
