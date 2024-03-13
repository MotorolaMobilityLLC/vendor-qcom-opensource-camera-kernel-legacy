ifeq ($(BOARD_USES_LEGACY_CAMERA), true)

include $(call my-dir)/$(TARGET_DEVICE)/Android.mk

endif # BOARD_USES_LEGACY_CAMERA
