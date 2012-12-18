#ifdef __ANDROID__

#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>
#include <android/log.h>
#include <android_native_app_glue.h>

#define ERROR(msg) __android_log_print(ANDROID_LOG_ERROR, "ERROR", msg)
#define DEBUG(msg) __android_log_print(ANDROID_LOG_DEBUG, "DEBUG", msg);

/**
 * TODO
 */
static void *loadLibrary(const char *path, const char *library);

/**
 * TODO
 */
static char *getApplicationDirectory(struct android_app* state);

/**
 * Main entry point.
 */
extern "C" void android_main(struct android_app* state)
{
    // Android specific : Dummy function that needs to be called to
    // ensure that the native activity works properly behind the scenes.
    app_dummy();

    // Load the shared libraries used by the application.
    //

    char *appDir = getApplicationDirectory(state);

    void *hndlApplication = loadLibrary(appDir, "application");
    void *hndlGameplay = loadLibrary(appDir, "gameplay");
    loadLibrary(appDir, "std");
    loadLibrary(appDir, "regexp");
    loadLibrary(appDir, "zlib");

    delete [] appDir;

    // Initialize and begin the application.
    //

    if (hndlApplication == NULL)
    {
        ERROR("Failed to load application's shared library.");
        exit(EXIT_FAILURE);
    }
    if (hndlGameplay == NULL)
    {
        ERROR("Failed to load gameplay's shared library.");
        exit(EXIT_FAILURE);
    }

    void (*native_setup) (struct android_app*) =
            reinterpret_cast<void (*) (struct android_app*)>(dlsym(hndlGameplay, "native_setup"));

    if (native_setup == NULL)
    {
        ERROR("Failed to locate gameplay's setup function.");
        exit(EXIT_FAILURE);
    }

    native_setup(state);

    void (*main)() =
            reinterpret_cast<void (*) ()>(dlsym(hndlApplication, "hxcpp_main"));

    if (main == NULL)
    {
        ERROR("Faiiled to locate appliction's entry point.");
        exit(EXIT_FAILURE);
    }

    main();

    // Android specific : the process needs to exit to trigger
    // cleanup of global and static resources (such as the game).
    exit(EXIT_SUCCESS);
}

char *getApplicationDirectory(struct android_app* state)
{
    // PackageManager packetManager = getPackageManager();
    // String packageName = getPackageName();
    // PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
    // String dataDir = packageInfo.applicationInfo.dataDir;

    // Connect to JVM.
    //

    ANativeActivity* activity = state->activity;
    JavaVM* jvm = state->activity->vm;
    JNIEnv* env = NULL;
    jvm->GetEnv((void **)&env, JNI_VERSION_1_6);
    jint result = jvm->AttachCurrentThread(&env, NULL);
    if (result == JNI_ERR)
    {
        ERROR("Failied to attach to the Java VM's current thread.");
        exit(EXIT_FAILURE);
    }

    // Perform Java calls.
    //

    jclass clazz = env->GetObjectClass(activity->clazz);
    jmethodID getPackageManagerID = env->GetMethodID(clazz, "getPackageManager", "()Landroid/content/pm/PackageManager;");
    jmethodID getPackageNameID = env->GetMethodID(clazz, "getPackageName", "()Ljava/lang/String;");

    jobject packageManager = env->CallObjectMethod(activity->clazz, getPackageManagerID);
    jobject packageName = env->CallObjectMethod(activity->clazz, getPackageNameID);

    clazz = env->GetObjectClass(packageManager);
    jmethodID getPackageInfoID = env->GetMethodID(clazz, "getPackageInfo", "(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;");
    jobject packageInfo = env->CallObjectMethod(packageManager, getPackageInfoID, packageName, 0);

    clazz = env->GetObjectClass(packageInfo);
    jfieldID applicationInfoID = env->GetFieldID(clazz, "applicationInfo", "Landroid/content/pm/ApplicationInfo;");
    jobject applicationInfo = env->GetObjectField(packageInfo, applicationInfoID);

    clazz = env->GetObjectClass(applicationInfo);
    jfieldID dataDirID = env->GetFieldID(clazz, "dataDir", "Ljava/lang/String;");
    jstring dataDir = static_cast<jstring>(env->GetObjectField(applicationInfo, dataDirID));

    // Copy string in a custom buffer.
    //

    char *buffer = new char[env->GetStringUTFLength(dataDir) + 1];
    const char *str = env->GetStringUTFChars(dataDir, NULL);
    strcpy(buffer, str);

    env->ReleaseStringUTFChars(dataDir, str);

    // Detach from JVM.
    //

    jvm->DetachCurrentThread();

    return buffer;
}

void* loadLibrary(const char *path, const char *library)
{
    unsigned int length = strlen(path) + strlen("/lib/lib") + strlen(library) + strlen(".so") + 1;
    char *fileName = new char[length];
    sprintf(fileName, "%s/lib/lib%s.so", path, library);
    DEBUG(fileName);
    void *result = dlopen(fileName, RTLD_GLOBAL | RTLD_LAZY);
    delete [] fileName;
    return result;
}

#endif
