ifeq ($(BOARD_USES_LEGACY_CAMERA), true)
ifneq (,$(findstring genevn, $(strip $(TARGET_PRODUCT))))
ifneq ($(TARGET_USES_QMAA),true)
PRODUCT_PACKAGES += camera.ko
endif
endif # !TARGET_PRODUCT
endif # !BOARD_USES_LEGACY_CAMERA
