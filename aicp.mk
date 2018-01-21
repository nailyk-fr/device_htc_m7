# Inherit Aicp full phone configuration
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

$(call inherit-product, vendor/aicp/config/common.mk)

$(call inherit-product, device/htc/m7/m7.mk)

# Override build props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="htc/m7_google/m7:8.1.0/OPM1.171019.011/4448085:user/release-keys" \
    BUILD_ID=LMY47O.H18 \
    PRIVATE_BUILD_DESC="8.1.0 OPM1.171019.011 4448085 release-keys"
    PRODUCT_NAME=HTCOne

# Device naming
PRODUCT_NAME := aicp_m7
PRODUCT_DEVICE := m7

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="icxj1 (Flash-O-Holic)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
-include vendor/aicp/config/bootanimation.mk
