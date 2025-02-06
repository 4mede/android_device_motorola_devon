#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Pixelage
PIXELAGE_BUILDTYPE := UNOFFICIAL
PIXELAGE_MAINTAINER := b
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelage_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-12 21d7a-1114ec release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-12/21d7a-1114ec:user/release-keys \
    DeviceProduct=devon_g
