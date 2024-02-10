#
# Copyright (C) 2022 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common crDroid stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true

# Matrixx
MATRIXX_BUILD_TYPE := UnOfficial
MATRIXX_MAINTAINER := Mani
WITH_GMS := true
MATRIXX_CHIPSET := SM7325
MATRIXX_BATTERY := 4250mah
MATRIXX_DISPLAY := 1080x2400

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lisa
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_lisa
PRODUCT_MODEL := Xiaomi 11 Lite NE

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
