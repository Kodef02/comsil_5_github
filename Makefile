CC = gcc
CFLAGS = -c -o
TARGET = animal.exe
OBJS = dog.o blackcow.o turtle.o main.o

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $(OBJS)
dog.o:dog.c
	$(CC) $(CFLAGS) dog.o dog.c
blackcow.o: blackcow.c
	$(CC) $(CFLAGS) blackcow.o blackcow.c
turtle.o: turtle.c
	$(CC) $(CFLAGS) turtle.o turtle.c
main.o: main.c
	$(CC) $(CFLAGS) main.o main.c
.PHONY: clean
clean:
	rm -f *.o
	rm -f $(TARGET)
