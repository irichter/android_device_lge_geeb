# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/du/config/common_full_phone.mk)
$(call inherit-product, vendor/du/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb/full_geeb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_geeb
PRODUCT_BRAND := LGE

$(call inherit-product-if-exists, vendor/lge/mako/mako-vendor.mk)

