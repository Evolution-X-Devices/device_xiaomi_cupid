#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/cupid/cupid-vendor.mk)


# Call the MiuiCamera setupAdd commentMore actions
$(call inherit-product-if-exists, device/xiaomi/miuicamera-cupid/device.mk)
$(call soong_config_set,camera,package_name,com.android.camera)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/mixer_paths_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/resourcemanager_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Overlay
PRODUCT_PACKAGES += \
    ApertureResCupid \
    FrameworksResCupid \
    LineageResCupid \
    NfcResCupid \
    PixelSetupWizardResCupid \
    SettingsProviderResCupid \
    SettingsResCupid \
    SystemUIResCupid \
    WifiResCupid

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.default

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
