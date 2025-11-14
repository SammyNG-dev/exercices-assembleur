all:
	nasm -f elf64 -o hello.o hello.asm
	ld -o hello hello.o

run: all
	./hello

clean:
	rm -rf hello hello.o
