#
# Copyright 2020 The Android Open-Source Project
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

$(call inherit-product, device/google/gs101/aosp_common.mk)
$(call inherit-product, device/google/raviole/device-oriole.mk)
include device/google/raviole/bliss_device.mk
include vendor/bliss/config/common_full_phone.mk
#$(call inherit-product-if-exists, vendor/gms/gms_full.mk)
#$(call inherit-product-if-exists, vendor/gapps/common/common-vendor.mk)
include vendor/gms/products/gms.mk
include vendor/gms/products/board.mk
include vendor/gms/common/common-vendor.mk
	
PRODUCT_NAME := bliss_oriole
PRODUCT_DEVICE := oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TP1A.220905.004 8927612 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TP1A.220905.004/8927612:user/release-keys

PRODUCT_OVERRIDE_GMS_FINGERPRINT := google/oriole/oriole:13/TP1A.220905.004/8927612:user/release-keys

EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
BLISS_BUILDTYPE := OFFICIAL
BLISS_BUILD_VARIANT := gapps

PRODUCT_BUILD_PVMFW_IMAGE := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
