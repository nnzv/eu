include conf.mk

all: elf64 $(LD)

elf64: 
	@cd asm && \
		nasm -f $@ $(SRC)

$(LD):
	@cd asm && $@ $(OBJ) \
		-o ../${SRC:.s=}

clean:
	@find -name *.o -delete -o \
		  -type f -executable -delete

.PHONY: all clean
