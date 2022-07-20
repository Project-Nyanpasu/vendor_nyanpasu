#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# Add acsa property for CarrierServices
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.acsa=true

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
	ro.input.video_enabled=false

# Google Play services configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent

# Inherit from common Qualcomm device
ifeq ($(NYANPASU_QCOM_COMMON), true)
$(call inherit-product, device/qcom/common/common.mk)
endif

# IORap app launch prefetching using Perfetto traces and madvise
PRODUCT_PRODUCT_PROPERTIES += \
    ro.iorapd.enable=true

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Only logging privapp-permissions whitelist
PRODUCT_PRODUCT_PROPERTIES += \
    ro.control_privapp_permissions=log

# OPA configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true

# Override undesired Google defaults
PRODUCT_PRODUCT_PROPERTIES += \
    keyguard.no_require_sim=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html

# Set GMS client ID base
ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# SetupWizard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.gmsversion=12_beta \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.enable_assist_gesture_training=true \
    setupwizard.theme=glif_v3_light \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=false \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    setupwizard.feature.day_night_mode_enabled=true \
    setupwizard.feature.portal_notification=true

# Storage manager
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.storage_manager.enabled=true

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Bootanimation
$(call inherit-product, vendor/nyanpasu/build/product/bootanimation.mk)

# Fonts
$(call inherit-product, vendor/nyanpasu/build/product/fonts.mk)

# Gapps
$(call inherit-product, vendor/gapps/config.mk)

# Packages
$(call inherit-product, vendor/nyanpasu/build/product/packages.mk)

# Overlays
$(call inherit-product, vendor/nyanpasu/build/product/overlays.mk)

# Sound
$(call inherit-product, vendor/nyanpasu/build/product/sounds.mk)

# Version
$(call inherit-product, vendor/nyanpasu/build/product/version.mk)