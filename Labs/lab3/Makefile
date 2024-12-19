# Variables
CXX = g++
CXXFLAGS = -Wall -Wextra -pedantic -std=c++2a -g -O3
OBJECTS = tee.o
PROGRAMS = tee

# a good question to ask is what are CXX and CXXFLAGS?

# Targets and Dependencies - implement each of these below
all: $(PROGRAMS)

#tee: 
$(PROGRAMS): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $^

#tee.o:
$(OBJECTS): tee.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f $(OBJECTS) $(PROGRAMS)