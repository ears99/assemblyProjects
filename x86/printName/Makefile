ASMFLAGS= -f elf
LFLAGS= -m elf_i386 -s -o

all: printName.asm
	nasm $(ASMFLAGS) printName.asm -o printname.o
	ld $(LFLAGS) printname printname.o

.PHONY: clean

clean: printName.o printName
	rm *.o
	rm printName
