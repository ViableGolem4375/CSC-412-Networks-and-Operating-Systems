# Variables
CXX = g++
CXXFLAGS = -Wall -Wextra -pedantic -std=c++20 -g -O3
CXXFLAGS_ALT = -Wall -Wextra -pedantic -std=c++2a -g -O3
OBJECTS = head.o pwd.o tail.o tee.o wc.o 412shell.o
PROGRAMS = head pwd tail tee wc 412shell

# Targets and Dependencies

all: $(PROGRAMS)

head: head.o
	$(CXX) $(CXXFLAGS) -o $@ $^

pwd: pwd.o
	$(CXX) $(CXXFLAGS) -o $@ $^

tail: tail.o
	$(CXX) $(CXXFLAGS) -o $@ $^

tee: tee.o
	$(CXX) $(CXXFLAGS) -o $@ $^

wc: wc.o
	$(CXX) $(CXXFLAGS) -o $@ $^

412shell: 412shell.o
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(PROGRAMS)