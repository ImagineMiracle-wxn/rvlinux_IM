deps_initramfs := /home/imaginemiracle/Miracle/risc-v/rvlinux_IM/linux/scripts/gen_initramfs_list.sh \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/bin \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/bin/busybox \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/dev \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/fstab \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/group \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/hostname \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/hosts \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/S01logging \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/S10mdev \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/S20urandom \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/S40network \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/S50dropbear \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/rcK \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/init.d/rcS \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/inittab \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/inittab_NoLogin \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/issue \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/mdev.conf \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/mtab \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/if-down.d \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/if-post-down.d \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/if-pre-up.d \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/if-pre-up.d/wait_iface \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/if-up.d \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/interfaces \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/network/nfs_check \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/nsswitch.conf \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/os-release \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/passwd \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/profile \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/profile.d \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/profile.d/umask.sh \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/protocols \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/services \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/etc/shadow \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/ld-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libatomic.so.1.2.0 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libc-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libcrypt-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libdl-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libgcc_s.so.1 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libm-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libnsl-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libnss_files-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libpthread-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libresolv-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/librt-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/lib/libutil-2.26.so \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/media \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/mnt \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/opt \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/proc \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/bin \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/bin/make \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/include \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/include/gnumake.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/info \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/info/dir \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/info/make.info \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/info/make.info-1 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/info/make.info-2 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/be \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/be/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/be/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/cs \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/cs/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/cs/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/da \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/da/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/da/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/de \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/de/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/de/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/es \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/es/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/es/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/fi \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/fi/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/fi/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/fr \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/fr/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/fr/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ga \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ga/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ga/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/gl \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/gl/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/gl/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/he \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/he/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/he/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/hr \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/hr/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/hr/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/id \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/id/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/id/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/it \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/it/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/it/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ja \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ja/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ja/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ko \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ko/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ko/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/lt \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/lt/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/lt/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/nl \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/nl/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/nl/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/pl \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/pl/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/pl/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/pt_BR \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/pt_BR/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/pt_BR/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ru \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ru/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/ru/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/sv \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/sv/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/sv/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/tr \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/tr/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/tr/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/uk \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/uk/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/uk/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/vi \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/vi/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/vi/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/zh_CN \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/zh_CN/LC_MESSAGES \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/locale/zh_CN/LC_MESSAGES/make.mo \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/man \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/man/man1 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/make_install/share/man/man1/make.1 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/LICENSE.md \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/Makefile \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/README.md \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/barebones \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/barebones/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/barebones/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/barebones/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/barebones/cvt.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/barebones/ee_printf.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/core_list_join.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/core_main.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/core_matrix.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/core_state.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/core_util.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/coremark.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/coremark.rvexe \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/cygwin \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/cygwin/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/cygwin/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/cygwin/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/READM.md \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/balance_O0_joined.png \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/coremark_profile_o0_joined.png \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/PIC32 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/PIC32/core_portme-mak.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/core_list_join-c.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/core_main-c.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/core_matrix-c.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/core_state-c.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/core_util-c.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/coremark-h.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/docs \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/docs/core_state.png \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/linux \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/linux/core_portme-c.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/linux/core_portme-h.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/linux/core_portme-mak.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/readme-txt.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/files/release_notes-txt.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/BuildTargets.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/Configuration.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/Configurations.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/Files.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/Functions.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/General.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/General2.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/Types.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/index/Variables.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/javascript \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/javascript/main.js \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/javascript/searchdata.js \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/BuildTargetsP.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationC.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationH.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationM.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationS.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationT.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationU.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationsH.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationsM.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationsS.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/ConfigurationsT.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FilesC.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FilesR.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsC.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsG.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsI.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsM.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsP.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsS.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/FunctionsT.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralB.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralC.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralD.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralF.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralG.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralH.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralI.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralL.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralM.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralO.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralP.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralR.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralS.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralT.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralU.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralV.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/GeneralW.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/NoResults.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/TypesS.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesC.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesD.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesL.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesO.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesP.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesR.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/search/VariablesS.html \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/styles \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/styles/1.css \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/styles/2.css \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/docs/html/styles/main.css \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/freedom-metal \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/freedom-metal/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/freedom-metal/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/freedom-metal/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux64 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux64/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux64/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/linux64/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/riscv64 \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/riscv64/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/riscv64/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/riscv64/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/run1.log \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/simple \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/simple/core_portme.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/simple/core_portme.h \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/simple/core_portme.mak \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark-th4/start_coremark_4threads.sh \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/riscv64-coremark/coremark.rvexe \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/test \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/test/helloworld \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/test/helloworld.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/test/test \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/root/Miracle/test/test.c \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/run \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/sbin \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/sys \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/tmp \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/usr \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/cache \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/lib \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/lib/misc \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/lock \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/log \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/run \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/spool \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/tmp \
/home/imaginemiracle/Miracle/risc-v/rvlinux_IM/riscv-rootfs_IM/var/www \
