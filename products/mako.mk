# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/orca/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/orca/config/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/orca/overlay/mako

# Setup device specific product configuration.
PRODUCT_NAME := orca_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam TARGET_DEVICE=mako BUILD_FINGERPRINT=google/occam/mako:4.2.1/JOP40D/533553:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.1 JOP40D 533553 release-keys"

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/orca/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/orca/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 
