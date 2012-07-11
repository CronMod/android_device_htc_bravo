# Call this first so apn list is actually copied
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := cm_bravo
PRODUCT_BRAND   := htc_wwe
PRODUCT_DEVICE  := bravo
PRODUCT_MODEL   := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_bravo \
BUILD_FINGERPRINT=htc_wwe/bravo/bravo:4.0.4/IML74K:user/release-keys \
TARGET_BUILD_TYPE=userdebug \
BUILD_VERSION_TAGS=release-keys \
PRIVATE_BUILD_DESC="4.0.4 IML74K release-keys"

PRODUCT_CODENAME := bravo
