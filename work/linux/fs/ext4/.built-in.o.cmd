cmd_fs/ext4/built-in.o :=  rm -f fs/ext4/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/ext4/built-in.o fs/ext4/ext4.o ; scripts/mod/modpost fs/ext4/built-in.o
