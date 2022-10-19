# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: azari <azari@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/12 10:30:04 by azari             #+#    #+#              #
#    Updated: 2022/10/19 18:32:15 by azari            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# _*_ MakeFile _*_

NAME = libft.a
CC = cc
FLAGS =  -Wall -Werror -Wextra
CFILES = ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_strlen.c ft_isalpha.c ft_isdigit.c ft_isalnum.c \
				ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_strlcpy.c ft_strlcat.c ft_strnstr.c \
				ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_split.c ft_itoa.c ft_putchar_fd.c ft_strtrim.c \
				ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_striteri.c ft_strmapi.c 
BONUSC = ft_lstadd_back.c ft_lstnew.c ft_lstsize.c ft_lstlast.c ft_lstadd_front.c ft_lstdelone.c ft_lstclear.c 
OFILES = ${CFILES:.c=.o}
BONUSO = ${BONUSC:.c=.o}

all : ${NAME}

${NAME} : ${OFILES}
	ar -rcs ${NAME} ${OFILES}
	
bonus :  ${OFILES} ${BONUSO}
	ar -rcs ${NAME} ${BONUSO} ${OFILES}

%.o:%.c libft.h
	${CC} -c ${FLAGS} $<
clean :
	rm -f ${OFILES} ${BONUSO}

fclean : clean
	rm -f ${NAME}

re : fclean all
