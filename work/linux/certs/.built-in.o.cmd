cmd_certs/built-in.o :=  rm -f certs/built-in.o; riscv64-unknown-linux-gnu-ar rcSTPD certs/built-in.o certs/system_keyring.o certs/system_certificates.o ; scripts/mod/modpost certs/built-in.o
