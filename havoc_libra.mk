# Release name
PRODUCT_RELEASE_NAME := libra

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

# Inherit some common havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/libra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := libra
PRODUCT_NAME := havoc_libra
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "Xiaomi/libra/libra:7.0/NRD90M/V9.5.2.0.NXKCNFA:user/release-keys"

# Havoc
export export HAVOC_BUILD_TYPE=Official

PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.maintainer=kyoto44
