
# Copyright (C) 2017 The Pure Nexus Project
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

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for victara.
$(call inherit-product, device/motorola/victara/aosp_victara.mk)

WITH_GOOGLE_CAMERA := false
WITH_GOOGLE_CHROME := false
WITH_GOOGLE_KEYBOARD := false

# Inherit arm phone gapps
$(call inherit-product-if-exists, vendor/gapps/arm-phone-gapps.mk)

# Override AOSP build properties
PRODUCT_NAME := victara
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := victara
PRODUCT_MODEL := Moto X 2014
PRODUCT_MANUFACTURER := motorola

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=victara \
    BUILD_FINGERPRINT=motorola/victara_retla/victara:6.0/MPE24.49-18/15:user/release-keys \
    PRIVATE_BUILD_DESC="victara_retla-user 6.0 MPE24.49-18 15 release-keys"
