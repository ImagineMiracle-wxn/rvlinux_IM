	.file	"asm-offsets.c"
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
# -D CC_HAVE_ASM_GOTO -D KBUILD_BASENAME="asm_offsets"
# -D KBUILD_MODNAME="asm_offsets"
# -isystem /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/toolchain/bin/../lib/gcc/riscv64-unknown-linux-gnu/7.2.0/include
# -include /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/include/linux/kconfig.h
# -MD arch/riscv/kernel/.asm-offsets.s.d
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c
# -mabi=lp64 -march=rv64imac -mno-save-restore -mcmodel=medany
# -mstrict-align -auxbase-strip arch/riscv/kernel/asm-offsets.s -O2 -Wundef
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
	.globl	asm_offsets
	.type	asm_offsets, @function
asm_offsets:
	addi	sp,sp,-16	#,,
	sd	s0,8(sp)	#,
	addi	s0,sp,16	#,,
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:24: 	OFFSET(TASK_THREAD_RA, task_struct, thread.ra);
#APP
# 24 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_RA 1464 offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:25: 	OFFSET(TASK_THREAD_SP, task_struct, thread.sp);
# 25 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_SP 1472 offsetof(struct task_struct, thread.sp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:26: 	OFFSET(TASK_THREAD_S0, task_struct, thread.s[0]);
# 26 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S0 1480 offsetof(struct task_struct, thread.s[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:27: 	OFFSET(TASK_THREAD_S1, task_struct, thread.s[1]);
# 27 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S1 1488 offsetof(struct task_struct, thread.s[1])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:28: 	OFFSET(TASK_THREAD_S2, task_struct, thread.s[2]);
# 28 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S2 1496 offsetof(struct task_struct, thread.s[2])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:29: 	OFFSET(TASK_THREAD_S3, task_struct, thread.s[3]);
# 29 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S3 1504 offsetof(struct task_struct, thread.s[3])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:30: 	OFFSET(TASK_THREAD_S4, task_struct, thread.s[4]);
# 30 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S4 1512 offsetof(struct task_struct, thread.s[4])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:31: 	OFFSET(TASK_THREAD_S5, task_struct, thread.s[5]);
# 31 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S5 1520 offsetof(struct task_struct, thread.s[5])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:32: 	OFFSET(TASK_THREAD_S6, task_struct, thread.s[6]);
# 32 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S6 1528 offsetof(struct task_struct, thread.s[6])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:33: 	OFFSET(TASK_THREAD_S7, task_struct, thread.s[7]);
# 33 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S7 1536 offsetof(struct task_struct, thread.s[7])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:34: 	OFFSET(TASK_THREAD_S8, task_struct, thread.s[8]);
# 34 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S8 1544 offsetof(struct task_struct, thread.s[8])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:35: 	OFFSET(TASK_THREAD_S9, task_struct, thread.s[9]);
# 35 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S9 1552 offsetof(struct task_struct, thread.s[9])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:36: 	OFFSET(TASK_THREAD_S10, task_struct, thread.s[10]);
# 36 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S10 1560 offsetof(struct task_struct, thread.s[10])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:37: 	OFFSET(TASK_THREAD_S11, task_struct, thread.s[11]);
# 37 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S11 1568 offsetof(struct task_struct, thread.s[11])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:38: 	OFFSET(TASK_THREAD_SP, task_struct, thread.sp);
# 38 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_SP 1472 offsetof(struct task_struct, thread.sp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:39: 	OFFSET(TASK_STACK, task_struct, stack);
# 39 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_STACK 56 offsetof(struct task_struct, stack)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:40: 	OFFSET(TASK_TI, task_struct, thread_info);
# 40 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_TI 0 offsetof(struct task_struct, thread_info)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:41: 	OFFSET(TASK_TI_FLAGS, task_struct, thread_info.flags);
# 41 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_TI_FLAGS 0 offsetof(struct task_struct, thread_info.flags)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:42: 	OFFSET(TASK_TI_KERNEL_SP, task_struct, thread_info.kernel_sp);
# 42 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_TI_KERNEL_SP 24 offsetof(struct task_struct, thread_info.kernel_sp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:43: 	OFFSET(TASK_TI_USER_SP, task_struct, thread_info.user_sp);
# 43 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_TI_USER_SP 32 offsetof(struct task_struct, thread_info.user_sp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:44: 	OFFSET(TASK_TI_CPU, task_struct, thread_info.cpu);
# 44 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_TI_CPU 40 offsetof(struct task_struct, thread_info.cpu)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:46: 	OFFSET(TASK_THREAD_F0,  task_struct, thread.fstate.f[0]);
# 46 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F0 1576 offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:47: 	OFFSET(TASK_THREAD_F1,  task_struct, thread.fstate.f[1]);
# 47 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F1 1584 offsetof(struct task_struct, thread.fstate.f[1])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:48: 	OFFSET(TASK_THREAD_F2,  task_struct, thread.fstate.f[2]);
# 48 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F2 1592 offsetof(struct task_struct, thread.fstate.f[2])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:49: 	OFFSET(TASK_THREAD_F3,  task_struct, thread.fstate.f[3]);
# 49 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F3 1600 offsetof(struct task_struct, thread.fstate.f[3])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:50: 	OFFSET(TASK_THREAD_F4,  task_struct, thread.fstate.f[4]);
# 50 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F4 1608 offsetof(struct task_struct, thread.fstate.f[4])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:51: 	OFFSET(TASK_THREAD_F5,  task_struct, thread.fstate.f[5]);
# 51 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F5 1616 offsetof(struct task_struct, thread.fstate.f[5])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:52: 	OFFSET(TASK_THREAD_F6,  task_struct, thread.fstate.f[6]);
# 52 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F6 1624 offsetof(struct task_struct, thread.fstate.f[6])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:53: 	OFFSET(TASK_THREAD_F7,  task_struct, thread.fstate.f[7]);
# 53 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F7 1632 offsetof(struct task_struct, thread.fstate.f[7])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:54: 	OFFSET(TASK_THREAD_F8,  task_struct, thread.fstate.f[8]);
# 54 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F8 1640 offsetof(struct task_struct, thread.fstate.f[8])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:55: 	OFFSET(TASK_THREAD_F9,  task_struct, thread.fstate.f[9]);
# 55 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F9 1648 offsetof(struct task_struct, thread.fstate.f[9])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:56: 	OFFSET(TASK_THREAD_F10, task_struct, thread.fstate.f[10]);
# 56 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F10 1656 offsetof(struct task_struct, thread.fstate.f[10])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:57: 	OFFSET(TASK_THREAD_F11, task_struct, thread.fstate.f[11]);
# 57 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F11 1664 offsetof(struct task_struct, thread.fstate.f[11])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:58: 	OFFSET(TASK_THREAD_F12, task_struct, thread.fstate.f[12]);
# 58 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F12 1672 offsetof(struct task_struct, thread.fstate.f[12])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:59: 	OFFSET(TASK_THREAD_F13, task_struct, thread.fstate.f[13]);
# 59 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F13 1680 offsetof(struct task_struct, thread.fstate.f[13])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:60: 	OFFSET(TASK_THREAD_F14, task_struct, thread.fstate.f[14]);
# 60 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F14 1688 offsetof(struct task_struct, thread.fstate.f[14])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:61: 	OFFSET(TASK_THREAD_F15, task_struct, thread.fstate.f[15]);
# 61 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F15 1696 offsetof(struct task_struct, thread.fstate.f[15])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:62: 	OFFSET(TASK_THREAD_F16, task_struct, thread.fstate.f[16]);
# 62 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F16 1704 offsetof(struct task_struct, thread.fstate.f[16])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:63: 	OFFSET(TASK_THREAD_F17, task_struct, thread.fstate.f[17]);
# 63 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F17 1712 offsetof(struct task_struct, thread.fstate.f[17])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:64: 	OFFSET(TASK_THREAD_F18, task_struct, thread.fstate.f[18]);
# 64 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F18 1720 offsetof(struct task_struct, thread.fstate.f[18])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:65: 	OFFSET(TASK_THREAD_F19, task_struct, thread.fstate.f[19]);
# 65 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F19 1728 offsetof(struct task_struct, thread.fstate.f[19])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:66: 	OFFSET(TASK_THREAD_F20, task_struct, thread.fstate.f[20]);
# 66 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F20 1736 offsetof(struct task_struct, thread.fstate.f[20])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:67: 	OFFSET(TASK_THREAD_F21, task_struct, thread.fstate.f[21]);
# 67 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F21 1744 offsetof(struct task_struct, thread.fstate.f[21])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:68: 	OFFSET(TASK_THREAD_F22, task_struct, thread.fstate.f[22]);
# 68 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F22 1752 offsetof(struct task_struct, thread.fstate.f[22])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:69: 	OFFSET(TASK_THREAD_F23, task_struct, thread.fstate.f[23]);
# 69 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F23 1760 offsetof(struct task_struct, thread.fstate.f[23])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:70: 	OFFSET(TASK_THREAD_F24, task_struct, thread.fstate.f[24]);
# 70 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F24 1768 offsetof(struct task_struct, thread.fstate.f[24])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:71: 	OFFSET(TASK_THREAD_F25, task_struct, thread.fstate.f[25]);
# 71 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F25 1776 offsetof(struct task_struct, thread.fstate.f[25])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:72: 	OFFSET(TASK_THREAD_F26, task_struct, thread.fstate.f[26]);
# 72 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F26 1784 offsetof(struct task_struct, thread.fstate.f[26])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:73: 	OFFSET(TASK_THREAD_F27, task_struct, thread.fstate.f[27]);
# 73 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F27 1792 offsetof(struct task_struct, thread.fstate.f[27])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:74: 	OFFSET(TASK_THREAD_F28, task_struct, thread.fstate.f[28]);
# 74 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F28 1800 offsetof(struct task_struct, thread.fstate.f[28])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:75: 	OFFSET(TASK_THREAD_F29, task_struct, thread.fstate.f[29]);
# 75 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F29 1808 offsetof(struct task_struct, thread.fstate.f[29])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:76: 	OFFSET(TASK_THREAD_F30, task_struct, thread.fstate.f[30]);
# 76 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F30 1816 offsetof(struct task_struct, thread.fstate.f[30])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:77: 	OFFSET(TASK_THREAD_F31, task_struct, thread.fstate.f[31]);
# 77 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F31 1824 offsetof(struct task_struct, thread.fstate.f[31])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:78: 	OFFSET(TASK_THREAD_FCSR, task_struct, thread.fstate.fcsr);
# 78 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_FCSR 1832 offsetof(struct task_struct, thread.fstate.fcsr)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:80: 	DEFINE(PT_SIZE, sizeof(struct pt_regs));
# 80 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SIZE 288 sizeof(struct pt_regs)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:81: 	OFFSET(PT_SEPC, pt_regs, sepc);
# 81 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SEPC 0 offsetof(struct pt_regs, sepc)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:82: 	OFFSET(PT_RA, pt_regs, ra);
# 82 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_RA 8 offsetof(struct pt_regs, ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:83: 	OFFSET(PT_FP, pt_regs, s0);
# 83 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_FP 64 offsetof(struct pt_regs, s0)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:84: 	OFFSET(PT_S0, pt_regs, s0);
# 84 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S0 64 offsetof(struct pt_regs, s0)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:85: 	OFFSET(PT_S1, pt_regs, s1);
# 85 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S1 72 offsetof(struct pt_regs, s1)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:86: 	OFFSET(PT_S2, pt_regs, s2);
# 86 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S2 144 offsetof(struct pt_regs, s2)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:87: 	OFFSET(PT_S3, pt_regs, s3);
# 87 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S3 152 offsetof(struct pt_regs, s3)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:88: 	OFFSET(PT_S4, pt_regs, s4);
# 88 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S4 160 offsetof(struct pt_regs, s4)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:89: 	OFFSET(PT_S5, pt_regs, s5);
# 89 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S5 168 offsetof(struct pt_regs, s5)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:90: 	OFFSET(PT_S6, pt_regs, s6);
# 90 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S6 176 offsetof(struct pt_regs, s6)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:91: 	OFFSET(PT_S7, pt_regs, s7);
# 91 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S7 184 offsetof(struct pt_regs, s7)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:92: 	OFFSET(PT_S8, pt_regs, s8);
# 92 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S8 192 offsetof(struct pt_regs, s8)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:93: 	OFFSET(PT_S9, pt_regs, s9);
# 93 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S9 200 offsetof(struct pt_regs, s9)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:94: 	OFFSET(PT_S10, pt_regs, s10);
# 94 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S10 208 offsetof(struct pt_regs, s10)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:95: 	OFFSET(PT_S11, pt_regs, s11);
# 95 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_S11 216 offsetof(struct pt_regs, s11)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:96: 	OFFSET(PT_SP, pt_regs, sp);
# 96 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SP 16 offsetof(struct pt_regs, sp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:97: 	OFFSET(PT_TP, pt_regs, tp);
# 97 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_TP 32 offsetof(struct pt_regs, tp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:98: 	OFFSET(PT_A0, pt_regs, a0);
# 98 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A0 80 offsetof(struct pt_regs, a0)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:99: 	OFFSET(PT_A1, pt_regs, a1);
# 99 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A1 88 offsetof(struct pt_regs, a1)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:100: 	OFFSET(PT_A2, pt_regs, a2);
# 100 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A2 96 offsetof(struct pt_regs, a2)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:101: 	OFFSET(PT_A3, pt_regs, a3);
# 101 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A3 104 offsetof(struct pt_regs, a3)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:102: 	OFFSET(PT_A4, pt_regs, a4);
# 102 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A4 112 offsetof(struct pt_regs, a4)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:103: 	OFFSET(PT_A5, pt_regs, a5);
# 103 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A5 120 offsetof(struct pt_regs, a5)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:104: 	OFFSET(PT_A6, pt_regs, a6);
# 104 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A6 128 offsetof(struct pt_regs, a6)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:105: 	OFFSET(PT_A7, pt_regs, a7);
# 105 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_A7 136 offsetof(struct pt_regs, a7)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:106: 	OFFSET(PT_T0, pt_regs, t0);
# 106 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T0 40 offsetof(struct pt_regs, t0)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:107: 	OFFSET(PT_T1, pt_regs, t1);
# 107 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T1 48 offsetof(struct pt_regs, t1)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:108: 	OFFSET(PT_T2, pt_regs, t2);
# 108 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T2 56 offsetof(struct pt_regs, t2)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:109: 	OFFSET(PT_T3, pt_regs, t3);
# 109 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T3 224 offsetof(struct pt_regs, t3)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:110: 	OFFSET(PT_T4, pt_regs, t4);
# 110 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T4 232 offsetof(struct pt_regs, t4)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:111: 	OFFSET(PT_T5, pt_regs, t5);
# 111 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T5 240 offsetof(struct pt_regs, t5)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:112: 	OFFSET(PT_T6, pt_regs, t6);
# 112 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_T6 248 offsetof(struct pt_regs, t6)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:113: 	OFFSET(PT_GP, pt_regs, gp);
# 113 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_GP 24 offsetof(struct pt_regs, gp)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:114: 	OFFSET(PT_ORIG_A0, pt_regs, orig_a0);
# 114 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_ORIG_A0 280 offsetof(struct pt_regs, orig_a0)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:115: 	OFFSET(PT_SSTATUS, pt_regs, sstatus);
# 115 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SSTATUS 256 offsetof(struct pt_regs, sstatus)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:116: 	OFFSET(PT_SBADADDR, pt_regs, sbadaddr);
# 116 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SBADADDR 264 offsetof(struct pt_regs, sbadaddr)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:117: 	OFFSET(PT_SCAUSE, pt_regs, scause);
# 117 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SCAUSE 272 offsetof(struct pt_regs, scause)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:124: 	DEFINE(TASK_THREAD_RA_RA,
# 124 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_RA_RA 0 offsetof(struct task_struct, thread.ra) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:128: 	DEFINE(TASK_THREAD_SP_RA,
# 128 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_SP_RA 8 offsetof(struct task_struct, thread.sp) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:132: 	DEFINE(TASK_THREAD_S0_RA,
# 132 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S0_RA 16 offsetof(struct task_struct, thread.s[0]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:136: 	DEFINE(TASK_THREAD_S1_RA,
# 136 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S1_RA 24 offsetof(struct task_struct, thread.s[1]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:140: 	DEFINE(TASK_THREAD_S2_RA,
# 140 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S2_RA 32 offsetof(struct task_struct, thread.s[2]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:144: 	DEFINE(TASK_THREAD_S3_RA,
# 144 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S3_RA 40 offsetof(struct task_struct, thread.s[3]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:148: 	DEFINE(TASK_THREAD_S4_RA,
# 148 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S4_RA 48 offsetof(struct task_struct, thread.s[4]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:152: 	DEFINE(TASK_THREAD_S5_RA,
# 152 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S5_RA 56 offsetof(struct task_struct, thread.s[5]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:156: 	DEFINE(TASK_THREAD_S6_RA,
# 156 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S6_RA 64 offsetof(struct task_struct, thread.s[6]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:160: 	DEFINE(TASK_THREAD_S7_RA,
# 160 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S7_RA 72 offsetof(struct task_struct, thread.s[7]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:164: 	DEFINE(TASK_THREAD_S8_RA,
# 164 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S8_RA 80 offsetof(struct task_struct, thread.s[8]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:168: 	DEFINE(TASK_THREAD_S9_RA,
# 168 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S9_RA 88 offsetof(struct task_struct, thread.s[9]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:172: 	DEFINE(TASK_THREAD_S10_RA,
# 172 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S10_RA 96 offsetof(struct task_struct, thread.s[10]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:176: 	DEFINE(TASK_THREAD_S11_RA,
# 176 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_S11_RA 104 offsetof(struct task_struct, thread.s[11]) - offsetof(struct task_struct, thread.ra)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:181: 	DEFINE(TASK_THREAD_F0_F0,
# 181 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F0_F0 0 offsetof(struct task_struct, thread.fstate.f[0]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:185: 	DEFINE(TASK_THREAD_F1_F0,
# 185 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F1_F0 8 offsetof(struct task_struct, thread.fstate.f[1]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:189: 	DEFINE(TASK_THREAD_F2_F0,
# 189 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F2_F0 16 offsetof(struct task_struct, thread.fstate.f[2]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:193: 	DEFINE(TASK_THREAD_F3_F0,
# 193 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F3_F0 24 offsetof(struct task_struct, thread.fstate.f[3]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:197: 	DEFINE(TASK_THREAD_F4_F0,
# 197 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F4_F0 32 offsetof(struct task_struct, thread.fstate.f[4]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:201: 	DEFINE(TASK_THREAD_F5_F0,
# 201 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F5_F0 40 offsetof(struct task_struct, thread.fstate.f[5]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:205: 	DEFINE(TASK_THREAD_F6_F0,
# 205 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F6_F0 48 offsetof(struct task_struct, thread.fstate.f[6]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:209: 	DEFINE(TASK_THREAD_F7_F0,
# 209 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F7_F0 56 offsetof(struct task_struct, thread.fstate.f[7]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:213: 	DEFINE(TASK_THREAD_F8_F0,
# 213 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F8_F0 64 offsetof(struct task_struct, thread.fstate.f[8]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:217: 	DEFINE(TASK_THREAD_F9_F0,
# 217 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F9_F0 72 offsetof(struct task_struct, thread.fstate.f[9]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:221: 	DEFINE(TASK_THREAD_F10_F0,
# 221 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F10_F0 80 offsetof(struct task_struct, thread.fstate.f[10]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:225: 	DEFINE(TASK_THREAD_F11_F0,
# 225 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F11_F0 88 offsetof(struct task_struct, thread.fstate.f[11]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:229: 	DEFINE(TASK_THREAD_F12_F0,
# 229 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F12_F0 96 offsetof(struct task_struct, thread.fstate.f[12]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:233: 	DEFINE(TASK_THREAD_F13_F0,
# 233 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F13_F0 104 offsetof(struct task_struct, thread.fstate.f[13]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:237: 	DEFINE(TASK_THREAD_F14_F0,
# 237 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F14_F0 112 offsetof(struct task_struct, thread.fstate.f[14]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:241: 	DEFINE(TASK_THREAD_F15_F0,
# 241 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F15_F0 120 offsetof(struct task_struct, thread.fstate.f[15]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:245: 	DEFINE(TASK_THREAD_F16_F0,
# 245 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F16_F0 128 offsetof(struct task_struct, thread.fstate.f[16]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:249: 	DEFINE(TASK_THREAD_F17_F0,
# 249 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F17_F0 136 offsetof(struct task_struct, thread.fstate.f[17]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:253: 	DEFINE(TASK_THREAD_F18_F0,
# 253 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F18_F0 144 offsetof(struct task_struct, thread.fstate.f[18]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:257: 	DEFINE(TASK_THREAD_F19_F0,
# 257 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F19_F0 152 offsetof(struct task_struct, thread.fstate.f[19]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:261: 	DEFINE(TASK_THREAD_F20_F0,
# 261 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F20_F0 160 offsetof(struct task_struct, thread.fstate.f[20]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:265: 	DEFINE(TASK_THREAD_F21_F0,
# 265 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F21_F0 168 offsetof(struct task_struct, thread.fstate.f[21]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:269: 	DEFINE(TASK_THREAD_F22_F0,
# 269 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F22_F0 176 offsetof(struct task_struct, thread.fstate.f[22]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:273: 	DEFINE(TASK_THREAD_F23_F0,
# 273 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F23_F0 184 offsetof(struct task_struct, thread.fstate.f[23]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:277: 	DEFINE(TASK_THREAD_F24_F0,
# 277 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F24_F0 192 offsetof(struct task_struct, thread.fstate.f[24]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:281: 	DEFINE(TASK_THREAD_F25_F0,
# 281 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F25_F0 200 offsetof(struct task_struct, thread.fstate.f[25]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:285: 	DEFINE(TASK_THREAD_F26_F0,
# 285 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F26_F0 208 offsetof(struct task_struct, thread.fstate.f[26]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:289: 	DEFINE(TASK_THREAD_F27_F0,
# 289 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F27_F0 216 offsetof(struct task_struct, thread.fstate.f[27]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:293: 	DEFINE(TASK_THREAD_F28_F0,
# 293 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F28_F0 224 offsetof(struct task_struct, thread.fstate.f[28]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:297: 	DEFINE(TASK_THREAD_F29_F0,
# 297 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F29_F0 232 offsetof(struct task_struct, thread.fstate.f[29]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:301: 	DEFINE(TASK_THREAD_F30_F0,
# 301 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F30_F0 240 offsetof(struct task_struct, thread.fstate.f[30]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:305: 	DEFINE(TASK_THREAD_F31_F0,
# 305 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_F31_F0 248 offsetof(struct task_struct, thread.fstate.f[31]) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:309: 	DEFINE(TASK_THREAD_FCSR_F0,
# 309 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->TASK_THREAD_FCSR_F0 256 offsetof(struct task_struct, thread.fstate.fcsr) - offsetof(struct task_struct, thread.fstate.f[0])"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:315: 	DEFINE(ASM_THREAD_SIZE, THREAD_SIZE);
# 315 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->ASM_THREAD_SIZE 8192 THREAD_SIZE"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:321: 	DEFINE(PT_SIZE_ON_STACK, ALIGN(sizeof(struct pt_regs), STACK_ALIGN));
# 321 "/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c" 1
	
.ascii "->PT_SIZE_ON_STACK 288 ALIGN(sizeof(struct pt_regs), STACK_ALIGN)"	#
# 0 "" 2
# /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/arch/riscv/kernel/asm-offsets.c:322: }
#NO_APP
	ld	s0,8(sp)	#,
	addi	sp,sp,16	#,,
	jr	ra	#
	.size	asm_offsets, .-asm_offsets
	.ident	"GCC: (GNU) 7.2.0"
