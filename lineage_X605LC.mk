#
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
#

# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Inherit 64-bit configs from AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/X605LC/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_X605LC
PRODUCT_DEVICE := X605LC
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X605LC
PRODUCT_MANUFACTURER := LENOVO

TARGET_OTA_ASSERT_DEVICE := X605,X605LC,TB-X605LC

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="hq_sdm450-user 9 PKQ1.181203.001 646 release-keys" \
	TARGET_DEVICE="X605LC"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X605LCV/TB-X605LC:9/PKQ1.181203.001/092_201021_IN:user/release-keys

