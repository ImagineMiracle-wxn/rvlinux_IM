cmd_usr/initramfs_data.o := riscv64-unknown-linux-gnu-gcc -Wp,-MD,usr/.initramfs_data.o.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h -D__KERNEL__ -D__ASSEMBLY__ -fno-PIE -mabi=lp64 -march=rv64imafdc -DCC_HAVE_ASM_GOTO -DINITRAMFS_IMAGE="usr/initramfs_data.cpio.gz"   -c -o usr/initramfs_data.o /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/usr/initramfs_data.S

source_usr/initramfs_data.o := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/usr/initramfs_data.S

deps_usr/initramfs_data.o := \
    $(wildcard include/config/64bit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stringify.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/vmlinux.lds.h \
    $(wildcard include/config/ld/dead/code/data/elimination.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kprobes.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
    $(wildcard include/config/serial/earlycon.h) \
    $(wildcard include/config/timer/of.h) \
    $(wildcard include/config/irqchip.h) \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/of/iommu.h) \
    $(wildcard include/config/of/reserved/mem.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/idle.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/unwinder/orc.h) \
    $(wildcard include/config/pm/trace.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \

usr/initramfs_data.o: $(deps_usr/initramfs_data.o)

$(deps_usr/initramfs_data.o):
