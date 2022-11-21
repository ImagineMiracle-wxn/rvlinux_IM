cmd_fs/debugfs/built-in.o :=  rm -f fs/debugfs/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/debugfs/built-in.o fs/debugfs/debugfs.o ; scripts/mod/modpost fs/debugfs/built-in.o
