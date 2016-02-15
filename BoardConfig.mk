# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from matisse-common
-include device/samsung/matisse-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := matissewifi,matissewifiue,matissewifixx

DEVICE_PATH := device/samsung/matissewifi

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_matisse_defconfig
TARGET_KERNEL_VARIANT_CONFIG := cyanogenmod_matissewifi_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
TARGET_USERIMAGES_USE_F2FS := true

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# inherit from the proprietary version
-include vendor/samsung/matissewifi/BoardConfigVendor.mk
