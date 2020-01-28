#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Disable EAP Proxy because it depends on proprietary headers
# and breaks WPA Supplicant compilation.
DISABLE_EAP_PROXY := true

# Kernel
include vendor/nyanpasu/build/board/BoardConfigKernel.mk

# Soong
include vendor/nyanpasu/build/board/BoardConfigSoong.mk
