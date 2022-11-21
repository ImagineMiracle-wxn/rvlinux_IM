RISCV_GNU ?= $(CURDIR)/../toolchain
PATH := $(RISCV_GNU)/bin:$(PATH)
ISA ?= rv64imafdc
ABI ?= lp64d

srcdir := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))/..
srcdir := $(srcdir:/=)
confdir := $(srcdir)/conf
wrkdir := $(srcdir)/work

toolchain_srcdir := $(srcdir)/riscv-gnu-toolchain
toolchain_wrkdir := $(wrkdir)/riscv-gnu-toolchain
toolchain_dest := $(CURDIR)/toolchain

linux_srcdir := $(srcdir)/linux
linux_wrkdir := $(wrkdir)/linux
resources_rootfs := $(srcdir)/resources_IM/rootfs.tar.gz
riscv_rootfs := $(wrkdir)/riscv-rootfs_IM

$(riscv_rootfs): $(resources_rootfs)
	mkdir -p $(dir $@)
	sudo tar -zxf $< -C $@
