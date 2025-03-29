#pragma once

#include <stddef.h>
#include <unistd.h>

typedef struct s_list {
	void *data;
	struct s_list *next;
} t_list;

size_t  ft_strlen(const char *);
char   *ft_strcpy(char *dest, const char *src);
int     ft_strcmp(const char *str1, const char *str2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char   *ft_strdup(const char *src);
