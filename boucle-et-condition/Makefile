all:
	nasm -f elf64 boucle-et-condition.asm -o boucle-et-condition.o
	ld boucle-et-condition.o -o boucle-et-condition

run: all
	./boucle-et-condition

clean:
	rm -rf boucle-et-condition boucle-et-condition.o