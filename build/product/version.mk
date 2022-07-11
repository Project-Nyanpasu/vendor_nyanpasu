#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

NYANPASU_CODENAME := sukiki
NYANPASU_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifeq ($(NYANPASU_RELEASE), true)
  NYANPASU_BUILD_VARIANT := release

  PRODUCT_PACKAGES += \
      Updater

  PRODUCT_COPY_FILES += \
    vendor/nyanpasu/prebuilt/etc/init/init.nyanpasu-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.nyanpasu-updater.rc

  $(call inherit-product-if-exists, vendor/snow-key/key.mk)
else
  NYANPASU_BUILD_VARIANT := experimental
endif

NYANPASU_VERSION := Nyanpasu-$(NYANPASU_CODENAME)-$(NYANPASU_DEVICE)-$(shell date -u +%Y%m%d)-$(NYANPASU_BUILD_VARIANT)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.nyanpasu.version=$(NYANPASU_VERSION)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.nyanpasu.version.codename=$(NYANPASU_CODENAME) \
    ro.nyanpasu.build.variant=$(NYANPASU_BUILD_VARIANT) \
    ro.nyanpasu.device=$(NYANPASU_DEVICE)
