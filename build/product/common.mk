#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Filesystem
TARGET_FS_CONFIG_GEN += vendor/nyanpasu/build/config/config.fs

# Move Wi-Fi modules to vendor
PRODUCT_VENDOR_MOVE_ENABLED := true

# Permissions
PRODUCT_COPY_FILES += \
    vendor/nyanpasu/build/config/permissions/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml \
    vendor/nyanpasu/build/config/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml \
    vendor/nyanpasu/build/config/permissions/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# Inherit
# Bootanimation
$(call inherit-product, vendor/nyanpasu/build/product/bootanimation.mk)

# Common Qualcomm device
$(call inherit-product, device/qcom/common/common.mk)

# Gapps
$(call inherit-product, vendor/gapps/config.mk)

# Key
$(call inherit-product-if-exists, vendor/mashiro/keys.mk)

# Overlays
$(call inherit-product, vendor/nyanpasu/build/product/overlays.mk)

# Pckages
$(call inherit-product, vendor/nyanpasu/build/product/packages.mk)

# Properties
$(call inherit-product, vendor/nyanpasu/build/product/properties.mk)

# Sepolicy
$(call inherit-product, vendor/nyanpasu/sepolicy/sepolicy.mk)

# Snapdragon Clang
$(call inherit-product, vendor/nyanpasu/sdclang/sdclang.mk)

# Sound
$(call inherit-product, vendor/nyanpasu/build/product/sounds.mk)

# Theme
$(call inherit-product, vendor/mameko/theme.mk)

# Version
$(call inherit-product, vendor/nyanpasu/build/product/version.mk)
