######################################
# Main
######################################

LOCAL_PATH := $(call mydir)src
include $(CLEAR_VARS)

LOCAL_MODULE    := android_main
LOCAL_SRC_FILES :=  android-main.cpp

LOCAL_CFLAGS    := -D__ANDROID__
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2 -lOpenSLES
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)
$(call import-module,android/native_app_glue)
