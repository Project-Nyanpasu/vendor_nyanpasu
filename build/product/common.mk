#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Move Wi-Fi modules to vendor
PRODUCT_VENDOR_MOVE_ENABLED := true

# Inherit
# Common Qualcomm device
$(call inherit-product, device/qcom/common/common.mk)

# Key
$(call inherit-product-if-exists, vendor/mashiro/keys.mk)

# Properties
$(call inherit-product, vendor/nyanpasu/build/product/properties.mk)

# Snapdragon Clang
$(call inherit-product, vendor/nyanpasu/sdclang/sdclang.mk)

# Version
$(call inherit-product, vendor/nyanpasu/build/product/version.mk)
