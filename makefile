#CC=g++
CFLAGS=-c -Wall
#CXXFLAGS=-w -Wall
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
	./$(EXECUTABLE) < test1.txt > output1.txt && \
	diff -wu correct1.txt output1.txt

test2:
	./$(EXECUTABLE) < test2.txt > output2.txt && \
	diff -wu correct2.txt output2.txt

test3:
	./$(EXECUTABLE) < test3.txt > output3.txt && \
	diff -wu correct3.txt output3.txt

test: all test1 test2 test3
