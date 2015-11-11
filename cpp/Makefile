all: main

OBJECTS=main.o board.o

main: $(OBJECTS)
	g++ -o $@ $(OBJECTS)

clean:
	rm -f *.o main board *.cpp~ *.h~ *.out Makefile~

debug: $(OBJECTS)
	g++ -g main.cpp board.cpp
