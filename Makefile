SRCS= #don't add .hpp 
CC=gcc
CFLAGS=-c -Wall
DIRS=-I. 
LIBS=-lstdc++
OBJS=$(SRCS:.cpp=.o)
AXUS=.*.un~ .*.swp *.cpp~ .*.*.un~
TESTER=tester
EXE=main

 
$(EXE): $(OBJS) main.o
	$(CC) -o $@ $^ $(LIBS)


$(TESTER): $(OBJS) Tester.o
	$(CC) -o $@ $^ $(LIBS) $(DIRS)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $(@:.o=.cpp)  $(DIRS)

clean:
	rm -rf *.gch depend.d
	rm -rf $(EXE) $(OBJS) $(TESTER)
	
pack:
	make clean
	rm -rf $(AXUS)
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

#----- error-prone ---
main.o: main.cpp
	$(CC) $(CFLAGS) -o $@ main.cpp  $(DIRS)

Tester.o: wl/Tester.cpp
	$(CC) $(CFLAGS) -o $@ wl/Tester.cpp  $(DIRS)




