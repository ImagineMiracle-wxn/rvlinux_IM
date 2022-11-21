cmd_fs/devpts/built-in.o :=  rm -f fs/devpts/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/devpts/built-in.o fs/devpts/devpts.o ; scripts/mod/modpost fs/devpts/built-in.o
