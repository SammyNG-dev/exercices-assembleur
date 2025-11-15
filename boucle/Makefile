all:
	nasm -f elf64 loop.asm -o loop.o
	ld loop.o -o loop

run: all
	./loop

clean:
	rm -rf loop loop.o