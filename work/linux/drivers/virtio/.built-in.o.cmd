cmd_drivers/virtio/built-in.o :=  rm -f drivers/virtio/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD drivers/virtio/built-in.o drivers/virtio/virtio.o drivers/virtio/virtio_ring.o drivers/virtio/virtio_mmio.o ; scripts/mod/modpost drivers/virtio/built-in.o
