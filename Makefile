CC=gcc
CFLAGS=-c -Wall

all: hello

main.o: main.c
	$(CC) $(CFLAGS) main.c

sum.o: sum.c
	$(CC) $(CFLAGS) sum.c

new_script.o: new_script.c
	$(CC) $(CFLAGS) new_script.c

hello: main.o sum.o new_script.o
	$(CC) main.o sum.o new_script.o -o hello

clean:
	rm -rf *.o hello
