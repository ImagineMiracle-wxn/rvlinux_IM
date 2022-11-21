cmd_arch/riscv/kernel/vdso/vdso.lds := riscv64-unknown-linux-gnu-gcc -E -Wp,-MD,arch/riscv/kernel/vdso/.vdso.lds.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h -D__KERNEL__ -P -C -Uriscv -P -Uriscv -D__ASSEMBLY__ -DLINKER_SCRIPT -o arch/riscv/kernel/vdso/vdso.lds /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/vdso/vdso.lds.S

source_arch/riscv/kernel/vdso/vdso.lds := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/vdso/vdso.lds.S

deps_arch/riscv/kernel/vdso/vdso.lds := \

arch/riscv/kernel/vdso/vdso.lds: $(deps_arch/riscv/kernel/vdso/vdso.lds)

$(deps_arch/riscv/kernel/vdso/vdso.lds):
