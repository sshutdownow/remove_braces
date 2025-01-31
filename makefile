#CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=solution.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=solution

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CXX) $(CFLAGS) $< -o $@

#test: all
