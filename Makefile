NAME=libasm.a

AS=nasm
ASFLAGS=-f elf64

OBJ=\
	ft_strlen.o \
	ft_strcpy.o \
	ft_strcmp.o \
	ft_write.o  \
	ft_read.o   \
	ft_strdup.o

.PHONY: all
all: $(NAME)

$(NAME): $(OBJ)
	$(AR) rcs $@ $(OBJ)

.PHONY: clean
clean:
	@$(RM) -v $(OBJ)

.PHONY: fclean
fclean: clean
	@$(RM) -v $(NAME)

.PHONY: re
re: fclean all
