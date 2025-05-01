#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 12

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cupid_global-user 15 AQ3A.241006.001 OS2.0.4.0.VLCMIXM release-keys" \
    BuildFingerprint=Xiaomi/cupid_global/cupid:15/AQ3A.241006.001/OS2.0.4.0.VLCMIXM:user/release-keys \
    DeviceProduct=cupid \
    SystemName=cupid_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# EvolutionX
EVO_BUILD_TYPE := Official
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_HAS_UDFPS := true
TARGET_INCLUDE_ACCORD := false
