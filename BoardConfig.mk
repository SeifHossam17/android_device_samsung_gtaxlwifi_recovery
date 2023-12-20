# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7870
TARGET_BOOTLOADER_BOARD_NAME := universal7870
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := twrp-gtaxlwifi_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gtaxl

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true

TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_SPECIFIC_HEADER_PATH += device/samsung/gtaxlwifi/include

# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board FPRPGTAX000RU
BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/gtaxlwifi/mkbootimg.mk
LZMA_RAMDISK_TARGETS := recovery

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12066992128 # 12067012608 - 20480 (footer)
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_FLASH_BLOCK_SIZE := 131072

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 127
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true

# SHRP Flags
SHRP_PATH := device/samsung/gtaxlwifi
SHRP_MAINTAINER := SeifHecker2099
SHRP_DEVICE_CODE := gtaxlwifi
SHRP_DARK := true
SHRP_EDL_MODE := 0
