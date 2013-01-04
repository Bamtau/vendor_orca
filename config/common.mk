# Generic product
PRODUCT_NAME := orca
PRODUCT_BRAND := orca
PRODUCT_DEVICE := generic

PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/common

# T-Mobile theme engine
include vendor/orca/config/themes_common.mk

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/orca/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/orca/prebuilt/common/bin/50-xy.sh:system/addon.d/50-xy.sh \
    vendor/orca/prebuilt/common/bin/blacklist:system/addon.d/blacklist

## Build Information Properties

DATE = $(shell vendor/orca/tools/getdate)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.orca.version=$(TARGET_PRODUCT)-preview-b8 \
    ro.modversion=$(TARGET_PRODUCT)_b8_$(DATE)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40D BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_EST_DATE=$(shell date +"%s")

# Build.prop Modifications, Tweaks, blah.
include vendor/orca/config/buildprop_common.mk

# CyanogenMod Packages
PRODUCT_PACKAGES += \
        Trebuchet \
        CMFileManager \
        LockClock \
        audio_effects.conf

# Orca Packages
PRODUCT_PACKAGES += \
        SuperSU \
        Torch \
        ORCAPapers \
        ORCASettings

# SuperSU and sysrw
PRODUCT_COPY_FILES += \
    vendor/orca/prebuilt/common/xbin/su:system/xbin/su \
    vendor/orca/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/orca/prebuilt/common/xbin/sysro:system/xbin/sysro
