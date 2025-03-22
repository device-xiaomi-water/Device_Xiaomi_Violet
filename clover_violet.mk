#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common clover stuff.
$(call inherit-product, vendor/clover/config/common_full_phone.mk)
$(call inherit-product, vendor/clover/config/BoardConfigReservedSize.mk)

# MiuiCamera
$(call inherit-product, vendor/MiuiCamera/config.mk)

# lineage Props
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_CALL_RECORDING := true
CLOVER_BUILDTYPE := UNOFFICIAL
CLOVER_MAINTAINER := NINJA

# Gapps
WITH_GAPPS := true

# Device Props
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := false
TARGET_DEBLOAT := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := clover_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=violet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
