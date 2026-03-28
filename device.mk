# Стандартное начало device.mk для TWRP:
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

PRODUCT_NAME := m13
PRODUCT_DEVICE := m13
PRODUCT_MODEL := Galaxy M13
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
