#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit
# Common Qualcomm device
$(call inherit-product, device/qcom/common/common.mk)

# Key
$(call inherit-product-if-exists, vendor/mashiro/keys.mk)

# Snapdragon Clang
$(call inherit-product, vendor/nyanpasu/sdclang/sdclang.mk)

# Version
$(call inherit-product, vendor/nyanpasu/build/product/version.mk)
