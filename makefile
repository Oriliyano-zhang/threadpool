src = $(wildcard *.c)
targets = $(patsubst %.c, %, $(src))

CFLAGS = -lpthread -Wall -g 

all:$(targets)

$(targets):%:%.c
	gcc $< -o $@ $(CFLAGS)

.PHONY:clean all
clean:
	-rm -rf $(targets) 

