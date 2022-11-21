cmd_kernel/bounds.s := riscv64-unknown-linux-gnu-gcc -Wp,-MD,kernel/.bounds.s.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/. -I. -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mabi=lp64 -Wall -march=rv64imac -mno-save-restore -DCONFIG_PAGE_OFFSET=0xffffffe000000000 -mcmodel=medany -mstrict-align -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init    -DKBUILD_BASENAME='"bounds"'  -DKBUILD_MODNAME='"bounds"'  -fverbose-asm -S -o kernel/bounds.s /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c

source_kernel/bounds.s := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c

deps_kernel/bounds.s := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/nr/cpus.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page-flags.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/idle/page/tracking.h) \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/hugetlb/page.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/types.h \
  arch/riscv/include/generated/asm/types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/int-ll64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/int-ll64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/bitsperlong.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitsperlong.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/bitsperlong.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stddef.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/stddef.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler_types.h \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  arch/riscv/include/generated/asm/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/const.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/asm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include/stdarg.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bitops.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/bitops.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/typecheck.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/irqflags.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/processor.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/ptrace.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/ptrace.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/csr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kern_levels.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/kernel.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sysinfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/cache.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/__ffs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/ffz.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/fls.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/__fls.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/fls64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/sched.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/ffs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/hweight.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/arch_hweight.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/const_hweight.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/non-atomic.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/le.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/byteorder.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/byteorder/little_endian.h \
    $(wildcard include/config/cpu/big/endian.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/byteorder/little_endian.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/swab.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/swab.h \
  arch/riscv/include/generated/asm/swab.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/swab.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/byteorder/generic.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bitops/ext2-atomic.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/build_bug.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kbuild.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock_types.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock_types_up.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rwlock_types.h \

kernel/bounds.s: $(deps_kernel/bounds.s)

$(deps_kernel/bounds.s):
