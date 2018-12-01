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
#include <asm.h>

/* void riscv32_context_switch(
    struct riscv32_context_switch_frame *oldcs,
    struct riscv32_context_switch_frame *newcs); */
FUNCTION(riscv32_context_switch)
    # a0 = oldcs
    # a1 = newcs
    sw     ra, 0(a0)
    sw     sp, 4(a0)
    sw     tp, 8(a0)
    sw     s0, 12(a0)
    sw     s1, 16(a0)
    sw     s2, 20(a0)
    sw     s3, 24(a0)
    sw     s4, 28(a0)
    sw     s5, 32(a0)
    sw     s6, 36(a0)
    sw     s7, 40(a0)
    sw     s8, 44(a0)
    sw     s9, 48(a0)
    sw     s10, 52(a0)
    sw     s11, 56(a0)

    lw     s11, 56(a1)
    lw     s10, 52(a1)
    lw     s9, 48(a1)
    lw     s8, 44(a1)
    lw     s7, 40(a1)
    lw     s6, 36(a1)
    lw     s5, 32(a1)
    lw     s4, 28(a1)
    lw     s3, 24(a1)
    lw     s2, 20(a1)
    lw     s1, 16(a1)
    lw     s0, 12(a1)
    lw     tp, 8(a1)
    lw     sp, 4(a1)
    lw     ra, 0(a1)

    ret
