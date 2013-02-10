package org.gameplay3d;

import org.gameplay3d.intern.INativeBinding;

// DECL: class ScriptTarget : public GameplayObject
interface ScriptTarget extends INativeBinding
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: virtual void addScriptCallback(const std::string& eventName, const std::string& function);
    public function addScriptCallback(eventName:String, _function:String):Void;

    // DECL: virtual void removeScriptCallback(const std::string& eventName, const std::string& function);
    public function removeScriptCallback(eventName:String, _function:String):Void;
}

// END
