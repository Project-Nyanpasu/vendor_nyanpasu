#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common Qualcomm device
$(call inherit-product, device/qcom/common/common.mk)

# Version
$(call inherit-product, vendor/nyanpasu/config/version.mk)
