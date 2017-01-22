#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

NYANPASU_TARGET_PACKAGE := $(PRODUCT_OUT)/$(NYANPASU_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(NYANPASU_TARGET_PACKAGE)
	$(hide) sha256sum $(NYANPASU_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(NYANPASU_TARGET_PACKAGE).sha256sum
	@echo "Package Complete: $(NYANPASU_TARGET_PACKAGE)" >&2
