#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# google-sans family
PRODUCT_PACKAGES += \
    GoogleSans-Italic.ttf \
    GoogleSans-Regular.ttf \
    Inter-VF.ttf \
    OppoSans-En-Regular.ttf

PRODUCT_COPY_FILES += \
    vendor/nyanpasu/theme/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Overlay
PRODUCT_PACKAGES += \
    FontGoogleSansOverlay \
    FontGoogleSansLatoOverlay \
    FontInterOverlay \
    FontOppoSansOverlay
