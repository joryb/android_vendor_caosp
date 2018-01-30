# Inherit common product files.
$(call inherit-product, vendor/caosp/config/common.mk)

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/caosp/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := caosp_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.0/NBD91U/3408911:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.0 NBD91U 3408911 release-keys"
