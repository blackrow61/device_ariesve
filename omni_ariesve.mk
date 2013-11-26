# Inherit device configuration
$(call inherit-product, device/samsung/ariesve/full_ariesve.mk)

# Release name
PRODUCT_RELEASE_NAME := ariesve

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_ariesve
PRODUCT_DEVICE := ariesve
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9001

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/GT-I9001/GT-I9001:2.3.6/GINGERBREAD/XXKQN:user/release-keys PRIVATE_BUILD_DESC="GT-I9001-user 2.3.6 GINGERBREAD XXKQN release-keys"
