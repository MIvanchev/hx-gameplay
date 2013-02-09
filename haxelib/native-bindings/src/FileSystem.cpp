#include "HaxeAPI.h"

// DECL: static void createFileFromAsset(const char* path);
void hx_FileSystem_static_createFileFromAsset(value path)
{
    const char *_path = ValueToString(path);
    FileSystem::createFileFromAsset(_path);
}
DEFINE_PRIM(hx_FileSystem_static_createFileFromAsset, 1);

// DECL: static bool fileExists(const char* filePath);
value hx_FileSystem_static_fileExists(value filePath)
{
    const char *_filePath = ValueToString(filePath);
    return alloc_bool(FileSystem::fileExists(_filePath));
}
DEFINE_PRIM(hx_FileSystem_static_fileExists, 1);

// DECL: static std::string getExtension(const char* path);
value hx_FileSystem_static_getExtension(value path)
{
    const char *_path = ValueToString(path);
    return StringToValue(FileSystem::getExtension(_path).c_str());
}
DEFINE_PRIM(hx_FileSystem_static_getExtension, 1);

// DECL: static const char* getResourcePath();
value hx_FileSystem_static_getResourcePath()
{
    return StringToValue(FileSystem::getResourcePath());
}
DEFINE_PRIM(hx_FileSystem_static_getResourcePath, 0);

// DECL: static bool isAbsolutePath(const char* filePath);
value hx_FileSystem_static_isAbsolutePath(value filePath)
{
    const char *_filePath = ValueToString(filePath);
    return alloc_bool(FileSystem::isAbsolutePath(_filePath));
}
DEFINE_PRIM(hx_FileSystem_static_isAbsolutePath, 1);

// DECL: static bool listFiles(const char* dirPath, std::vector<std::string>& files);
value hx_FileSystem_static_listFiles(value dirPath, value files)
{
    const char *_dirPath = ValueToString(dirPath);

    std::vector<std::string> _files;
    bool result = FileSystem::listFiles(_dirPath, _files);

    if (result)
    {
        const value& arrFiles = alloc_array(_files.size());
        for (int index = 0; index < _files.size(); index++)
            val_array_set_i(arrFiles, index, StringToValue(_files[index].c_str()));
        SetOutParameterValue(files, arrFiles);
    }

    return alloc_bool(result);
}
DEFINE_PRIM(hx_FileSystem_static_listFiles, 2);

// DECL: static void loadResourceAliases(Properties* properties);
void hx_FileSystem_static_loadResourceAliases_Prop(value properties)
{
    Properties *_properties;
    ValueToObject(properties, _properties);
    FileSystem::loadResourceAliases(_properties);
}
DEFINE_PRIM(hx_FileSystem_static_loadResourceAliases_Prop, 1);

// DECL: static void loadResourceAliases(const char* aliasFilePath);
void hx_FileSystem_static_loadResourceAliases_Str(value aliasFilePath)
{
    const char *_aliasFilePath = ValueToString(aliasFilePath);
    FileSystem::loadResourceAliases(_aliasFilePath);
}
DEFINE_PRIM(hx_FileSystem_static_loadResourceAliases_Str, 1);

// DECL: static Stream* open(const char* path, size_t mode = READ);
value hx_FileSystem_static_open(value path, value mode)
{
    const char *_path = ValueToString(path);
    size_t _mode = ValueToSizeT(mode);
    return ObjectToValue(FileSystem::open(_path, _mode));
}
DEFINE_PRIM(hx_FileSystem_static_open, 2);

// DECL: static FILE* openFile(const char* filePath, const char* mode);
value hx_FileSystem_static_openFile(value filePath, value mode)
{
    const char *_filePath = ValueToString(filePath);
    const char *_mode = ValueToString(mode);
    return HandleToValueOrNull(FileSystem::openFile(_filePath, _mode), NULL);
}
DEFINE_PRIM(hx_FileSystem_static_openFile, 2);

// DECL: static char* readAll(const char* filePath, int* fileSize = NULL);
value hx_FileSystem_static_readAll(value filePath, value fileSize)
{
    const char *_filePath = ValueToString(filePath);
    int _fileSize;
    char *result = FileSystem::readAll(_filePath, &_fileSize);
    SetOutParameterValue(fileSize, alloc_int(_fileSize));
    return StringToValue(result);
}
DEFINE_PRIM(hx_FileSystem_static_readAll, 2);

// DECL: static const char* resolvePath(const char* path);
value hx_FileSystem_static_resolvePath(value path)
{
    const char *_path = ValueToString(path);
    return StringToValue(FileSystem::resolvePath(_path));
}
DEFINE_PRIM(hx_FileSystem_static_resolvePath, 1);

// DECL: static void setResourcePath(const char* path);
void hx_FileSystem_static_setResourcePath(value path)
{
    const char *_path = ValueToString(path);
    FileSystem::setResourcePath(_path);
}
DEFINE_PRIM(hx_FileSystem_static_setResourcePath, 1);

// END
//
