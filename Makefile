CXX = g++
CXXFLAGS = -I./include -Wall -Wextra -std=c++17
LIB = libcalculator.a

SRC = src/main.cpp src/calculator.cpp
OBJ = $(SRC:.cpp=.o)

all: $(LIB) main

$(LIB): src/calculator.o
	ar rcs $@ $^

main: src/main.o $(LIB)
	$(CXX) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(LIB) main

.PHONY: all clean

