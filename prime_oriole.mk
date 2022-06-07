# Inherit some common Prime stuff
$(call inherit-product, vendor/prime/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)
$(call inherit-product, device/google/raviole/device-prime.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := prime_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SQ3A.220605.009.B1 8650216 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SQ3A.220605.009.B1/8650216:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
