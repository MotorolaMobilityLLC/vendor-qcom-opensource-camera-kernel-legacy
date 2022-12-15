ifeq ($(strip $(BOARD_USES_LEGACY_CAMERA)),true)
ifneq (,$(findstring eqs, $(strip $(TARGET_PRODUCT))))

ifneq ($(TARGET_USES_QMAA),true)
PRODUCT_PACKAGES += camera.ko
endif

endif # TARGET_PRODUCT
endif # BOARD_USES_LEGACY_CAMERA
