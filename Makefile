# Compiler and Compile options.
CC = g++
CXXFLAGS = -g -Wall -std=c++11
TARGET = bin/program

# Macros specifying path for compile.
SRCS := $(wildcard source/*.cpp)
HDRS := $(wildcard source/*.hpp)
OBJS := $(patsubst source/%.cpp,bin/%.o,$(SRCS))

INC = ./include/
LIB = ./lib/ -lpthread

# Pre-Processor.
CPPFLAGS += -I$(INC)

# link it all together
$(TARGET): $(OBJS) $(HDRS) makefile
	@mkdir -p bin
	$(CC) $(CXXFLAGS) $(CPPFLAGS) $(OBJS) -o $(TARGET)

# compile an object based on source and headers
bin/%.o: source/%.cpp $(HDRS) makefile
	@mkdir -p bin
	$(CC) $(CXXFLAGS) $(CPPFLAGS) -c $< -o $@



# Delete binary & object files.
clean:
	$(RM) $(TARGET) $(OBJS)
