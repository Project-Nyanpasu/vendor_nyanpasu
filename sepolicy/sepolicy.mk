#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    vendor/nyanpasu/sepolicy/public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/nyanpasu/sepolicy/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    vendor/nyanpasu/sepolicy/dynamic \
    vendor/nyanpasu/sepolicy/system
else
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/nyanpasu/sepolicy/dynamic \
    vendor/nyanpasu/sepolicy/vendor
endif
