all:
	nasm -f elf64 calc.asm -o calc.o
	ld calc.o -o calc

run: all
	./calc

clean:
	rm -rf calc.o calc