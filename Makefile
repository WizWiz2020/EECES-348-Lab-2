CC = gcc
CFLAGS = -Wall -Wextra

program: main.o isEven.o
	$(CC) $(CFLAGS) main.o isEven.o -o program

main.o: main.c isEven.h
	$(CC) $(CFLAGS) -c main.c

isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c

clean:
	rm -f *.o program
