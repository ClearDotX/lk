LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

NRF52_CHIP := nrf52840-qiaa

PLATFORM := nrf52xxx

GLOBAL_DEFINES += \
	ENABLE_UART0=1 \
	NRFX_USBD_ENABLED=1 \
	NRFX_TWIM_ENABLED=1 \
	NRFX_TWIM0_ENABLED=1 \
	NRF52840_XXAA \


MODULE_SRCS += \
	$(LOCAL_DIR)/init.c

include make/module.mk

