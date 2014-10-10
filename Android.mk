LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_MODULE:= tcmiface
LOCAL_JAVA_LIBRARIES := core-libart
LOCAL_SRC_FILES := $(call all-subdir-java-files)
include $(BUILD_JAVA_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_MODULE:= tcmiface-hostdex
LOCAL_JAVA_LIBRARIES := core-libart-hostdex
LOCAL_SRC_FILES := $(call all-subdir-java-files)
LOCAL_BUILD_HOST_DEX := true
include $(BUILD_HOST_JAVA_LIBRARY)
