CC := gcc
CFLAGS := -c -Wall
INCLUDES := -I
LIBS := -L/usr/X11R6/lib

BIN := ./bin
SRC := ./src
OBJ := ./obj

all: pre build chmod

pre:
	mkdir -p $(BIN)
	mkdir -p $(OBJ)

build: lstree

lstree: lstree.o
	$(CC) $(OBJ)/lstree.o -o $(BIN)/lstree

lstree.o: $(SRC)/lstree.c
	$(CC) -c $(SRC)/lstree.c -o $(OBJ)/lstree.o

chmod:
	chmod +x $(BIN)/*

clean:
	rm -rf $(BIN)/*
	rm -rf $(OBJ)/*
