LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PACKAGE_NAME := SystemBlackOrangeTheme
LOCAL_PRIVILEGED_MODULE := false
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_SDK_VERSION := current
LOCAL_AAPT_FLAGS := \
    --auto-add-overlay
include $(BUILD_PACKAGE)