/* This file is automatically generated.
   It defines macros to allow user program to find the shared
   library files which come as part of GNU libc.  */
#ifndef __GNU_LIB_NAMES_H
#define __GNU_LIB_NAMES_H	1

#include <bits/wordsize.h>

#if (__SIZEOF_INT__ == 4) && (__SIZEOF_LONG__ == 4) && (__SIZEOF_POINTER__ == 4) && (defined __riscv_float_abi_soft) && (!defined __riscv_float_abi_single) && (!defined __riscv_float_abi_double)
# include <gnu/lib-names-ilp32.h>
#endif
#if (__SIZEOF_INT__ == 4) && (__SIZEOF_LONG__ == 4) && (__SIZEOF_POINTER__ == 4) && (!defined __riscv_float_abi_soft) && (defined __riscv_float_abi_single) && (!defined __riscv_float_abi_double)
# include <gnu/lib-names-ilp32f.h>
#endif
#if (__SIZEOF_INT__ == 4) && (__SIZEOF_LONG__ == 4) && (__SIZEOF_POINTER__ == 4) && (!defined __riscv_float_abi_soft) && (!defined __riscv_float_abi_single) && (defined __riscv_float_abi_double)
# include <gnu/lib-names-ilp32d.h>
#endif
#if (__SIZEOF_INT__ == 4) && (__SIZEOF_LONG__ == 8) && (__SIZEOF_POINTER__ == 8) && (defined __riscv_float_abi_soft) && (!defined __riscv_float_abi_single) && (!defined __riscv_float_abi_double)
# include <gnu/lib-names-lp64.h>
#endif
#if (__SIZEOF_INT__ == 4) && (__SIZEOF_LONG__ == 8) && (__SIZEOF_POINTER__ == 8) && (!defined __riscv_float_abi_soft) && (defined __riscv_float_abi_single) && (!defined __riscv_float_abi_double)
# include <gnu/lib-names-lp64f.h>
#endif
#if (__SIZEOF_INT__ == 4) && (__SIZEOF_LONG__ == 8) && (__SIZEOF_POINTER__ == 8) && (!defined __riscv_float_abi_soft) && (!defined __riscv_float_abi_single) && (defined __riscv_float_abi_double)
# include <gnu/lib-names-lp64d.h>
#endif

#endif	/* gnu/lib-names.h */
