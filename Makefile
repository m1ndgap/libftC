# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/09/30 18:43:23 by tchumbas          #+#    #+#              #
#    Updated: 2025/11/03 00:42:11 by tchumbas         ###   ########.fr        #
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
	ft_strchr.c \
	ft_strrchr.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_bzero.c \
	ft_strdup.c \
	ft_memset.c \
	ft_memmove.c \
	ft_memcpy.c \
	ft_memcmp.c \
	ft_memchr.c \
	ft_calloc.c \
	

OBJS = $(SRCS:.c=.o)

all: $(NAME)

%.o : %.c
	$(CC) $(CFLAGS)
	ls -la

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)










# ft_substr
# ft_strjoin
# ft_strtrim
# ft_split
# ft_itoa
# ft_strmapi
# ft_striteri
# ft_putchar_fd
# ft_putstr_fd
# ft_putendl_fd
# ft_putnbr_fd

# ======================
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
# >>> strchr
# >>> strrchr
# >>> strnstr
# >>> atoi
# >>> bzero
# >>> strdup
# >>> memset
# >>> memmove
# >>> memcpy
# >>> memcmp
# >>> memchr
# >>> calloc 

clean: 
	rm -rf *.o

fclean: clean
	rm -rf $(NAME)

re: fclean all
	nm $(NAME)