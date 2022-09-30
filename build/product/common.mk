#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit

# Key
$(call inherit-product-if-exists, vendor/mashiro/keys.mk)

# Version
$(call inherit-product, vendor/nyanpasu/build/product/version.mk)
