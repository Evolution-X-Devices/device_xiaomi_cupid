LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_SRC_FILES := false
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_OVERRIDES_PACKAGES := Email Exchange Exchange2 UnifiedEmail PhotoTable Eleven
LOCAL_OVERRIDES_PACKAGES += PlayAutoInstallConfig RecorderPrebuilt RecorderPrebuilt_630544637
LOCAL_OVERRIDES_PACKAGES += TipsPrebuilt Drive Tycho VoiceAccessPrebuilt
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)
