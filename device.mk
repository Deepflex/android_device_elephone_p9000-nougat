# Copyright (C) 2016 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

VENDOR_BLOBS ?= vendor/elephone/p9000/p9000-vendor.mk
$(call inherit-product-if-exists, $(VENDOR_BLOBS))

MTK_PROJECT_CONFIG ?= device/elephone/p9000/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := p9000,P9000,elephone,Elephone,c239v55_dx

# Charger and USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.usb.vid=2970

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/nfc.cfg:system/etc/nfc.cfg \
    $(LOCAL_PATH)/configs/nfc/nfcse.cfg:system/etc/nfcse.cfg \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Prebuilt
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/audio/custom/lib/libaudio_param_parser.so:system/lib/libaudio_param_parser.so \
    $(LOCAL_PATH)/prebuilt/audio/custom/lib64/libaudio_param_parser.so:system/lib64/libaudio_param_parser.so \
    $(LOCAL_PATH)/prebuilt/camera/custom/lib/libcam.halsensor.so:system/lib/libcam.halsensor.so \
    $(LOCAL_PATH)/prebuilt/camera/custom/lib/libcam.paramsmgr.so:system/lib/libcam.paramsmgr.so \
    $(LOCAL_PATH)/prebuilt/camera/custom/lib/libsec_mem.so:system/lib/libsec_mem.so \
	$(LOCAL_PATH)/prebuilt/camera/custom/lib64/libcam.halsensor.so:system/lib64/libcam.halsensor.so \
    $(LOCAL_PATH)/prebuilt/camera/custom/lib64/libcam.paramsmgr.so:system/lib64/libcam.paramsmgr.so \
    $(LOCAL_PATH)/prebuilt/camera/custom/lib64/libsec_mem.so:system/lib64/libsec_mem.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib/libhdrproc.so:system/lib/libhdrproc.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib/libMtkOmxCore.so:system/lib/libMtkOmxCore.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib/libMtkOmxVdecEx.so:system/lib/libMtkOmxVdecEx.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib/libMtkOmxVenc.so:system/lib/libMtkOmxVenc.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib/libvcodecdrv.so:system/lib/libvcodecdrv.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib/libvcodec_utility.so:system/lib/libvcodec_utility.so \
	$(LOCAL_PATH)/prebuilt/camera/marshmallow/lib64/libhdrproc.so:system/lib64/libhdrproc.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib64/libMtkOmxCore.so:system/lib64/libMtkOmxCore.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib64/libvcodecdrv.so:system/lib64/libvcodecdrv.so \
    $(LOCAL_PATH)/prebuilt/camera/marshmallow/lib64/libvcodec_utility.so:system/lib64/libvcodec_utility.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/libbwc.so:system/lib/libbwc.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/libgui_ext.so:system/lib/libgui_ext.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/libm4u.so:system/lib/libm4u.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/libmtkcam_fwkutils.so:system/lib/libmtkcam_fwkutils.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/librrc.so:system/lib/librrc.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/libui_ext.so:system/lib/libui_ext.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldcam_imx258_mipi_raw_XL_4033_v0.so:system/lib/lib_agoldcam_imx258_mipi_raw_XL_4033_v0.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldcam_ov8858_mipi_raw_XL_CMB046_v1.so:system/lib/lib_agoldcam_ov8858_mipi_raw_XL_CMB046_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v1.so:system/lib/lib_agoldlens_dw9714af_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v2.so:system/lib/lib_agoldlens_dw9714af_v2.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v3.so:system/lib/lib_agoldlens_dw9714af_v3.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v4.so:system/lib/lib_agoldlens_dw9714af_v4.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v5.so:system/lib/lib_agoldlens_dw9714af_v5.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v6.so:system/lib/lib_agoldlens_dw9714af_v6.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9714af_v8.so:system/lib/lib_agoldlens_dw9714af_v8.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9763af_v1.so:system/lib/lib_agoldlens_dw9763af_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9763af_v2.so:system/lib/lib_agoldlens_dw9763af_v2.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9800af_v1.so:system/lib/lib_agoldlens_dw9800af_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib/lib_agoldlens_dw9800af_v2.so:system/lib/lib_agoldlens_dw9800af_v2.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/libbwc.so:system/lib64/libbwc.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/libgui_ext.so:system/lib64/libgui_ext.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/libm4u.so:system/lib64/libm4u.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/libmtkcam_fwkutils.so:system/lib64/libmtkcam_fwkutils.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/librrc.so:system/lib64/librrc.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/libui_ext.so:system/lib64/libui_ext.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldcam_imx258_mipi_raw_XL_4033_v0.so:system/lib64/lib_agoldcam_imx258_mipi_raw_XL_4033_v0.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldcam_ov8858_mipi_raw_XL_CMB046_v1.so:system/lib64/lib_agoldcam_ov8858_mipi_raw_XL_CMB046_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v1.so:system/lib64/lib_agoldlens_dw9714af_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v2.so:system/lib64/lib_agoldlens_dw9714af_v2.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v3.so:system/lib64/lib_agoldlens_dw9714af_v3.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v4.so:system/lib64/lib_agoldlens_dw9714af_v4.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v5.so:system/lib64/lib_agoldlens_dw9714af_v5.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v6.so:system/lib64/lib_agoldlens_dw9714af_v6.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9714af_v8.so:system/lib64/lib_agoldlens_dw9714af_v8.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9763af_v1.so:system/lib64/lib_agoldlens_dw9763af_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9763af_v2.so:system/lib64/lib_agoldlens_dw9763af_v2.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9800af_v1.so:system/lib64/lib_agoldlens_dw9800af_v1.so \
    $(LOCAL_PATH)/prebuilt/camera/nougat/lib64/lib_agoldlens_dw9800af_v2.so:system/lib64/lib_agoldlens_dw9800af_v2.so \
    $(LOCAL_PATH)/prebuilt/fm/custom/lib/hw/radio.fm.mt6755.so:system/lib/hw/radio.fm.mt6755.so \
    $(LOCAL_PATH)/prebuilt/fingerprint/custom/bin/etsd:system/bin/etsd \
    $(LOCAL_PATH)/prebuilt/fingerprint/custom/lib64/libEtsdc.so:system/lib64/libEtsdc.so \
    $(LOCAL_PATH)/prebuilt/fingerprint/custom/lib64/libFpEts.so:system/lib64/libFpEts.so \
    $(LOCAL_PATH)/prebuilt/fingerprint/custom/lib64/libFPEtsJni.so:system/lib64/libFPEtsJni.so \
    $(LOCAL_PATH)/prebuilt/fingerprint/custom/lib64/hw/fingerprint.default.so:system/lib64/hw/fingerprint.default.so \
    $(LOCAL_PATH)/prebuilt/nfc/custom/lib/libmtknfc.so:system/lib/libmtknfc.so \
    $(LOCAL_PATH)/prebuilt/nfc/custom/lib/libnfc_ndef.so:system/lib/libnfc_ndef.so \
    $(LOCAL_PATH)/prebuilt/nfc/custom/lib/hw/nfc_nci.mt6605.default.so:system/lib/hw/nfc_nci.mt6605.default.so \
    $(LOCAL_PATH)/prebuilt/nfc/custom/lib64/libmtknfc.so:system/lib64/libmtknfc.so \
    $(LOCAL_PATH)/prebuilt/nfc/custom/lib64/libnfc_ndef.so:system/lib64/libnfc_ndef.so \
    $(LOCAL_PATH)/prebuilt/nfc/custom/lib64/hw/nfc_nci.mt6605.default.so:system/lib64/hw/nfc_nci.mt6605.default.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/6620_launcher:system/bin/6620_launcher \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/6620_wmt_concurrency:system/bin/6620_wmt_concurrency \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/6620_wmt_lpbk:system/bin/6620_wmt_lpbk \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/ccci_fsd:system/bin/ccci_fsd \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/ccci_mdinit:system/bin/ccci_mdinit \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/gsm0710muxd:system/bin/gsm0710muxd \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/gsm0710muxdmd2:system/bin/gsm0710muxdmd2 \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/mtkrild:system/bin/mtkrild \
    $(LOCAL_PATH)/prebuilt/ril/custom/bin/mtkrildmd2:system/bin/mtkrildmd2 \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal.so:system/lib/libmal.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_datamngr.so:system/lib/libmal_datamngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_epdga.so:system/lib/libmal_epdga.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_imsmngr.so:system/lib/libmal_imsmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_mdmngr.so:system/lib/libmal_mdmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_nwmngr.so:system/lib/libmal_nwmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_rds.so:system/lib/libmal_rds.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_rilproxy.so:system/lib/libmal_rilproxy.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmal_simmngr.so:system/lib/libmal_simmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/libmdfx.so:system/lib/libmdfx.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/librilmtk.so:system/lib/librilmtk.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/librilmtkmd2.so:system/lib/librilmtkmd2.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/mtk-ril.so:system/lib/mtk-ril.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib/mtk-rilmd2.so:system/lib/mtk-rilmd2.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal.so:system/lib64/libmal.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_datamngr.so:system/lib64/libmal_datamngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_epdga.so:system/lib64/libmal_epdga.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_imsmngr.so:system/lib64/libmal_imsmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_mdmngr.so:system/lib64/libmal_mdmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_nwmngr.so:system/lib64/libmal_nwmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_rds.so:system/lib64/libmal_rds.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_rilproxy.so:system/lib64/libmal_rilproxy.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmal_simmngr.so:system/lib64/libmal_simmngr.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/libmdfx.so:system/lib64/libmdfx.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/librilmtk.so:system/lib64/librilmtk.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/librilmtkmd2.so:system/lib64/librilmtkmd2.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/mtk-ril.so:system/lib64/mtk-ril.so \
    $(LOCAL_PATH)/prebuilt/ril/custom/lib64/mtk-rilmd2.so:system/lib64/mtk-rilmd2.so

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Thermal
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/.ht120.mtc:system/etc/.tp/.ht120.mtc \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/.thermal_meta.conf:system/etc/.tp/.thermal_meta.conf \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/.thermal_policy_00:system/etc/.tp/.thermal_policy_00 \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/.thermal_policy_01:system/etc/.tp/.thermal_policy_01 \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/.thermal_policy_02:system/etc/.tp/.thermal_policy_02 \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/thermal.conf:system/etc/.tp/thermal.conf \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/thermal.high.conf:system/etc/.tp/thermal.high.conf \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/thermal.low.conf:system/etc/.tp/thermal.low.conf \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/thermal.mid.conf:system/etc/.tp/thermal.mid.conf \
	$(LOCAL_PATH)/prebuilt/thermal/custom/etc/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf \
	$(LOCAL_PATH)/prebuilt/thermal/custom/bin/thermal:system/bin/thermal \
	$(LOCAL_PATH)/prebuilt/thermal/custom/bin/thermal_manager:system/bin/thermal_manager \
	$(LOCAL_PATH)/prebuilt/thermal/custom/bin/thermald:system/bin/thermald \
	$(LOCAL_PATH)/prebuilt/thermal/custom/bin/thermalloadalgod:system/bin/thermalloadalgod

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# GPS
PRODUCT_PACKAGES += \
    YGPS

# Telephony
SIM_COUNT := 2
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=$(SIM_COUNT)
PRODUCT_PROPERTY_OVERRIDES += persist.radio.default.sim=0
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

# Graphics
MTK_GPU_VERSION := mali midgard r7p0

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)

# Versioning
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mediatek.version.release=$(MTK_BUILD_VERNO) \
    ro.mediatek.chip_ver=$(MTK_CHIP_VER)

# Inherit the rest from mt6755-common
$(call inherit-product, device/cyanogen/mt6755-common/mt6755.mk)
