OPER_OBJS = $(patsubst %.cpp, %.o, $(wildcard operation/*.cpp))
OPER_OBJS += $(patsubst %.cpp, %.o, $(wildcard operation1/*.cpp))
OPER_OBJS += $(patsubst %.cpp, %.o, $(wildcard operation2/*.cpp))
CFLAGS = -Ioperation/include -Ioperation1/include -Ioperation2/include -L.

all: operation.a
	g++ main.cpp -o test $(CFLAGS) -loperation
operation.a: $(OPER_OBJS)
	ar rcs liboperation.a $(OPER_OBJS)
%.o: operation/%.cpp
	g++ -c $< -o $@
%.o: operation1/%.cpp
	g++ -c $< -o $@
%.o: operation2/%.cpp
	g++ -c $< -o $@ $(CFLAGS) -I ./operation2/include
clean:
	rm -f operation/*.o
	rm -f operation1/*.o
	rm -f operation2/*.o
	rm -f *.a
	rm -f test
