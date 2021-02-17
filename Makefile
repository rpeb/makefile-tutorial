CC=clang
CFLAGS=-I -g -Wall
OBJ=hello.o bye.o

all: main

# bye.o: bye.c
# 	$(CC) $(CFLAGS) -c $^ -o $@

# hello.o: hello.c
# 	$(CC) $(CFLAGS) -c $^ -o $@

#same as above
# $< is first item in dependency list
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

main: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	$(RM) *.o main