#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from common sdm632-common
-include device/xiaomi/sdm632-common/BoardConfigCommon.mk
-include device/qcom/common/common.mk

DEVICE_PATH := device/xiaomi/onc

# Filesystem
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USES_MKE2FS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := onclite-perf_defconfig

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24154979840
BOARD_CACHEIMAGE_PARTITION_SIZE := 237535232
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Power
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/enable_dt2w"

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2019-05-05

# Sepolicy
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/xiaomi/onc/BoardConfigVendor.mk
