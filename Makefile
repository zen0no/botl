BUILD_DIR = build
SRC_DIR = src
CFLAGS = -Wall -Wextra -pedantic -std=c99



all: $(BUILD_DIR)/botl.o
	$(CC) -o $(BUILD_DIR)/botl $^

build:
	mkdir -p $(BUILD_DIR)


$(BUILD_DIR)/botl.o: $(SRC_DIR)/botl.c build
	$(CC) -c  $(CFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR)
 

