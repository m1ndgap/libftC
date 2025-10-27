# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/09/30 18:43:23 by tchumbas          #+#    #+#              #
#    Updated: 2025/10/27 19:53:37 by tchumbas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc 

CFLAGS = -Wall -Wextra -Werror -I. -c $< -o $@

SRCS = ft_strlcpy.c \
	ft_strlen.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strlcat.c \
	

OBJS = $(SRCS:.c=.o)

all: $(NAME)

%.o : %.c
	$(CC) $(CFLAGS)
	ls -la

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)


# isalnum
# isascii
# memset
# bzero
# memcpy
# memmove
# strchr
# strrchr
# strncmp
# memchr
# memcmp
# strnstr
# atoi

# >>> isalpha
# >>> strlcpy
# >>> strlen
# >>> isdigit
# >>> isprint
# >>> toupper
# >>> tolower
# >>> strlcat

clean: 
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re: fclean all
	nm $(NAME)