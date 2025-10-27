# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/09/30 18:43:23 by tchumbas          #+#    #+#              #
#    Updated: 2025/10/27 19:11:27 by tchumbas         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc 

CFLAGS = -Wall -Wextra -Werror -I. -c $< -o $@

SRCS = ft_strlcpy.c \
	ft_strlen.c \

OBJS = $(SRCS:.c=.o)

all: $(NAME)

%.o : %.c
	$(CC) $(CFLAGS)
	ls -la

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

# isalpha
# isdigit
# isalnum
# isascii
# isprint

# memset
# bzero
# memcpy
# memmove
# strlcat
# toupper
# tolower
# strchr
# strrchr
# strncmp
# memchr
# memcmp
# strnstr
# atoi

# strlcpy
# strlen

clean: 
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re: fclean all