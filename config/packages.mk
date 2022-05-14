#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

# AOSP userdebug/eng CLI tools
PRODUCT_PACKAGES += \
    arping \
    gdbserver \
    idlcli \
    iotop \
    iperf3 \
    iw \
    procrank \
    showmap \
    sqlite3 \
    ss \
    strace \
    tracepath \
    tracepath6 \
    traceroute6 \
    procmem \
    curl \

# LineageOS CLI tools
PRODUCT_PACKAGES += \
    7z \
    bash \
    htop \
    nano \
    pigz \
    vim \
    zip \
    rsync \

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs

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
    SoundPickerPrebuilt \
    talkback \
    TrichromeLibrary \
    Velvet \
    WebViewGoogle \
    Wellbeing

# Required packages
PRODUCT_PACKAGES += \
    AudioFX \
    LatinIME \
    Launcher3QuickStep \
    NyanpasuThemesStub \
    SimpleDeviceConfig \
    ThemePicker
