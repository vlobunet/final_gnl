clear
echo "                    -C libft/ fclean && make -C libft/"
echo -n "         "       
make -C libft/ fclean && make -C libft/
echo " -Wall -Wextra -Werror -I libft/includes -o get_next_line.o -c get_next_line.c"
clang -Wall -Wextra -Werror -I libft/includes -o get_next_line.o -c get_next_line.c
echo "       -Wall -Wextra -Werror -I libft/includes -o main.o -c main.c"
clang -Wall -Wextra -Werror -I libft/includes -o main.o -c main.c
echo "   -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft"
clang -o test_gnl main.o get_next_line.o -I libft/includes -L libft/ -lft
echo ""
echo "/* ************************************************************************** */"
echo "/*                                                                            */"
echo "/*                                                        :::      ::::::::   */"
echo "/*   get_next_line.c                                    :+:      :+:    :+:   */"
echo "/*                                                    +:+ +:+         +:+     */"
echo "/*   By: vlobunet <marvin@42.fr>                    +#+  +:+       +#+        */"
echo "/*                                                +#+#+#+#+#+   +#+           */"
echo "/*   Created: 2018/01/30 12:57:46 by vlobunet          #+#    #+#             */"
echo "/*   Updated: 2018/01/30 12:57:47 by vlobunet         ###   ########.fr       */"
echo "/*                                                                            */"
echo "/* ************************************************************************** */"
echo ""
echo "  ================================ ./test_gnl ==============================="
echo " |"
./test_gnl gnl
