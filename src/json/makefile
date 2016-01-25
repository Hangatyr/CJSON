CC		:= g++
CFLAGS	:= -g -std=c++11 -O3 -pedantic -fPIC 
LFLAGS	:= -static-libgcc -static-libstdc++ -static

SRC_DIR	:= src
BUILD_DIR	:= build
BIN_DIR	:= ../../bin
EXPORT_INC:=../../inc

RM		:= rm -rf

INCLUDES:= -I. -Iinc
LIBS	:=

SOURCES	:= $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS	:= $(SOURCES:$(SRC_DIR)/%.cpp=$(BUILD_DIR)/%.o)
TARGET	:= $(BIN_DIR)/cjson.so

all: $(TARGET)

$(TARGET): $(OBJECTS)
	mkdir -p $(BIN_DIR)
	mkdir -p $(EXPORT_INC)
	@echo "  Linking..."
	$(LINK.cc) -shared $^ -o $@
	cp inc/* $(EXPORT_INC)/.
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
