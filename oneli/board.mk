# Build camera kernel driver
ifeq ($(strip $(BOARD_USES_LEGACY_CAMERA)),true)
ifneq (,$(findstring oneli, $(strip $(TARGET_PRODUCT))))

ifneq ($(TARGET_USES_QMAA),true)
ifneq ($(TARGET_BOARD_AUTO),true)
ifeq ($(call is-board-platform-in-list,$(TARGET_BOARD_PLATFORM)),true)
BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/camera.ko
endif
endif
endif

endif # TARGET_PRODUCT
endif # BOARD_USES_LEGACY_CAMERA
