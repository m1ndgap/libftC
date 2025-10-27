# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/09/30 18:43:23 by tchumbas          #+#    #+#              #
#    Updated: 2025/10/27 20:50:39 by tchumbas         ###   ########.fr        #
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
	ft_strncmp.c \
	ft_isalnum.c \
	ft_isascii.c \
	

OBJS = $(SRCS:.c=.o)

all: $(NAME)

%.o : %.c
	$(CC) $(CFLAGS)
	ls -la

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)




# memset
# bzero
# memcpy
# memmove
# strchr
# strrchr
# memchr
# memcmp
# strnstr
# atoi


# >>> strlcpy
# >>> strlen
# >>> strlcat
# >>> strncmp
# >>> isalpha
# >>> isdigit
# >>> isprint
# >>> isalnum
# >>> isascii
# >>> toupper
# >>> tolower

clean: 
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re: fclean all
	nm $(NAME)