cmd_drivers/base/devtmpfs.o := riscv64-unknown-linux-gnu-gcc -Wp,-MD,drivers/base/.devtmpfs.o.d -nostdinc -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include -I./arch/riscv/include/generated  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include -I./include -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi -I./arch/riscv/include/generated/uapi -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi -I./include/generated/uapi -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h  -I/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/drivers/base -Idrivers/base -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mabi=lp64 -Wall -march=rv64imac -mno-save-restore -DCONFIG_PAGE_OFFSET=0xffffffe000000000 -mcmodel=medany -mstrict-align -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init    -DKBUILD_BASENAME='"devtmpfs"'  -DKBUILD_MODNAME='"devtmpfs"' -c -o drivers/base/devtmpfs.o /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/drivers/base/devtmpfs.c

source_drivers/base/devtmpfs.o := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/drivers/base/devtmpfs.c

deps_drivers/base/devtmpfs.o := \
    $(wildcard include/config/devtmpfs/mount.h) \
    $(wildcard include/config/tmpfs.h) \
    $(wildcard include/config/block.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/stddef.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/stddef.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
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
  arch/riscv/include/generated/asm/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/posix_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/barrier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/barrier.h \
    $(wildcard include/config/smp.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/syscalls.h \
    $(wildcard include/config/ftrace/syscalls.h) \
    $(wildcard include/config/old/sigsuspend.h) \
    $(wildcard include/config/old/sigsuspend3.h) \
    $(wildcard include/config/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
    $(wildcard include/config/clone/backwards.h) \
    $(wildcard include/config/clone/backwards3.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/aio_abi.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/fs.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/migration.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/wait_bit.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/wait.h \
    $(wildcard include/config/lockdep.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/wait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kdev_t.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/kdev_t.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dcache.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rculist.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bitmap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/string.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcutiny.h \
    $(wildcard include/config/srcu.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ktime.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seqlock.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/errno.h \
  arch/riscv/include/generated/asm/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/errno.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/errno-base.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timekeeping32.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rculist_bl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list_bl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bit_spinlock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  include/generated/bounds.h \
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
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/slob.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/nodemask.h \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/numa.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/shrinker.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rbtree.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pid.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm_types.h \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hmm.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/auxvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/completion.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page-flags-layout.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/mmu.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  arch/riscv/include/generated/asm/percpu.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/percpu.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/virtualization.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/notifier.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/tree/srcu.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rcu_segcblist.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/srcutiny.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/swait.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  arch/riscv/include/generated/asm/topology.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/topology.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/dqblk_xfs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dqblk_v1.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dqblk_v2.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dqblk_qtree.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/projid.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/quota.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/nfs_fs_i.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/signal.h \
    $(wildcard include/config/proc/fs.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/signal_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/signal.h \
  arch/riscv/include/generated/asm/signal.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/signal.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/signal.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/signal-defs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/sigcontext.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/siginfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/siginfo.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sem.h \
    $(wildcard include/config/sysvipc.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sem.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ipc.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/rhashtable.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jhash.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/unaligned/packed_struct.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/list_nulls.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/ipc.h \
  arch/riscv/include/generated/asm/ipcbuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/ipcbuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  arch/riscv/include/generated/asm/sembuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/sembuf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/unistd.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/unistd.h \
  arch/riscv/include/generated/uapi/asm/unistd.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/unistd.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/unistd.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi/asm/syscalls.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/key.h \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/sysctl.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sysctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sysctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/trace/syscall.h \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/have/syscall/tracepoints.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/tracepoint.h \
    $(wildcard include/config/tracepoint.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/tracepoint-defs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/static_key.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/trace_events.h \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/bpf/events.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ring_buffer.h \
    $(wildcard include/config/ring/buffer/allow/swap.h) \
    $(wildcard include/config/ring/buffer.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mm.h \
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
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/have/memblock.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/range.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/percpu-refcount.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/memremap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ioport.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/pgtable.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/pgtable-bits.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pgtable-nopud.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pgtable-nop4d.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/tlbflush.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/pgtable-64.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/pgtable.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/x86/espfix64.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/huge_mm.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seq_file.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
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
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/livepatch.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/sched.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/timerqueue.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/seccomp.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/latencytop.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/prio.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/user.h \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/net.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/poll.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/uaccess.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kasan-checks.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/uaccess.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/poll.h \
  arch/riscv/include/generated/asm/poll.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/poll.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/trace_seq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/seq_buf.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/hardirq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  arch/riscv/include/generated/asm/hardirq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/hardirq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irq_cpustat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irq.h \
    $(wildcard include/config/generic/irq/effective/aff/mask.h) \
    $(wildcard include/config/generic/irq/ipi.h) \
    $(wildcard include/config/irq/domain/hierarchy.h) \
    $(wildcard include/config/generic/irq/migration.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
    $(wildcard include/config/generic/irq/legacy/alloc/hwirq.h) \
    $(wildcard include/config/generic/irq/legacy.h) \
    $(wildcard include/config/generic/irq/multi/handler.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqhandler.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqreturn.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irqnr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/irqnr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/io.h \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
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
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kobject_ns.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kref.h \
  arch/riscv/include/generated/asm/hw_irq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/hw_irq.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/perf_event.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cpu/sup/intel.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/perf_event.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/bpf_perf_event.h \
  arch/riscv/include/generated/uapi/asm/bpf_perf_event.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/asm-generic/bpf_perf_event.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ptrace.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/signal.h \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/jobctl.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/task.h \
    $(wildcard include/config/have/copy/thread/tls.h) \
    $(wildcard include/config/have/exit/thread.h) \
    $(wildcard include/config/arch/wants/dynamic/task/struct.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pid_namespace.h \
    $(wildcard include/config/pid/ns.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/nsproxy.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ns_common.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/ptrace.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ftrace.h \
    $(wildcard include/config/dynamic/ftrace.h) \
    $(wildcard include/config/dynamic/ftrace/with/regs.h) \
    $(wildcard include/config/stack/tracer.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/preemptirq/events.h) \
    $(wildcard include/config/function/profiler.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/trace_clock.h \
  arch/riscv/include/generated/asm/trace_clock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/trace_clock.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kallsyms.h \
    $(wildcard include/config/kallsyms.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/ftrace.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cpu.h \
    $(wildcard include/config/pm/sleep/smp.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/node.h \
    $(wildcard include/config/memory/hotplug/sparse.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/klist.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ratelimit.h \
  arch/riscv/include/generated/asm/device.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/device.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pm_wakeup.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cpuhotplug.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/irq_work.h \
    $(wildcard include/config/irq/work.h) \
  arch/riscv/include/generated/asm/irq_work.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/irq_work.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/jump_label_ratelimit.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/perf_regs.h \
    $(wildcard include/config/have/perf/regs.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/sched/task_stack.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/magic.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cgroup.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/sock/cgroup/data.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/data.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/cgroupstats.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/taskstats.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/user_namespace.h \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/persistent/keyrings.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kernel_stat.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/irq/timings.h) \
  arch/riscv/include/generated/asm/sections.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/sections.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/cgroup-defs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/u64_stats_sync.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bpf-cgroup.h \
    $(wildcard include/config/cgroup/bpf.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/bpf.h \
    $(wildcard include/config/efficient/unaligned/access.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/bpf_common.h \
  arch/riscv/include/generated/asm/local.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/local.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mount.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/genhd.h \
    $(wildcard include/config/fail/make/request.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
    $(wildcard include/config/solaris/x86/partition.h) \
    $(wildcard include/config/bsd/disklabel.h) \
    $(wildcard include/config/unixware/disklabel.h) \
    $(wildcard include/config/minix/subpartition.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/major.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/namei.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/shmem_fs.h \
    $(wildcard include/config/transparent/huge/pagecache.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/file.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/swap.h \
    $(wildcard include/config/frontswap.h) \
    $(wildcard include/config/memcg/swap.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/memcontrol.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/page_counter.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/vmpressure.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/eventfd.h \
    $(wildcard include/config/eventfd.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/writeback.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/flex_proportions.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/backing-dev-defs.h \
    $(wildcard include/config/debug/fs.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/throttling/low.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/bvec.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/mempolicy.h \
    $(wildcard include/config/arch/enable/hugepage/migration.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/dax.h \
    $(wildcard include/config/dax.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/pagemap.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/highmem.h \
    $(wildcard include/config/x86/32.h) \
    $(wildcard include/config/debug/highmem.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/asm/cacheflush.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/cacheflush.h \
  arch/riscv/include/generated/asm/kmap_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/asm-generic/kmap_types.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/hugetlb_inline.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/mempolicy.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/xattr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/xattr.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi/linux/libc-compat.h \
    $(wildcard include/config/data.h) \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/ramfs.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kthread.h \
  /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/drivers/base/base.h \
    $(wildcard include/config/sys/hypervisor.h) \

drivers/base/devtmpfs.o: $(deps_drivers/base/devtmpfs.o)

$(deps_drivers/base/devtmpfs.o):