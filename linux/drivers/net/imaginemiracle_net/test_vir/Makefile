obj-m := test_vir.o
KERNEL_PATH := /home/imaginemiracle/Disk_D/Linux_Workspace/riscv-project/freedom-u-sdk/linux
PWD := $(shell pwd)
all:
		make -C $(KERNEL_PATH) M=$(PWD) modules
clean:
		make -C $(KERNEL_PATH) M=$(PWD) clean

