cmd_virt/built-in.o :=  rm -f virt/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD virt/built-in.o virt/lib/built-in.o ; scripts/mod/modpost virt/built-in.o
