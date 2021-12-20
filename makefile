FLAGS =-Wall -g
CC = gcc

all: stringProg

stringProg: matala3.o function.a
	$(CC) $(FLAGS) -o stringProg matala3.o function.a

function.a: matala3.o
	ar -rcs function.a

matala3.o: matala3.c function.h
	$(CC) $(FLAGS) -c matala3.c 

function.o: function.c function.h
	$(CC) $(FLAGS) -c function.c

.PHONY: clean
clean:
	rm -f *.o *.a *.so stringProg

