##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## Epitech Makefile
##

SRC_MAIN		=	src/main.c	\

SRC_TEST		=	tests/test.c	\

OBJ 			=	$(SRC_MAIN:.c=.o)

OBJ_TEST		=	$(SRC_TEST:.c=.o)

CFLAGS			=	-W -Wall -Wextra -I./include

FLAGS_DEBUG 	= 	-g -g3 -ggdb

FLAGS_TEST 		=	--coverage -lcriterion

NAME			=	a.out

NAME_TEST		= 	unit_tests

$(NAME):			$(OBJ)
					gcc -o $(NAME) $(OBJ) $(CFLAGS)

all:				$(NAME)

debug: 				CFLAGS += $(FLAGS_DEBUG)

debug:				$(OBJ)
					gcc -o $(NAME) $(OBJ) $(CFLAGS)

clean:
					rm -rf $(OBJ)

fclean:				clean clean_test
					rm -rf $(NAME)
					rm -rf $(OBJ)
					rm -rf $(OBJ_TEST)
					rm -rf $(NAME_TEST)

tests_run: 			$(OBJ_TEST)
					gcc -o $(NAME_TEST) $(OBJ_TEST) $(CFLAGS) $(FLAGS_TEST)
					./unit_tests --verbose

re:					fclean all

.PHONY: 			all debug clean clean_test fclean tests_run re
