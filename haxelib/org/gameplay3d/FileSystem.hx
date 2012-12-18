package org.gameplay3d;

import dk.bluewolf.gameplay.Handle;
import dk.bluewolf.gameplay.NativeOutParameter;
import org.gameplay3d.util.OutParameter;

using dk.bluewolf.gameplay.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class FileSystem : public GameplayObject
class FileSystem extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: static void createFileFromAsset(const char* path);
    public static function createFileFromAsset(path:String):Void
    {
        hx_FileSystem_static_createFileFromAsset(path);
    }

    // DECL: static bool fileExists(const char* filePath);
    public static function fileExists(filePath:String):Bool
    {
        return hx_FileSystem_static_fileExists(filePath);
    }

    // DECL: static const char* getResourcePath();
    public static function getResourcePath():String
    {
        return hx_FileSystem_static_getResourcePath();
    }

    // DECL: static bool isAbsolutePath(const char* filePath);
    public static function isAbsolutePath(filePath:String):Bool
    {
        return hx_FileSystem_static_isAbsolutePath(filePath);
    }

    // DECL: static bool listFiles(const char* dirPath, std::vector<std::string>& files);
    public static function listFiles(dirPath:String, files:OutParameter<Array<String>>):Bool
    {
        var _files = new NativeOutParameter();
        var result = hx_FileSystem_static_listFiles(dirPath, _files.native());
        if (result)
            files.value = _files.value;
        return result;
    }

    // DECL: static void loadResourceAliases(Properties* properties);
    public static function loadResourceAliases_Prop(properties:Properties):Void
    {
        hx_FileSystem_static_loadResourceAliases_Prop(properties.native());
    }

    // DECL: static void loadResourceAliases(const char* aliasFilePath);
    public static function loadResourceAliases_Str(aliasFilePath:String):Void
    {
        hx_FileSystem_static_loadResourceAliases_Str(aliasFilePath);
    }

    // DECL: static Stream* open(const char* path, size_t mode = READ);
    public static function open(path:String, mode:Int = FileSystem_StreamMode.READ):Stream
    {
        return Stream.wrap(hx_FileSystem_static_open(path, mode));
    }

    // DECL: static FILE* openFile(const char* filePath, const char* mode);
    public static function openFile(filePath:String, mode:String):Handle
    {
        return Handle.wrap(hx_FileSystem_static_openFile(filePath, mode));
    }

    // DECL: static char* readAll(const char* filePath, int* fileSize = NULL);
    public static function readAll(filePath:String, fileSize:OutParameter<Int> = null):String
    {
        var _fileSize =
            if (fileSize == null)
                null;
            else
                new NativeOutParameter();
        var result = hx_FileSystem_static_readAll(filePath, _fileSize);
        if (fileSize != null)
            fileSize.value = _fileSize.value;
        return result;
    }

    // DECL: static const char* resolvePath(const char* path);
    public static function resolvePath(path:String):String
    {
        return hx_FileSystem_static_resolvePath(path);
    }

    // DECL: static void setResourcePath(const char* path);
    public static function setResourcePath(path:String):Void
    {
        hx_FileSystem_static_setResourcePath(path);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_FileSystem_static_createFileFromAsset:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_createFileFromAsset", 1);
    static var hx_FileSystem_static_fileExists:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_fileExists", 1);
    static var hx_FileSystem_static_getResourcePath:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_getResourcePath", 0);
    static var hx_FileSystem_static_isAbsolutePath:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_isAbsolutePath", 1);
    static var hx_FileSystem_static_listFiles:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_listFiles", 2);
    static var hx_FileSystem_static_loadResourceAliases_Prop:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_loadResourceAliases_Prop", 1);
    static var hx_FileSystem_static_loadResourceAliases_Str:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_loadResourceAliases_Str", 1);
    static var hx_FileSystem_static_open:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_open", 2);
    static var hx_FileSystem_static_openFile:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_openFile", 2);
    static var hx_FileSystem_static_readAll:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_readAll", 2);
    static var hx_FileSystem_static_resolvePath:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_resolvePath", 1);
    static var hx_FileSystem_static_setResourcePath:Dynamic = cpp.Lib.load("gameplay", "hx_FileSystem_static_setResourcePath", 1);
}

// END
