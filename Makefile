all: main.o syntactical_analyzer.o
	g++ main.o syntactical_analyzer.o -o Compiler

main.o: main.cpp
	g++ -c main.cpp
	
syntactical_analyzer.o: syntactical_analyzer.cpp
	g++ -c syntactical_analyzer.cpp

clear:
	rm -rf *~ *.o
