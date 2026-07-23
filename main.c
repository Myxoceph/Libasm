#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

// extern char get_first_char(const char *str);
// extern char get_second_char(const char *str);
// extern char is_empty_string(const char *str);
// extern char ft_strlen(const char *str);
// extern char copy_one_char(char *dest, char *src);
// extern char *ft_strcpy(char *dest, char *src);
// extern int diff_first_char(char *s1, char *s2);
// extern int ft_strcmp(char *s1, char *s2);
// extern int ft_write(int fd, const void *buf, size_t count);
extern int basic_ft_read(int fd, const void *buf, size_t count);

int main(void)
{
	char test_str[10] = "";
	// char test_str2[10] = "Hellb";
	// char *test_str2 = "";
	// char result = get_first_char(test_str);
	// char result = get_second_char(test_str);

	// printf("String1: %s\n", test_str);
	// printf("String2: %s\n", test_str2);
	basic_ft_read(0, test_str, 10);
	printf("Value in str -> %s\n", test_str);
	printf("--------------------\n");
	// printf("Return value: %d (Expected: -1)\n", ret);
	// printf("Errno code:   %d (Expected: 9)\n", errno);
	// printf("Error msg:    %s\n", strerror(errno));
	// printf("String2: %s\n", test_str2);
	// printf("isEmpty?: %d\n", is_empty_string(test_str2));
	// printf("First character: %c\n", result);
	// printf("Second character: %c\n", result);

	return 0;
}
