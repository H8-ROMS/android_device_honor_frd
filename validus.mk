# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/honor/frd/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/locales_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Inherit some common Validus stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)
$(call inherit-product, vendor/validus/config/caf_fw.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_NAME := validus_frd
PRODUCT_DEVICE := frd
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BRAND := Honor
PRODUCT_MODEL := Honor 8

TARGET_VENDOR := huawei

# Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Muhammad Fahad Baig (hackslash)"

# Vendor
PRODUCT_RESTRICT_VENDOR_FILES := false
