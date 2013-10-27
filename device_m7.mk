$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/m7/m7-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/m7/overlay

LOCAL_PATH := device/htc/m7
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    $(LOCAL_PATH)/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    $(LOCAL_PATH)/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    $(LOCAL_PATH)/recovery/sbin/power_test:recovery/root/sbin/power_test \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_00.png:recovery/root/res/offmode_charging_images/charging_00.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_01.png:recovery/root/res/offmode_charging_images/charging_01.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_02.png:recovery/root/res/offmode_charging_images/charging_02.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_03.png:recovery/root/res/offmode_charging_images/charging_03.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_04.png:recovery/root/res/offmode_charging_images/charging_04.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_05.png:recovery/root/res/offmode_charging_images/charging_05.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_06.png:recovery/root/res/offmode_charging_images/charging_06.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_07.png:recovery/root/res/offmode_charging_images/charging_07.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_08.png:recovery/root/res/offmode_charging_images/charging_08.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/charging_09.png:recovery/root/res/offmode_charging_images/charging_09.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/error.png:recovery/root/res/offmode_charging_images/error.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_0.png:recovery/root/res/offmode_charging_images/r_0.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_1.png:recovery/root/res/offmode_charging_images/r_1.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_2.png:recovery/root/res/offmode_charging_images/r_2.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_3.png:recovery/root/res/offmode_charging_images/r_3.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_4.png:recovery/root/res/offmode_charging_images/r_4.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_5.png:recovery/root/res/offmode_charging_images/r_5.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_6.png:recovery/root/res/offmode_charging_images/r_6.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_7.png:recovery/root/res/offmode_charging_images/r_7.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_8.png:recovery/root/res/offmode_charging_images/r_8.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_9.png:recovery/root/res/offmode_charging_images/r_9.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/r_percent.png:recovery/root/res/offmode_charging_images/r_percent.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_0.png:recovery/root/res/offmode_charging_images/w_0.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_1.png:recovery/root/res/offmode_charging_images/w_1.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_2.png:recovery/root/res/offmode_charging_images/w_2.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_3.png:recovery/root/res/offmode_charging_images/w_3.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_4.png:recovery/root/res/offmode_charging_images/w_4.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_5.png:recovery/root/res/offmode_charging_images/w_5.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_6.png:recovery/root/res/offmode_charging_images/w_6.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_7.png:recovery/root/res/offmode_charging_images/w_7.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_8.png:recovery/root/res/offmode_charging_images/w_8.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_9.png:recovery/root/res/offmode_charging_images/w_9.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/w_percent.png:recovery/root/res/offmode_charging_images/w_percent.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_0.png:recovery/root/res/offmode_charging_images/y_0.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_1.png:recovery/root/res/offmode_charging_images/y_1.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_2.png:recovery/root/res/offmode_charging_images/y_2.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_3.png:recovery/root/res/offmode_charging_images/y_3.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_4.png:recovery/root/res/offmode_charging_images/y_4.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_5.png:recovery/root/res/offmode_charging_images/y_5.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_6.png:recovery/root/res/offmode_charging_images/y_6.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_7.png:recovery/root/res/offmode_charging_images/y_7.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_8.png:recovery/root/res/offmode_charging_images/y_8.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_9.png:recovery/root/res/offmode_charging_images/y_9.png \
    $(LOCAL_PATH)/recovery/res/offmode_charging_images/y_percent.png:recovery/root/res/offmode_charging_images/y_percent.png

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_m7
PRODUCT_DEVICE := m7
