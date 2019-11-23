# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

DEVICE_PATH := device/oneplus/oneplus6t

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
TARGET_KERNEL_CONFIG := omni_oneplus6t_defconfig

TARGET_OTA_ASSERT_DEVICE := OnePlus6T

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# inherit from oneplus6
include device/oneplus/oneplus6/BoardConfig.mk