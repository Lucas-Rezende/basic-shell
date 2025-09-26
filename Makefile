CC = gcc
CFLAGS = -Wall -Wextra -Werror
TARGET = sh
SRC = sh.c

default: build run

build:
	$(CC) $(SRC) -o $(TARGET)

run: build
	./grade.sh

clean:
	rm -f $(TARGET)

unit:
	@echo "--- Running Unit Tests ---"
	@for test_script in unit_tests/*.sh; do \
		echo "Executing $$test_script..."; \
		/bin/bash $$test_script || exit 1; \
	done
	@echo "--- All tests passed successfully! ---"	