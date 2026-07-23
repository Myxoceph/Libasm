NAME		= libasm.a
CC			= cc
CFLAGS		= -Wall -Wextra -Werror

UNAME_S		:= $(shell uname -s)
NASM_FMT	= elf64

ASM			= nasm
ASMFLAGS	= -f $(NASM_FMT)

SRC_ASM		= get_first_char.s get_second_char.s is_empty_string.s \
			  ft_strlen.s copy_one_char.s ft_strcpy.s diff_first_char.s \
			  ft_strcmp.s basic_ft_write.s ft_write.s basic_ft_read.s \
			   ft_read.s my_alloc.s ft_strdup.s

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
