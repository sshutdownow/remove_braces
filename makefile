#CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=solution.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=solution

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CXX) $(CFLAGS) $< -o $@

#test: all
