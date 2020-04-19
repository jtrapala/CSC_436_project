CXX=g++
FLAGS=-std=c++11 -Wall -Wextra

%: %.cpp
	$(CXX) $(FLAGS) $^ && ./a.out

find_ck: find_ck.cpp 
	$(CXX) $(FLAGS) $^ && ./a.out A B C D E F


.PHONY: clean

clean:
	find . -name "*out" -delete