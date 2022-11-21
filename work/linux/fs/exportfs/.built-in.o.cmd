cmd_fs/exportfs/built-in.o :=  rm -f fs/exportfs/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/exportfs/built-in.o fs/exportfs/exportfs.o ; scripts/mod/modpost fs/exportfs/built-in.o
