FLAGS =-Wall -g
CC = gcc

all: stringProg

stringProg: main.o function.a
	$(CC) $(FLAGS) -o stringProg main.o function.a

function.a: main.o
	ar -rcs function.a

main.o: main.c function.h
	$(CC) $(FLAGS) -c main.c 

function.o: function.c function.h
	$(CC) $(FLAGS) -c function.c

.PHONY: clean
clean:
	rm -f *.o *.a *.so stringProg

