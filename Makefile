# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: carden <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/19 16:29:26 by carden            #+#    #+#              #
#    Updated: 2019/09/20 19:08:44 by carden           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_toupper.c ft_tolower.c ft_strtrim.c ft_strsub.c ft_strstr.c\
		ft_strsplit.c ft_strrchr.c ft_strnstr.c ft_strnew.c ft_strnequ.c\
		ft_strncpy.c ft_strncmp.c ft_strncat.c ft_strmapi.c ft_strmap.c\
		ft_strlen.c ft_strlcat.c ft_strjoin.c ft_striteri.c ft_striter.c\
		ft_strequ.c ft_strdup.c ft_strdel.c ft_strcpy.c ft_strcmp.c\
		ft_strclr.c ft_strchr.c ft_strcat.c ft_putstr_fd.c ft_putstr.c\
		ft_putnbr_fd.c ft_putnbr.c ft_putendl_fd.c ft_putendl.c\
		ft_putchar_fd.c ft_putchar.c ft_memset.c ft_memmove.c ft_memdel.c\
		ft_memcpy.c ft_memcmp.c ft_memchr.c ft_memccpy.c ft_memalloc.c\
		ft_itoa.c ft_isprint.c ft_isdigit.c ft_isascii.c ft_isalpha.c\
		ft_isalnum.c ft_bzero.c ft_atoi.c

OBJ = $(SRC:.c=.o)

HEADER = includes/libft.h

FLAGS = -Wall -Wextra -Werror

$(NAME):
	gcc $(FLAGS) -c $(SRC) -I $(HEADER)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

all: $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
