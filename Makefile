LD=ld
LDFLAGS=-N -Ttext=0x10000
.SUFFIXES: .o .elf
.o.elf:
	$(LD) $(LDFLAGS) -o $@ $^
CC=gcc
CFLAGS=-ansi -pedantic -Wall -Wextra -march=armv6 -msoft-float -fPIC -mapcs-frame
