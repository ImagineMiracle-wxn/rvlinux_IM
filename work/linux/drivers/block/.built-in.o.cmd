cmd_drivers/block/built-in.o :=  rm -f drivers/block/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD drivers/block/built-in.o drivers/block/virtio_blk.o ; scripts/mod/modpost drivers/block/built-in.o
