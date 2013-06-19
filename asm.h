void activate(void);
unsigned int first_stack[256];
unsigned int *first_stack_start = first_stack + 256 - 16;
first_stack_start[0] = 0x10;
first_stack_start[1] = (unsigned int)&first;
