
LOCAL_PATH := device/xiaomi/hermes

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := hermes

# Device display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_hermes
PRODUCT_DEVICE := hermes
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 2
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
