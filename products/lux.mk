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

WITH_GOOGLE_CAMERA := false
WITH_CM_CHARGER := true

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for lux
$(call inherit-product, device/motorola/lux/aosp_lux.mk)

ifeq ($(WITH_GAPPS),true)
# Inherit arm phone gapps
$(call inherit-product-if-exists, vendor/gapps/arm-phone-gapps.mk)
else
# Misc packages
PRODUCT_PACKAGES += \
    DeskClock \
    messaging \
    SoundRecorder \
    Calendar \
    Gallery2
endif

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := lux
PRODUCT_NAME := lux
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := lux
