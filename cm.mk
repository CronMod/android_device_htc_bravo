# Call this first so apn list is actually copied
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := cm_bravo
PRODUCT_BRAND   := htc_wwe
PRODUCT_DEVICE  := bravo
PRODUCT_MODEL   := HTC Desire
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bravo \
    BUILD_ID=IMM76L
