#
# Copyright (C) 2020 The Android Open-Source Project
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
# Add-ons packages
PRODUCT_PACKAGES += \
    tune2fs.recovery \
    ONSOverlay \
    NFCOverlay \
    RemovePackages \
    BlissSettings \
    OrioleFrameworks \
    OrioleSystemUI \
    SettingsLibOriole \
    EuiccGoogle \
    GoogleCamera

PRODUCT_PRODUCT_PROPERTIES += \
    ro.bliss.maintainer=ScaryMen1325
    ro.processor.model=Google_Tensor

# Disable Rescue Party
#PRODUCT_PROPERTY_OVERRIDES += \
#    persist.sys.disable_rescue=true \
#    persist.device_config.configuration.disable_rescue_party=true

# Use gestures by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay

# For Google Camera
PRODUCT_COPY_FILES += \
    device/google/raviole/the_experiences.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/the_experiences.xml

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml \
    device/google/raviole/permissions/permissions_com.google.android.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/permissions_com.google.android.euicc.xml \
    device/google/raviole/permissions/permissions_com.google.euiccpixel.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/permissions_com.google.euiccpixel.xml

USE_ANDROID_INFO := true

# Build
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
