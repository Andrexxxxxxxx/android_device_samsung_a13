#
# Copyright (C) 2022 The Android Open Source Project
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

# Inherit from base TWRP configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Device identifiers (ОБЯЗАТЕЛЬНО с :=)
PRODUCT_NAME := m13
PRODUCT_DEVICE := m13
PRODUCT_MODEL := Galaxy M13
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# TWRP specific flags
TW_DEVICE_VERSION := 1.0
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Screen configuration (подставь правильное разрешение для M13)
TARGET_SCREEN_HEIGHT := 2408
TARGET_SCREEN_WIDTH := 1080

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := m13

# Platform
TARGET_BOARD_PLATFORM := exynos850

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# 32-bit support
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_HAS_NO_SELECT_BUTTON := true

# Partitions (ПОДСТАВЬ РЕАЛЬНЫЕ РАЗМЕРЫ для M13!)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26843545600
BOARD_FLASH_BLOCK_SIZE := 4096

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_COPY_OUT_SYSTEM := system
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
PRODUCT_USE_F2FS := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP Configuration
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 120
TW_NO_SCREEN_TIMEOUT := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
