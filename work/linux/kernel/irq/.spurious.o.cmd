cmd_kernel/irq/spurious.o := riscv64-unknown-linux-gnu-gcc -Wp,-MD,kernel/irq/.spurious.o.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/irq -Ikernel/irq -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mabi=lp64 -Wall -march=rv64imac -mno-save-restore -DCONFIG_PAGE_OFFSET=0xffffffe000000000 -mcmodel=medany -mstrict-align -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init    -DKBUILD_BASENAME='"spurious"'  -DKBUILD_MODNAME='"spurious"' -c -o kernel/irq/spurious.o /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/irq/spurious.c

source_kernel/irq/spurious.o := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/irq/spurious.c

deps_kernel/irq/spurious.o := \
    $(wildcard include/config/smp.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jiffies.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/kernel.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sysinfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/cache.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/riscv/include/generated/asm/div64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/div64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/const.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  arch/riscv/include/generated/asm/preempt.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/preempt.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/debug/kmemleak.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/asm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/restart_block.h \
    $(wildcard include/config/compat.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/current.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/thread_info.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/page.h \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/64bits.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pfn.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/getorder.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bottom_half.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock_types_up.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rwlock_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock_up.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rwlock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock_api_up.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/atomic.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/cmpxchg.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/atomic-long.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/time.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time32.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timex.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/timex.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/param.h \
  arch/riscv/include/generated/asm/param.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/param.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/timex.h \
  include/generated/timeconst.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irq.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/generic/irq/effective/aff/mask.h) \
    $(wildcard include/config/generic/irq/ipi.h) \
    $(wildcard include/config/irq/domain/hierarchy.h) \
    $(wildcard include/config/generic/irq/migration.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
    $(wildcard include/config/generic/irq/legacy/alloc/hwirq.h) \
    $(wildcard include/config/generic/irq/legacy.h) \
    $(wildcard include/config/generic/irq/multi/handler.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/errno.h \
  arch/riscv/include/generated/asm/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/errno-base.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bitmap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/gfp.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/wait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/wait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/nodemask.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/notifier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/osq_lock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/err.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rwsem-spinlock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/tree/srcu.h) \
    $(wildcard include/config/srcu.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcutiny.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ktime.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timekeeping.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timekeeping32.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcu_segcblist.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/srcutiny.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/swait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  arch/riscv/include/generated/asm/percpu.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/percpu.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/virtualization.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  arch/riscv/include/generated/asm/topology.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/topology.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqhandler.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqreturn.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqnr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/irqnr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/io.h \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/pci.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/io.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vmalloc.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rbtree.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kmemleak.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kasan.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/irq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/irq.h \
  arch/riscv/include/generated/asm/irq_regs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/irq_regs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/generic/irq/debugfs.h) \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/handle/domain/irq.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sysfs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/idr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kobject_ns.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stat.h \
  arch/riscv/include/generated/asm/stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/highuid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kref.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  arch/riscv/include/generated/asm/hw_irq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/hw_irq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kmod.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/umh.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sysctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/elf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/elf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/elf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/elf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/elf-em.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rbtree_latch.h \
  arch/riscv/include/generated/asm/module.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kallsyms.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/irq/timings.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/hardirq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/static_key.h \
  arch/riscv/include/generated/asm/hardirq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/hardirq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irq_cpustat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timerqueue.h \
  arch/riscv/include/generated/asm/sections.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/sections.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/irq/internals.h \
    $(wildcard include/config/generic/irq/chip.h) \
    $(wildcard include/config/irq/domain.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kernel_stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched.h \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/security.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sched.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rculist.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sem.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sem.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ipc.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rhashtable.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jhash.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/unaligned/packed_struct.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list_nulls.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/ipc.h \
  arch/riscv/include/generated/asm/ipcbuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/ipcbuf.h \
  arch/riscv/include/generated/asm/sembuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/sembuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/shm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/shm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/hugetlb_encode.h \
  arch/riscv/include/generated/asm/shmbuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/shmbuf.h \
  arch/riscv/include/generated/asm/shmparam.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/shmparam.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kcov.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/kcov.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/seccomp.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/resource.h \
  arch/riscv/include/generated/asm/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/latencytop.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/prio.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/signal.h \
  arch/riscv/include/generated/asm/signal.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/signal.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/signal.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/signal-defs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/sigcontext.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/siginfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/siginfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm_types_task.h \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pm_runtime.h \
    $(wildcard include/config/pm.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ioport.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/klist.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pinctrl/devinfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/completion.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ratelimit.h \
  arch/riscv/include/generated/asm/device.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/device.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pm_wakeup.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/clock.h \
    $(wildcard include/config/have/unstable/sched/clock.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/irq/debug.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/irq/settings.h \

kernel/irq/spurious.o: $(deps_kernel/irq/spurious.o)

$(deps_kernel/irq/spurious.o):
