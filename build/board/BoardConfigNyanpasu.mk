#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/nyanpasu/build/board/BoardConfigQcom.mk
endif

# Kernel
include vendor/nyanpasu/build/board/BoardConfigKernel.mk

# Soong
include vendor/nyanpasu/build/board/BoardConfigSoong.mk
