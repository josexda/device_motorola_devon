#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Flags
TARGET_BOOTLEG_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Maintainer
DEVICE_MAINTAINERS := "josexda"
BOOTLEGGERS_BUILD_TYPE := Shishufied

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bootleg_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/devon_g/devon:13/T2SNS33.73-22-3-3/5e905-fe2ab:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=devon_g \
    PRIVATE_BUILD_DESC="devon_g-user 13 T2SNS33.73-22-3-3 5e905-fe2ab release-keys"
