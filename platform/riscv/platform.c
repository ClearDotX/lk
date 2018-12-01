/*
 * Copyright (c) 2015 Travis Geiselbrecht
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files
 * (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of the Software,
 * and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
#include <reg.h>
#include <kernel/thread.h>
#include <platform.h>
#include <platform/interrupts.h>
#include <platform/debug.h>
#include <platform/timer.h>
#include <sys/types.h>

static volatile unsigned int * const gpio_base = (unsigned int *)0x10012000;
static volatile unsigned int * const uart_base = (unsigned int *)0x10013000;

static void uart_write(int c) {
    uart_base[0] = (c & 0xff);
}

void __uart_init(void) {
    gpio_base[14] = (3<<16); // io function enable for pin 16/17

    uart_base[6] = 0x9be; // divisor
    uart_base[2] = 1; // txen
}

void platform_dputc(char c)
{
    if (c == '\n')
        uart_write('\r');
    uart_write(c);
}

int platform_dgetc(char *c, bool wait)
{
#if 0
    for (;;) {
        int ret = uartlite_getc(wait);
        if (ret >= 0) {
            *c = ret;
            return 0;
        }

        if (!wait)
            return -1;

        thread_yield();
    }
#endif
    return -1;
}


