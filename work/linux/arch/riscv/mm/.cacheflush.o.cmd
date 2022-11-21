cmd_arch/riscv/mm/cacheflush.o := riscv64-unknown-linux-gnu-gcc -Wp,-MD,arch/riscv/mm/.cacheflush.o.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/mm -Iarch/riscv/mm -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mabi=lp64 -Wall -march=rv64imac -mno-save-restore -DCONFIG_PAGE_OFFSET=0xffffffe000000000 -mcmodel=medany -mstrict-align -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init    -DKBUILD_BASENAME='"cacheflush"'  -DKBUILD_MODNAME='"cacheflush"' -c -o arch/riscv/mm/cacheflush.o /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/mm/cacheflush.c

source_arch/riscv/mm/cacheflush.o := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/mm/cacheflush.c

deps_arch/riscv/mm/cacheflush.o := \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/pgtable.h \
    $(wildcard include/config/64bit.h) \
    $(wildcard include/config/flatmem.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/highmem.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/typecheck.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/linkage.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler_types.h \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stringify.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/linkage.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
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
  arch/riscv/include/generated/asm/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/const.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bitops.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/bitops.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
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
    $(wildcard include/config/sparsemem/vmemmap.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/wait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/wait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seqlock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/nodemask.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bitmap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/string.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/errno.h \
  arch/riscv/include/generated/asm/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/errno-base.h \
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
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcutiny.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ktime.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/riscv/include/generated/asm/div64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/div64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/time.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time32.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jiffies.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timex.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/timex.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/param.h \
  arch/riscv/include/generated/asm/param.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/param.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/timex.h \
  include/generated/timeconst.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/pgtable-bits.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pgtable-nopud.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pgtable-nop4d.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/tlbflush.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm_types.h \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/hmm.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rbtree.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/completion.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/mmu.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/pgtable-64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pgtable.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/x86/espfix64.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/cacheflush.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/cacheflush.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm.h \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/device/private.h) \
    $(wildcard include/config/device/public.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/have/memblock.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/gfp.h \
    $(wildcard include/config/pm/sleep.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/range.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu-refcount.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bit_spinlock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/shrinker.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/resource.h \
  arch/riscv/include/generated/asm/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/resource.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stackdepot.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/tracepoint-defs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/static_key.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/memremap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ioport.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/huge_mm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/migration.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/wait_bit.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kdev_t.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/kdev_t.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dcache.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rculist.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rculist_bl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list_bl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/path.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stat.h \
  arch/riscv/include/generated/asm/stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/highuid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list_lru.h \
    $(wildcard include/config/slob.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/capability.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/capability.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/semaphore.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/fcntl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/fcntl.h \
  arch/riscv/include/generated/asm/fcntl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/fcntl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/fiemap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/migrate_mode.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu-rwsem.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcuwait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcu_sync.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/delayed_call.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/uuid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/uuid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/errseq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/fs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/limits.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/ioctl.h \
  arch/riscv/include/generated/asm/ioctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/ioctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/ioctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu_counter.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/dqblk_xfs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dqblk_v1.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dqblk_v2.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dqblk_qtree.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/projid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/quota.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/nfs_fs_i.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \

arch/riscv/mm/cacheflush.o: $(deps_arch/riscv/mm/cacheflush.o)

$(deps_arch/riscv/mm/cacheflush.o):
