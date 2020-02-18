CC= g++

SRC_PATH= src
BUILD_PATH= build

SRC_EXT= cpp
BUILD_EXT= o

CXXFLAGS= -Wall
LIB=
LDFLAGS=
DSO=

EXEC= app

SRC= $(wildcard $(SRC_PATH)/*.$(SRC_EXT))
OBJ= $(SRC:$(SRC_PATH)/%.$(SRC_EXT)=$(BUILD_PATH)/%.$(BUILD_EXT))

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o  $@ $(DSO) $^ $(LIB)

$(BUILD_PATH)/%.$(BUILD_EXT): $(SRC_PATH)/%.$(SRC_EXT)
	$(CC) -c $(LDFLAGS) $^ $(CXXFLAGS) -o $@

clean:
	rm $(BUILD_PATH)/*.$(BUILD_EXT)
	rm $(EXEC)