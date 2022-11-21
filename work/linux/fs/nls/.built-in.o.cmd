cmd_fs/nls/built-in.o :=  rm -f fs/nls/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/nls/built-in.o fs/nls/nls_base.o ; scripts/mod/modpost fs/nls/built-in.o
