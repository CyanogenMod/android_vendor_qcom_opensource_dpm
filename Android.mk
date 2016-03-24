LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_MODULE:= tcmiface
LOCAL_JAVA_LIBRARIES := core-oj core-libart
LOCAL_SRC_FILES := $(call all-subdir-java-files)
include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_MODULE:= tcmiface-hostdex
LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk
include $(BUILD_HOST_DALVIK_JAVA_LIBRARY)
