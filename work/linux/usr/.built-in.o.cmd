cmd_usr/built-in.o :=  rm -f usr/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD usr/built-in.o usr/initramfs_data.o ; scripts/mod/modpost usr/built-in.o
