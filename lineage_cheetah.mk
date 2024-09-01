#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)

include device/google/pantah/cheetah/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := lineage_cheetah

# Ship Basic Call Recorder
$(call inherit-product, vendor/bcr/bcr.mk)

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# Lawnchair Prebuilt
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Use Scudo instead of Jemalloc
PRODUCT_USE_SCUDO := true

RISING_MAINTAINER=EliteDarkKaiser

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Google Tensor G2" \

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 14 AP2A.240905.003 12231197 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:14/AP2A.240905.003/12231197:user/release-keys

$(call inherit-product, vendor/google/cheetah/cheetah-vendor.mk)
