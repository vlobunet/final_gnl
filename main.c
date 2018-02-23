#include <stdio.h>
#include <fcntl.h>
#include "get_next_line.h"

int		main(int argc, char **argv)
{
	int		fd;
	char	*line;;

	if (!argc)
		return(0);
	fd = open(argv[1], O_RDONLY);
	while (get_next_line(fd, &line))
	{
		printf(" | ->     %s\n", line);
		free (line);
	}
	close(fd);
	printf(" |\n");
	printf("  ============================= Leaks test_gnl =============================\n");
	system("Leaks test_gnl ");
	return (0);
}