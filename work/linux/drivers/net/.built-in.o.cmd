cmd_drivers/net/built-in.o :=  rm -f drivers/net/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD drivers/net/built-in.o drivers/net/phy/built-in.o ; scripts/mod/modpost drivers/net/built-in.o
