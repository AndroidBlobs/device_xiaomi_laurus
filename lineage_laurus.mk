# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from laurus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := laurus
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_laurus
PRODUCT_MODEL := MI CC 9e

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := laurus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="laurus-user 10 laurus-user 10 QKQ1.190910.002 V12.0.3.0.QFMCNXM V12.0.3.0.QFMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/laurus/laurus:10/QKQ1.190910.002/V12.0.3.0.QFMCNXM:user/release-keys
