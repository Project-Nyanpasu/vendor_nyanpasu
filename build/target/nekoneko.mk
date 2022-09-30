#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common Nyanpasu stuff
$(call inherit-product, vendor/nyanpasu/build/product/common.mk)

# 2-pane layout
PRODUCT_PACKAGES += \
    androidx.window.extensions
