# rvlinux_IM 使用说明



## 1. 常用目录介绍



`linux:` `linux kernel 4.15` 代码

`riscv-rootfs_IM:` `linux` 文件系统

`resources_IM/cpu_test:`一些移植好的测试工具

`resources_IM/revreat_rootfs.sh:` 执行该脚本可重新生成 `linux` 文件系统到 `riscv-rootfs_IM`

`riscv-pk/bbl:` `bootloader` 代码

`riscv-pk/machine:` `bootloader` 之前的硬件初始化和设置代码（跳转到该工程的第一块代码）



`Makefile:` `make` 编译脚本

`flash-sd-all:` 烧写 `bbl.bin` 到 `sd` 卡所使用的脚本程序

`sd-flash-no-dependent:` 可移动的烧写脚本程序（在其它主机上使用时，拷贝该脚本和 `bbl.bin` 即可）

`work:` 编译生成的 `bbl.bin` 会保存在该目录



## 2. 编译 & 烧写

**编译命令：** `make Image_IMv3`

**清理命令：** `make clean`

`[注]: 编译成功后会在 work 目录下生成 bbl.bin`



**烧写步骤：**



**(1). 使用 `ls/dev/sd*` 查看当前所有的磁盘分区；**

```shell
# e.g.

$ ls /dev/sd*
/dev/sda	/dev/sda1	/dev/sda2	/dev/sdb	/dev/sdb1
```

**(2). 插入 `SD` 卡到主机；**

**(3). 使用 `ls/dev/sd*` 查看新增的磁盘分区；**

```shell
# e.g.

$ ls /dev/sd*
/dev/sda	/dev/sda1	/dev/sda2	/dev/sdb	/dev/sdb1	/dev/sdc	/dev/sdd
```

`[注]：插入的 SD 卡可能存在两个分区，一般使用最后一个分区即可。`


**(4). 使用 `flash-sd-all` 烧写 `SD` 卡；**(执行该脚本，后跟新增的 `SD` 分区即可)

`[注]：(4) 和 (5) 任选一个执行即可。`


```shell
# e.g.

$ ./flash-sd-all sdd
# 烧写成功后会显示烧写速度、大小和耗时
```
**(5). 使用 `sd-flash-no-dependent` 烧写 `SD` 卡；**（执行该脚本，后跟烧写文件路径，和新增的 `SD` 分区即可）

`[注]：(4) 和 (5) 任选一个执行即可。`
```shell
# e.g.

$ ./sd-flash-no-dependent ./bbl.bin sdd
# 烧写成功后会显示烧写速度、大小和耗时
```

