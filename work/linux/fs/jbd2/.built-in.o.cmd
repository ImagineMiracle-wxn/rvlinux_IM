cmd_fs/jbd2/built-in.o :=  rm -f fs/jbd2/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/jbd2/built-in.o fs/jbd2/jbd2.o ; scripts/mod/modpost fs/jbd2/built-in.o
