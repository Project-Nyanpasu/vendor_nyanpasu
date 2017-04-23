#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common Kaleidoscope stuff
$(call inherit-product, vendor/nyanpasu/config/common.mk)

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk
