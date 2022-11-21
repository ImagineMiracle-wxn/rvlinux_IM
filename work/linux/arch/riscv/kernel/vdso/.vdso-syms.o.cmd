cmd_arch/riscv/kernel/vdso/vdso-syms.o := riscv64-unknown-linux-gnu-ld -melf64lriscv  -r -R arch/riscv/kernel/vdso/vdso-dummy.o -o arch/riscv/kernel/vdso/vdso-syms.o
