cmd_fs/notify/inotify/built-in.o :=  rm -f fs/notify/inotify/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD fs/notify/inotify/built-in.o fs/notify/inotify/inotify_fsnotify.o fs/notify/inotify/inotify_user.o ; scripts/mod/modpost fs/notify/inotify/built-in.o
