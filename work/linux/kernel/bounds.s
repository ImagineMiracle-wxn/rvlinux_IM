	.file	"bounds.c"
	.option nopic
# GNU C89 (GCC) version 7.2.0 (riscv64-unknown-linux-gnu)
#	compiled by GNU C version 7.4.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# warning: GMP header version 6.1.2 differs from library version 6.2.1.
# warning: MPFR header version 4.0.1 differs from library version 4.1.0.
# warning: MPC header version 1.1.0 differs from library version 1.2.1.
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  -nostdinc
# -I /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include
# -I ./arch/riscv/include/generated
# -I /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include
# -I ./include
# -I /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/include/uapi
# -I ./arch/riscv/include/generated/uapi
# -I /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/uapi
# -I ./include/generated/uapi
# -I /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/. -I .
# -iprefix /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/
# -isysroot /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../sysroot
# -D __KERNEL__ -D CONFIG_PAGE_OFFSET=0xffffffe000000000
# -D CC_HAVE_ASM_GOTO -D KBUILD_BASENAME="bounds"
# -D KBUILD_MODNAME="bounds"
# -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include
# -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h
# -MD kernel/.bounds.s.d
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c
# -mabi=lp64 -march=rv64imac -mno-save-restore -mcmodel=medany
# -mstrict-align -auxbase-strip kernel/bounds.s -O2 -Wundef
# -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
# -Wno-format-security -Wall -Wno-frame-address -Wformat-truncation=0
# -Wformat-overflow=0 -Wno-int-in-bool-context -Wframe-larger-than=2048
# -Wno-unused-but-set-variable -Wunused-const-variable=0
# -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
# -Werror=strict-prototypes -Werror=date-time
# -Werror=incompatible-pointer-types -Werror=designated-init -std=gnu90
# -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
# -fno-delete-null-pointer-checks -fno-stack-protector
# -fno-omit-frame-pointer -fno-optimize-sibling-calls
# -fno-var-tracking-assignments -fno-inline-functions-called-once
# -fno-strict-overflow -fstack-check=no -fconserve-stack -fverbose-asm
# --param allow-store-data-races=0
# options enabled:  -faggressive-loop-optimizations -falign-functions
# -falign-jumps -falign-labels -falign-loops -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-small-functions
# -fipa-bit-cp -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
# -fipa-vrp -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fisolate-erroneous-paths-dereference -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse -flra-remat
# -flto-odr-type-merging -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -foptimize-strlen
# -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
# -free -freg-struct-return -freorder-blocks -freorder-functions
# -frerun-cse-after-loop -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fschedule-insns -fschedule-insns2 -fsection-anchors
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-dce -ftree-dominator-opts -ftree-dse
# -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
# -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mdiv -mglibc -mplt -mstrict-align

	.text
	.align	1
	.globl	foo
	.type	foo, @function
foo:
	addi	sp,sp,-16	#,,
	sd	s0,8(sp)	#,
	addi	s0,sp,16	#,,
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c:19: 	DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
#APP
# 19 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c" 1
	
.ascii "->NR_PAGEFLAGS 21 __NR_PAGEFLAGS"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c:20: 	DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);
# 20 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c" 1
	
.ascii "->MAX_NR_ZONES 3 __MAX_NR_ZONES"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c:24: 	DEFINE(SPINLOCK_SIZE, sizeof(spinlock_t));
# 24 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c" 1
	
.ascii "->SPINLOCK_SIZE 0 sizeof(spinlock_t)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/kernel/bounds.c:26: }
#NO_APP
	ld	s0,8(sp)	#,
	addi	sp,sp,16	#,,
	jr	ra	#
	.size	foo, .-foo
	.ident	"GCC: (GNU) 7.2.0"
