#
# Copyright (C) 2009 The Android Open Source Project
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
#

#
# This is the product configuration for a generic GSM bravo,
# not specialized for any geography.
#

# First, the most specific values, i.e. the aspects that are specific to GSM

DEVICE_PACKAGE_OVERLAYS := device/htc/bravo/overlay

#
# Packages required for bravo
#

# Sensors
PRODUCT_PACKAGES += \
    gps.bravo \
    lights.bravo \
    sensors.bravo \
    camera.qsd8k

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/bravo/prebuilt/init.bravo.rc:root/init.bravo.rc \
    device/htc/bravo/prebuilt/init.bravo.usb.rc:root/init.bravo.usb.rc \
    device/htc/bravo/prebuilt/ueventd.bravo.rc:root/ueventd.bravo.rc

# Prebuilt files/configs
PRODUCT_COPY_FILES += \
    device/htc/bravo/prebuilt/bravo-keypad.kl:system/usr/keylayout/bravo-keypad.kl \
    device/htc/bravo/prebuilt/bravo-keypad.kcm:system/usr/keychars/bravo-keypad.kcm \
    device/htc/bravo/prebuilt/curcial-oj.idc:system/usr/idc/curcial-oj.idc \
    device/htc/bravo/prebuilt/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/bravo/prebuilt/h2w_headset.kcm:system/usr/keychars/h2w_headset.kcm \
    device/htc/bravo/prebuilt/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/bravo/prebuilt/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/bravo/prebuilt/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
    device/htc/bravo/prebuilt/vold.fstab:system/etc/vold.fstab \
    device/htc/bravo/prebuilt/sysctl.conf:system/etc/sysctl.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/bravo/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Common qsd8k stuff
$(call inherit-product, device/htc/qsd8k-common/qsd8k.mk)

# Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/bravo/bravo-vendor.mk)
