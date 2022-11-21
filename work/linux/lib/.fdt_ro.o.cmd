cmd_lib/fdt_ro.o := riscv64-unknown-linux-gnu-gcc -Wp,-MD,lib/.fdt_ro.o.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib -Ilib -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mabi=lp64 -Wall -march=rv64imac -mno-save-restore -DCONFIG_PAGE_OFFSET=0xffffffe000000000 -mcmodel=medany -mstrict-align -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt    -DKBUILD_BASENAME='"fdt_ro"'  -DKBUILD_MODNAME='"fdt_ro"' -c -o lib/fdt_ro.o /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/fdt_ro.c

source_lib/fdt_ro.o := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/fdt_ro.c

deps_lib/fdt_ro.o := \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/libfdt_env.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler_types.h \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/types.h \
  arch/riscv/include/generated/asm/types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/int-ll64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/int-ll64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/bitsperlong.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/bitsperlong.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stddef.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/stddef.h \
  arch/riscv/include/generated/asm/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/barrier.h \
    $(wildcard include/config/smp.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include/stdarg.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/linkage.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stringify.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/linkage.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/byteorder.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/byteorder/little_endian.h \
    $(wildcard include/config/cpu/big/endian.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/byteorder/little_endian.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/swab.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/swab.h \
  arch/riscv/include/generated/asm/swab.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/swab.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/byteorder/generic.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt/fdt_ro.c \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt/libfdt_env.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt/fdt.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt/libfdt.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt/fdt.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/lib/../scripts/dtc/libfdt/libfdt_internal.h \

lib/fdt_ro.o: $(deps_lib/fdt_ro.o)

$(deps_lib/fdt_ro.o):
