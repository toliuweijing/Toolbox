EXE=
SRCS=
#----------- No Touch on the following --------- 
CC=gcc
CFLAGS=-c -Wall -std=c++11
DIRS=
LIBS=-lstdc++
OBJS=$(SRCS:.cpp=.o)
AXUS=.*.un~ .*.swp

 
$(EXE): $(OBJS) 
	$(CC) -o $@ $^ $(LIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $(@:.o=.cpp)  $(DIRS)

clean:
	rm -f *.gch
	rm -f $(EXE) $(OBJS)
	
pack:
	make clean
	rm -f $(AXUS)
	tar -cf ../$(EXE).tar .


run: $(EXE)
	./$(EXE)


depend: depend.d

depend.d: $(SRCS)		
	rm -f ./depend.d
	$(CC) -MM $^ $(DIRS) >> $@

include depend.d

