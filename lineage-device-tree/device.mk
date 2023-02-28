#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.usb.sh \
    init.qcom.wifi.sh \
    init.qcom.early_boot.sh \
    playback_audio.sh \
    bluedut.sh \
    init.qcom.coex.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.class_main.sh \
    init.qcom.sdio.sh \
    bt_close.sh \
    init.qti.ims.sh \
    init.qcom.sensors.sh \
    init.qcom.crashdata.sh \
    wifitest.sh \
    loopback.sh \
    init.qcom.class_core.sh \
    init.qti.qseecomd.sh \
    wifitest_close.sh \
    capture_audio.sh \
    init.crda.sh \
    init.qti.fm.sh \
    myftm.agent.sh \
    init.qcom.efs.sync.sh \
    init.qcom.syspart_fixup.sh \
    qca6234-service.sh \
    init.mdm.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.msm.usb.configfs.rc \
    ueventd.rc \
    init.recovery.qcom.rc \
    init.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 27

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/jasmine_sprout/jasmine_sprout-vendor.mk)
