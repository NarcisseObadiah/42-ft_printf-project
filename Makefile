# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mobadiah <mobadiah@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/18 04:44:16 by mobadiah          #+#    #+#              #
#    Updated: 2023/04/26 11:38:48 by mobadiah         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME	=	libftprintf.a
LIBFT_DIR = ./libft
LIBFT = $(LIBFT_DIR)/libft.a
OBJS = $(SRC:.c=.o)
CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs
SRC	= ft_printf.c ft_printf_utils.c ft_print_unsigned.c ft_print_ptr.c ft_print_hex_nbr.c \
		libft/ft_itoa.c libft/ft_putchar_fd.c libft/ft_strdup.c 

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

$(LIBFT):
	make -C $(LIBFT_DIR)
	cp $(LIBFT) $(NAME)


clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)		

re:	fclean all

.PHONY:	all clean fclean re

