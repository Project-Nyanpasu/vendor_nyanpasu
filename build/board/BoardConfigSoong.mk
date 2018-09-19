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
SOONG_CONFIG_nyanpasuGlobalVars +=

# Set default values

# Soong value variables
