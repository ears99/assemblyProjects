#Makefile for hello.asm 

ASMFLAGS= -f elf
LFLAGS= -m elf_i386 -s -o

hello.o: hello.asm
	nasm $(ASMFLAGS) hello.asm -o hello.o

hello: hello.o
	ld $(LFLAGS) hello hello.o

.PHONY: clean
clean: hello.o hello
	rm hello.o
	rm hello
