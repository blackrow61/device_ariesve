# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2013 The ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Overlay path
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Pixel density
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Bootsplash and charging image
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ARIESVE.rle:root/ARIESVE.rle \
    $(LOCAL_PATH)/lpm/charging.rle:root/charging.rle

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Media configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:root/fstab.qcom

# Recovery stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/ramdisk/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# Get BT macaddress
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/get_macaddrs:system/bin/get_macaddrs

# Touchscreen calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/quantom-touchscreen.idc:system/usr/idc/quantom-touchscreen.idc

# Keychars and keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/ariesve_keypad_numeric.kcm.bin:system/usr/keychars/ariesve_keypad_numeric.kcm.bin \
    $(LOCAL_PATH)/keyfiles/ariesve_keypad_qwerty.kcm.bin:system/usr/keychars/ariesve_keypad_qwerty.kcm.bin \
    $(LOCAL_PATH)/keyfiles/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/keyfiles/ariesve_handset.kl:system/usr/keylayout/ariesve_handset.kl \
    $(LOCAL_PATH)/keyfiles/ariesve_keypad.kl:system/usr/keylayout/ariesve_keypad.kl \
    $(LOCAL_PATH)/keyfiles/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/keyfiles/melfas_touchkey.kl:system/usr/keylayout/melfas_touchkey.kl

# LPM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lpm/bin/charging_mode:system/bin/charging_mode \
    $(LOCAL_PATH)/lpm/bin/playlpm:system/bin/playlpm \
    $(LOCAL_PATH)/lpm/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \
    $(LOCAL_PATH)/lpm/media/Disconnected.qmg:system/media/Disconnected.qmg \
    $(LOCAL_PATH)/lpm/media/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \
    $(LOCAL_PATH)/lpm/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg \
    $(LOCAL_PATH)/lpm/media/battery_error.qmg:system/media/battery_error.qmg \
    $(LOCAL_PATH)/lpm/media/chargingwarning.qmg:system/media/chargingwarning.qmg

# MemtrackHAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/memtrack.msm7x30.so:system/lib/hw/memtrack.msm7x30.so

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.primary.msm7x30 \
    audio_policy.msm7x30 \
    libaudio-resampler \
    libaudioparameter

# Graphics
PRODUCT_PACKAGES += \
    gralloc.msm7x30 \
    copybit.msm7x30 \
    hwcomposer.msm7x30

# Camera
PRODUCT_PACKAGES += \
    libsurfaceflinger_client

# HAL
PRODUCT_PACKAGES += \
    camera.msm7x30 \
    gps.msm7x30 \
    lights.msm7x30 \
    power.msm7x30 \
    sensors.ariesve

# QCOM OMX
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw \
    libc2dcolorconvert

# Filesystem management tools
PRODUCT_PACKAGES += \
    badblocks \
    e2fsck \
    mke2fs \
    mke2fs.conf \
    resize2fs \
    tune2fs \
    make_ext4fs \
    setup_fs

# Usb accessory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WiFi
PRODUCT_PACKAGES += \
    libnetcmdiface

# Extra Packages
PRODUCT_PACKAGES += \
    AriesParts \
    CMFileManager \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Support for Browser's saved page feature. This allows
# for pages saved on previous versions of the OS to be
# viewed on the current OS.
PRODUCT_PACKAGES += \
    libskia_legacy

# Build properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0

# Fix for Screenshots
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1

# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# For applications to determine if they should turn off specific memory-intensive
# features that work poorly on low-memory devices.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true

#Disable JIT cache
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.jit.codecachesize=0

#disable preloading of EGL/GL drivers in Zygote at boot time
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zygote.disable_gl_preload=true

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/nvram_net.txt:system/vendor/firmware/nvram_net.txt

# Dalvik Heap
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Vendor files
$(call inherit-product, vendor/samsung/ariesve/device-vendor.mk)
