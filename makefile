CC		:= g++
CFLAGS	:= -g -std=c++11 -O3 -pedantic -fPIC 
LFLAGS	:= -static-libgcc -static-libstdc++ -static

SRC_DIR	:= src
BUILD_DIR	:= build
BIN_DIR	:= bin

RM		:= rm -rf

INCLUDES:= -I. -Iinc
LIBS	:=

SOURCES	:= $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS	:= $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)
TARGET	:= $(BIN_DIR)/lib.so

all: $(TARGET)

$(TARGET): $(OBJECTS)
	mkdir -p $(BIN_DIR)
	@echo "  Linking..."
	$(LINK.cc) -shared $^ -o $@
# $(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS) $(LFLAGS) $(LIBS)


$(OBJECTS): $(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	@echo "  Cleaning..."
	$(RM) $(OBJECTS) $(TARGET)
	$(RM) $(BIN_DIR)
	$(RM) $(BUILD_DIR)

.PHONY: all clean
