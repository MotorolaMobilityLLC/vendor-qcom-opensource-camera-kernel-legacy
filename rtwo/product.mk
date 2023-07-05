ifeq ($(BOARD_USES_LEGACY_CAMERA), true)
ifneq (,$(findstring rtwo, $(strip $(TARGET_PRODUCT))))
CAMERA_DLKM_ENABLED := true
ifeq ($(TARGET_KERNEL_DLKM_DISABLE), true)
	ifeq ($(TARGET_KERNEL_DLKM_CAMERA_OVERRIDE), false)
		CAMERA_DLKM_ENABLED := false;
	endif
endif

ifeq ($(CAMERA_DLKM_ENABLED),true)
PRODUCT_PACKAGES += camera.ko
endif
endif #!TARGET_PRODUCT
endif #BOARD_USES_LEGACY_CAMERA
