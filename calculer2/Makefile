all:
	nasm -f elf64 calc2.asm -o calc2.o
	ld calc2.o -o calc2

run: all
	./calc2

clean:
	rm -rf calc2 calc2.o