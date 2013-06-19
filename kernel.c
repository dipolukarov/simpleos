/**
 *
 */
#include "versatilepb.h"
#include "asm.h"

void bwputs(char *s)
{
	while (*s) {
		while (*(UART0 + UARTFR) & UARTFR_TXFF);
		*UART0 = *s;
		s++;
	}
}

int main(void)
{
	bwputs("Hello, World!\n");

	return 0;
}

void first(void)
{
	bwputs("In user mode\n");
	while(1);
}
