#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit nekoneko (Table) stuff
$(call inherit-product, vendor/nyanpasu/build/target/nekoneko.mk)

# Inherit nekomimi (Mobile) stuff
$(call inherit-product, vendor/nyanpasu/build/target/nekomimi.mk)
