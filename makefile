#CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=solution.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=solution

.PHONY: all clean distclean check test test1 test2 test3

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CXX) $(CFLAGS) $< -o $@

test1:
	./$(EXECUTABLE) < test1.txt > output1.txt
	diff -u correct1.txt output1.tx

test2:
	$(EXECUTABLE) < test2.txt > output2.txt
	./diff -u correct2.txt output2.tx

test3:
	$(EXECUTABLE) < test3.txt > output3.txt
	./diff -u correct3.txt output3.tx

test: all test1 test2 test3
