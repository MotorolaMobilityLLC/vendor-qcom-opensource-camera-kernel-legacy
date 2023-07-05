ifeq ($(BOARD_USES_LEGACY_CAMERA), true)

include $(call my-dir)/$(TARGET_PRODUCT)/Android.mk

endif # BOARD_USES_LEGACY_CAMERA
