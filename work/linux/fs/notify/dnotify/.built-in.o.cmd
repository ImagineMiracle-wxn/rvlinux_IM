cmd_fs/notify/dnotify/built-in.o :=  rm -f fs/notify/dnotify/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/notify/dnotify/built-in.o fs/notify/dnotify/dnotify.o ; scripts/mod/modpost fs/notify/dnotify/built-in.o
