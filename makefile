# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dgrigor2 <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/27 15:28:27 by dgrigor2          #+#    #+#              #
#    Updated: 2025/02/04 16:28:26 by dgrigor2         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC  = cc
CFLAGS = -Wall -Wextra -Werror
DEPS = libft.h
NAME = libft.a
SRCS = ft_isalnum.c ft_isascii.c ft_isprint.c ft_memmove.c ft_strlcpy.c ft_bzero.c ft_isalpha.c ft_isdigit.c ft_memcpy.c ft_memset.c ft_strlen.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
OBJS = $(SRCS:.c=.o)
LIBA = ar -rc
BONS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
BONO = $(BONS:.c=.o)

all: $(NAME)

$(NAME) : $(OBJS)
	@$(LIBA) $(NAME) $(OBJS)

bonus: $(OBJS) $(BONO)
	$(LIBA) $(NAME) $^

%.o : %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f *.o 

fclean: clean
	@rm -f  $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
