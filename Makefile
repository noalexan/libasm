AS=nasm
ASFLAGS=-f elf64

NAME=libasm.a

SRC=$(addprefix src/, ft_strlen.s)
OBJ=$(SRC:.s=.o)

.PHONY: all
all: $(NAME)

$(NAME): $(OBJ)
	$(AR) rcs $@ $^

.PHONY: clean
clean:
	$(RM) $(OBJ)

.PHONY: fclean
fclean: clean
	$(RM) $(NAME)

.PHONY: re
re: fclean all
