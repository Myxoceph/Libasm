NAME		= libasm.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror

UNAME_S		:= $(shell uname -s)
NASM_FMT	= elf64

ASM			= nasm
ASMFLAGS	= -f $(NASM_FMT)

SRC_ASM		= get_first_char.s get_second_char.s is_empty_string.s
OBJ_ASM		= $(SRC_ASM:.s=.o)

all: $(NAME)

$(NAME): $(OBJ_ASM)
	ar rcs $(NAME) $(OBJ_ASM)

%.o: %.s
	$(ASM) $(ASMFLAGS) $< -o $@

test: $(NAME) main.c
	$(CC) $(CFLAGS) main.c -L. -lasm -o test
	./test

clean:
	rm -f $(OBJ_ASM)

fclean: clean
	rm -f $(NAME) test

re: fclean all

.PHONY: all clean fclean re test
