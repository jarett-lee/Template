CC = gcc

OPTIONS = -Werror -Wall -std=c99

FILE =
LIB =


all: compile

compile: $(FILE).c
	$(CC) $(OPTIONS) -o $(FILE) $(FILE).c

run: $(FILE)
	./$(FILE)

test:
	@make debug --no-print-directory
	@make run --no-print-directory

clean:
	rm -f *.o

debug: $(FILE).c
	@make OPTIONS="$(OPTIONS) -g" --no-print-directory

