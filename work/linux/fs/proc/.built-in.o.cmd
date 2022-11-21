cmd_fs/proc/built-in.o :=  rm -f fs/proc/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/proc/built-in.o fs/proc/proc.o ; scripts/mod/modpost fs/proc/built-in.o
