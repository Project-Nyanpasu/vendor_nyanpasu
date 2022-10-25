#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# APK Packages
# Gapps
PRODUCT_PACKAGES += \
    com.google.android.dialer.support \
    AndroidAutoStub \
    AndroidPlatformServices \
    CalculatorGoogle \
    CalendarGoogle \
    CarrierServices \
    Chrome \
    ConfigUpdater \
    DeskClockGoogle \
    DevicePersonalizationPrebuiltPixel2021 \
    DeviceIntelligenceNetworkPrebuilt \
    GCS \
    GmsCore \
    GoogleCalendarSyncAdapter \
    GoogleContacts \
    GoogleContactsSyncAdapter \
    GoogleDialer \
    GoogleExtShared \
    GoogleFeedback \
    GoogleLocationHistory \
    GoogleOneTimeInitializer \
    GooglePrintRecommendationService \
    GooglePackageInstaller \
    GooglePartnerSetup \
    GoogleRestore \
    GoogleServicesFramework \
    GoogleTTS \
    LatinImeGoogle \
    Messages \
    Phonesky \
    Photos \
    PixelSetupWizard \
    SearchSelector \
    SetupWizard \
    SettingsIntelligenceGooglePrebuilt \
    SoundPickerPrebuilt \
    talkback \
    TrichromeLibrary \
    Velvet \
    WebViewGoogle \
    Wellbeing

# Require
PRODUCT_PACKAGES += \
    AudioFX \
    LatinIME \
    Launcher3QuickStep \
    SimpleDeviceConfig \
    ThemePicker

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.manager@1.0.vendor

# Neural Network
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-rtti

# QTI VNDK Framework Detect
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect \
    libqti_vndfwk_detect_system \
    libqti_vndfwk_detect_vendor \
    libvndfwk_detect_jni.qti_system \
    libvndfwk_detect_jni.qti.vendor \
    libqti_vndfwk_detect.vendor
