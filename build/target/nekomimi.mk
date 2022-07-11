#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Data roaming
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.android.dataroaming=false

# Inherit common Nyanpasu stuff
$(call inherit-product, vendor/nyanpasu/build/product/common.mk)

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk

# World APN list
PRODUCT_COPY_FILES += \
    vendor/nyanpasu/prebuilt/etc/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml
