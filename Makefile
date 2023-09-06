all:cache

cache:cache.c
	gcc -Wall -Werror -fsanitize=address -g cache.c -o cache

clean:
	rm cache