LOCAL_DIR := $(GET_LOCAL_DIR)

GLOBAL_INCLUDES += \
	$(LOCAL_DIR)/include

PLATFORM := riscv
SUBARCH ?= 32

MEMBASE ?= 0x0
MEMSIZE ?= 0x0

#include make/module.mk

