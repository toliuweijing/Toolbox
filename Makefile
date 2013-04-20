#--------- Makefile template --------
# fill out the blanks at the first few lines and it will be ready to make. Especially make can be run multithreading by typing make -j 4
EXE 	= #parser
CPPS 	= #Identifier.cpp KeyWord.cpp Lexer.cpp Number.cpp Parser.cpp String.cpp Token.cpp RefactorSymbolTable.cpp EquivalentManager.cpp Type.cpp SymbolTable.cpp Semantics.cpp
TESTCPPS=
CC 	= #g++
CFLAGS 	= #-c -g
DIRS 	= #-I. -I/opt/local/include/
LIBS 	= 
BUILD 	= #bin
SPECS 	= #parse.tab.o lex.yy.o
#CPPS   +=$(TESTCPPS) # comment out to run tests
#--------- No Touch on the lines below ----
OBJS 	=$(CPPS:%.cpp=$(BUILD)/%.o) # objects
DEPS 	=$(CPPS:%.cpp=$(BUILD)/%.d) # dependencies
OBJS   +=$(SPECS:%=$(BUILD)/%)


$(BUILD)/$(EXE): $(DEPS) $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS)


$(BUILD)/%.d: %.cpp
	$(CC) -MM $^ $(DIRS) > $@

$(BUILD)/%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $^ $(DIRS)

clean:
	rm -f $(DEPS) $(BUILD)/$(EXE) $(OBJS)

run: $(BUILD)/$(EXE)
	./$(BUILD)/$(EXE) sample_test/test1.pas
	

-include $(DEPS)

#-------- SPECS ----------
#$(BUILD)/a.o: a.c
#$(BUILD)/parse.tab.o: parse.y
	#bison -d parse.y
	#$(CC) $(CFLAGS) -o $@ parse.tab.c $(DIRS)

#$(BUILD)/lex.yy.o: lex.yy.l
	#flex lex.yy.l
	#$(CC) $(CFLAGS) -o $@ lex.yy.c $(DIRS)

