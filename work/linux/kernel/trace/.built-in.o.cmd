cmd_kernel/trace/built-in.o :=  rm -f kernel/trace/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD kernel/trace/built-in.o kernel/trace/trace_clock.o ; scripts/mod/modpost kernel/trace/built-in.o
