SrcFiles=$(wildcard *.c)
ObjFiles=$(patsubst %.c,%.o,$(SrcFiles))                                                                                       

example:$(ObjFiles)
	gcc -o example $(ObjFiles) -lpthread -Wall -g 
	
%.o:%.c
	gcc -c $< -o $@

.PHONY:clean all
clean:
	-rm -rf $(ObjFiles) 

