# ************************************************************************** #
#                                                                            #
#                                                        :::      ::::::::   #
#   Makefile                                           :+:      :+:    :+:   #
#                                                    +:+ +:+         +:+     #
#   By: pudry <pudry@student.42lausanne.ch>      +#+  +:+       +#+          #
#                                                +#+#+#+#+#+   +#+           #
#   Created: 11/09/2024 09:24:47 by pudry             #+#    #+#             #
#   Updated: 11/09/2024 09:29:06 by pudry            ###   ########.ch       #
#                                                                            #
# ************************************************************************** #

RESET = \033[0m
RED = \033[31m
GREEN = \033[1;32m
BLUE = \033[1;34m
PURPLE = \033[35m
INCLUDES = includes/

# Compilateur et flags
CC = gcc
CFLAGS = -Wall -Wextra -Werror
LIBFT = libft
LIBFT_FLAGS = -I $(LIBFT)/includes
NAME = libftprintf.a

# Sources et objets
SRC = $(wildcard src/*.c)
SRC += $(wildcard libft/src/*.c)
OBJ = $(SRC:src/%.c=objet/%.o)
OBJ += $(SRC:libft/src/%.c=objet/%.o)

all: $(NAME)
	@echo "${GREEN}ft_printf compilation success"
	@echo "${BLUE}for header and library"
	@echo "-I $(PWD)/includes -L $(PWD)/$(NAME) -lft"
	@echo "${PURPLE}#include \"ft_printf.h\""
	@echo "${RED}Do not forget to add libft flags${RESET}"

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ) # Combine les fichiers objets et libft.a

clean:
	@rm -rf objet/
	@make clean -C $(LIBFT)
	@echo "${GREEN}ft_printf clean${RESET}"

fclean: clean
	@rm -f $(NAME)
	@make fclean -C $(LIBFT)
	@echo "${GREEN}ft_printf fclean${RESET}"

re: fclean all

objet/%.o: src/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@ -I $(INCLUDES) $(LIBFT_FLAGS)

objet/%.o: libft/src/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -c $< -o $@ -I $(INCLUDES) $(LIBFT_FLAGS)

.PHONY: clean fclean all re
