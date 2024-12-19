# CFLAGS = -Wall -Wextra -fsanitize=address
CFLAGS += -g
.PHONY: all clean

all: sort

clean:
	rm -f sort

sort.o: sort.c
	$(CC) $(CFLAGS) -c $< -o $@

sort: sort.o
	$(CC) $(CFLAGS) $^ -o $@
