cmd_lib/mpi/built-in.o :=  rm -f lib/mpi/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD lib/mpi/built-in.o lib/mpi/mpi.o ; scripts/mod/modpost lib/mpi/built-in.o
