cmd_arch/riscv/lib/uaccess.o := riscv64-unknown-linux-gnu-gcc -Wp,-MD,arch/riscv/lib/.uaccess.o.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h -D__KERNEL__ -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -march=rv64imafdc -DCC_HAVE_ASM_GOTO   -c -o arch/riscv/lib/uaccess.o /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/lib/uaccess.S

source_arch/riscv/lib/uaccess.o := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/lib/uaccess.S

deps_arch/riscv/lib/uaccess.o := \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/linkage.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler_types.h \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stringify.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/linkage.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/asm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/csr.h \
    $(wildcard include/config/64bit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/const.h \

arch/riscv/lib/uaccess.o: $(deps_arch/riscv/lib/uaccess.o)

$(deps_arch/riscv/lib/uaccess.o):
