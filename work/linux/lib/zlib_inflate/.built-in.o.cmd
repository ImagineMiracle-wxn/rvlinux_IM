cmd_lib/zlib_inflate/built-in.o :=  rm -f lib/zlib_inflate/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD lib/zlib_inflate/built-in.o lib/zlib_inflate/zlib_inflate.o ; scripts/mod/modpost lib/zlib_inflate/built-in.o