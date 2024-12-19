CFLAGS = -Wall -Wextra -fsanitize=address
CFLAGS += -g
.PHONY: all clean

all: makewords

run:
	./makewords

clean:
	rm -f makewords

makewords: makewords.o
	$(CC) $(CFLAGS) $^ -o $@

makewords.o: makewords.c
	$(CC) $(CFLAGS) -c $< -o $@