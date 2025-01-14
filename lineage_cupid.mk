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
    BuildDesc="cupid_global-user 14 UKQ1.230917.001 V816.0.10.0.ULCMIXM release-keys" \
    BuildFingerprint=Xiaomi/cupid_global/cupid:14/UKQ1.230917.001/V816.0.10.0.ULCMIXM:user/release-keys \
    DeviceProduct=cupid \
    SystemName=cupid_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# EvolutionX
EVO_BUILD_TYPE := Official
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_HAS_UDFPS := true
