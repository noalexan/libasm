#pragma once

#include <stddef.h>

size_t  ft_strlen(const char *);
char   *ft_strcpy(char *dest, const char *src);
int     ft_strcmp(const char *str1, const char *str2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
