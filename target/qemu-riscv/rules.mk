LOCAL_DIR := $(GET_LOCAL_DIR)

GLOBAL_INCLUDES += \
	$(LOCAL_DIR)/include

PLATFORM := riscv
SUBARCH ?= 32

MEMBASE ?= 0x20400000
MEMSIZE ?= 0x100000

#include make/module.mk

