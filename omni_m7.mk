# Inherit OmniRom full phone configuration
$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product-if-exists, vendor/omni/config/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/omni/config/phone-xxhdpi-2048-hwui-memory.mk)

$(call inherit-product, device/htc/m7/m7.mk)

# Override build props
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="htc/m7_google/m7:8.1.0/OPM1.171019.011/4448085:user/release-keys" \
    BUILD_ID=LMY47O.H18 \
    PRIVATE_BUILD_DESC="8.1.0 OPM1.171019.011 4448085 release-keys"
    PRODUCT_NAME=HTCOne

# Device naming
PRODUCT_NAME := omni_m7
PRODUCT_DEVICE := m7

# Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="icxj1 (Flash-O-Holic) / nailyk"

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
