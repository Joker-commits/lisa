#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := colt_lisa
PRODUCT_DEVICE := lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite NE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := lisa_global
PRODUCT_SYSTEM_DEVICE := lisa

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Official-ify
#VOLTAGE_BUILD_TYPE := OFFICIAL

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1920

# Official
COLT_BUILD_TYPE := Official
COLT_BUILD_MAINTAINER := Mani
WITH_GAPPS := true
TARGET_INCLUDE_NGA := true
GLOBAL_THINLTO := true
USE_THINLTO_CACHE := true
