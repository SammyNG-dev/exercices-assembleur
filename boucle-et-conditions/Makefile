all:
	nasm -f elf64 boucle-et-conditions.asm -o boucle-et-conditions.o
	ld boucle-et-conditions.o -o boucle-et-conditions

run: all
	./boucle-et-conditions

clean:
	rm -rf boucle-et-conditions.o boucle-et-conditions