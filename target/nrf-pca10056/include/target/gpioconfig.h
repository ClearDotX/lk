/*
 * Copyright (c) 2012 Travis Geiselbrecht
 *
 * Use of this source code is governed by a MIT-style
 * license that can be found in the LICENSE file or at
 * https://opensource.org/licenses/MIT
 */
#ifndef __TARGET_GPIOCONFIG_H
#define __TARGET_GPIOCONFIG_H

#define GPIO_LED1   13
#define GPIO_LED2   14
#define GPIO_LED3   15
#define GPIO_LED4   16

#define UART0_TX_PIN    6
#define UART0_RX_PIN    8

// Used in platform file  i2c_master.c for configuring twim0 (i2c)
#define TWIM0_SCL_PIN 27
#define TWIM0_SDA_PIN 26

// define these if twim1 module is used
//#define TWIM1_SCL_PIN
//#define TWIM1_SDA_PIN

#endif
