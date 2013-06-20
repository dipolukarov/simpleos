CC=gcc
LD=ld

CFLAGS=-ansi -pedantic -Wall -Wextra -march=armv6 -msoft-float -fPIC -mapcs-frame -marm -ffreestanding
LDFLAGS=-N -Ttext=0x10000

kernel.elf: bootstrap.o kernel.o context_switch.o syscall.o

.PHONY: clean

clean:
	$(RM) *.elf *.o

.SUFFIXES: .s .o .elf

.s.o:
	$(CC) $(CFLAGS) -o $@ -c $^

.o.elf:
	$(LD) $(LDFLAGS) -o $@ $^
