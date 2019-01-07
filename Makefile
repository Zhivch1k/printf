######################################################
#                                                    #
#         Makefile is created by anyvchyk            #
#                for printf project                  #
#                                                    #
######################################################

##########            Varaibles             ##########
#                                                    #
SRC		=   work_with_unicode.c ft_printf.c \
            useful_functions.c work_with_format.c \
            manage_char.c manage_string.c \
            manage_pointer.c manage_decimal.c \
            manage_unsigned.c

OBJ		= $(SRC:.c=.o)

NAME	= libftprintf.a
#                                                     #
#######################################################

##########               Rules               ##########
#                                                     #
all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)

$(OBJ): $(SRC)
	@gcc -Wall -Wextra -Werror -c $(SRC)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all
#                                                     #
#######################################################