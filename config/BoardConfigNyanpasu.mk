#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/nyanpasu/config/BoardConfigQcom.mk
endif

# Kernel
include vendor/nyanpasu/config/BoardConfigKernel.mk

# Soong
include vendor/nyanpasu/config/BoardConfigSoong.mk
