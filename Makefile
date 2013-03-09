SRCS=
CC=gcc
CFLAGS=-c -Wall
DIRS=-I. 
LIBS=-lstdc++
OBJS=$(SRCS:.cpp=.o)
AXUS=.*.un~ .*.swp
TESTER=tester
EXE=main

 
$(EXE): $(OBJS) main.cpp
	$(CC) -o $@ $^ $(LIBS)

$(TESTER): $(OBJS) wl/Tester.cpp
	$(CC) -o $@ $^ $(LIBS) $(DIRS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $(@:.o=.cpp)  $(DIRS)

clean:
	rm -f *.gch
	rm -f $(EXE) $(OBJS) $(TESTER)
	
pack:
	make clean
	rm -f $(AXUS)
	tar -cf ../$(EXE).tar .


run: $(EXE)
	./$(EXE)

test: $(TESTER)
	./$(TESTER)


depend: depend.d

depend.d: $(SRCS) main.cpp wl/Tester.cpp	
	rm -f ./depend.d
	$(CC) -MM $^ $(DIRS) >> $@

include depend.d



