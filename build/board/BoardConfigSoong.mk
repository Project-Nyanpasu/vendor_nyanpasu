#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

SOONG_CONFIG_NAMESPACES += nyanpasuVarsPlugin

SOONG_CONFIG_nyanpasuVarsPlugin :=

define addVar
  SOONG_CONFIG_nyanpasuVarsPlugin += $(1)
  SOONG_CONFIG_nyanpasuVarsPlugin_$(1) := $$(subst ",\",$$($1))
endef

$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call addVar,$(v))))

SOONG_CONFIG_NAMESPACES += nyanpasuGlobalVars
SOONG_CONFIG_nyanpasuGlobalVars += \
    target_init_vendor_lib \
    target_ld_shim_libs \
    target_process_sdk_version_override

# Set default values
TARGET_INIT_VENDOR_LIB ?= vendor_init

# Soong value variables
SOONG_CONFIG_nyanpasuGlobalVars_target_init_vendor_lib := $(TARGET_INIT_VENDOR_LIB)
SOONG_CONFIG_nyanpasuGlobalVars_target_ld_shim_libs := $(subst $(space),:,$(TARGET_LD_SHIM_LIBS))
SOONG_CONFIG_nyanpasuGlobalVars_target_process_sdk_version_override := $(TARGET_PROCESS_SDK_VERSION_OVERRIDE)
